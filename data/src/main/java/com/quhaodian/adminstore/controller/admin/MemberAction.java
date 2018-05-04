package com.quhaodian.adminstore.controller.admin;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.quhaodian.adminstore.data.entity.ModifyUser;
import com.quhaodian.adminstore.data.entity.PaperInfo;
import com.quhaodian.adminstore.utils.CompressImg;
import com.quhaodian.data.utils.FilterUtils;
import com.quhaodian.user.data.entity.UserAccount;
import com.quhaodian.user.data.entity.UserRole;
import com.quhaodian.user.data.service.UserInfoService;
import com.quhaodian.user.data.service.UserRoleService;
import com.quhaodian.user.data.vo.UserAccountVo;
import com.quhaodian.adminstore.data.entity.Member;
import com.quhaodian.adminstore.data.service.MemberService;
import com.quhaodian.adminstore.data.so.MemberSo;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;

import com.quhaodian.data.page.Order;
import com.quhaodian.data.page.Page;
import com.quhaodian.data.page.Pageable;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.context.annotation.Scope;

import javax.servlet.http.HttpServletRequest;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by imake on 2017年08月29日17:08:12.
 */


@Scope("prototype")
@Controller
public class MemberAction {

    public static final String MODEL = "model";

    private static final Logger log = LoggerFactory.getLogger(MemberAction.class);
    public static final String REDIRECT_LIST_HTML = "redirect:/admin/member/view_list.htm";

    @Autowired
    private MemberService manager;


    @Autowired
    private UserRoleService roleService;

    @Autowired
    private UserInfoService userInfoService;

    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    //用户列表页面
    @RequiresPermissions("member")
    @RequestMapping("/admin/member/view_list")
    public String list(Pageable pageable, MemberSo so, ModelMap model) {

        if (pageable == null) {
            pageable = new Pageable();
        }
        if (pageable.getOrders() == null || pageable.getOrders().isEmpty()) {
            pageable.getOrders().add(Order.desc("id"));
        }
        pageable.getFilters().addAll(FilterUtils.getFilters(so));
        Page<Member> pagination = manager.page(pageable);
        model.addAttribute("list", pagination.getContent());
        model.addAttribute("page", pagination);
        model.addAttribute("so", so);
        return "/admin/member/list";
    }

    //添加用户页面
    @RequiresPermissions("member")
    @RequestMapping("/admin/member/view_add")
    public String add(ModelMap model) {
        model.addAttribute("roles", roleService.list(0, 1000, null, null));
        return "/admin/member/add";
    }


    //修改用户页面
    @RequiresPermissions("member")
    @RequestMapping("/admin/member/view_edit")
    public String edit(Pageable pageable, Long id, ModelMap model) {
        model.addAttribute(MODEL, manager.findById(id));
        model.addAttribute("page", pageable);
        model.addAttribute("roles", roleService.list(0, 1000, null, null));

        return "/admin/member/edit";
    }


    @RequiresPermissions("member")
    @RequestMapping("/admin/member/view_view")
    public String view(Long id, ModelMap model) {
        model.addAttribute(MODEL, manager.findById(id));
        return "/admin/member/view";
    }

    //用户简况页面
    @RequiresPermissions("member")
    @RequestMapping("/admin/member/profile")
    public String profile(Long id, ModelMap model) {
        Member member=manager.findById(id);
        String allPaper=member.getIntroduce();
        List<PaperInfo> paperList=Lists.newArrayList();
        if(StringUtils.isNotEmpty(allPaper)){
            Gson gson=new Gson();
            Type type = new TypeToken<ArrayList<PaperInfo>>() {}.getType();
            paperList= gson.fromJson(allPaper,type);
        }
        //论文列表
        model.addAttribute("paperList",paperList);
        model.addAttribute(MODEL,member);
        return "/admin/member/profile";
    }


    @RequiresPermissions("member")
    @RequestMapping("/admin/member/model_save")
    public String save(UserAccount account,Member bean, Long[] roles,ModelMap model,RedirectAttributes attributes) {

        String view = "redirect:view_list.htm";
        try {

            UserAccountVo vo= manager.reg(account,bean);
            if (vo!=null){
                attributes.addFlashAttribute("msg",vo.getMsg());
                if (roles != null) {
                    for (Long role : roles) {
                        userInfoService.addRole(vo.getUser(), role);
                    }
                }
            }
            log.info("save object id={}", bean.getId());
        } catch (Exception e) {
            log.error("保存失败", e);
            model.addAttribute("erro", e.getMessage());
            view = "/admin/member/add";
        }
        return view;
    }


    //用户修改,包含角色修改
    @RequiresPermissions("member")
    @RequestMapping("/admin/member/model_update")
    public String update(Pageable pageable, Member bean, Long[] roles, RedirectAttributes redirectAttributes, ModelMap model) {

        String view = REDIRECT_LIST_HTML;
        try {
            manager.update(bean);
            Member user=manager.findById(bean.getId());
            //先删除用户的全部角色
            if(null!=user.getRoles() && ! user.getRoles().isEmpty()){
                manager.deleteUserAllRole(user.getId());
            }
            if (roles != null) {
                for (Long role : roles) {
                    userInfoService.addRole(bean.getId(), role);
                }
            }
            initPageNum(pageable, redirectAttributes);
        } catch (Exception e) {
            log.error("更新失败", e);
            model.addAttribute("erro", e.getMessage());
            model.addAttribute(MODEL, bean);
            model.addAttribute("page", pageable);
            view = "/admin/member/edit";
        }
        return view;
    }

    private void initPageNum(Pageable pageable, RedirectAttributes redirectAttributes) {
        redirectAttributes.addAttribute("pageNumber", pageable.getPageNumber());
    }

    @RequiresPermissions("member")
    @RequestMapping("/admin/member/model_delete")
    public String delete(Pageable pageable, Long id, RedirectAttributes redirectAttributes) {

        String view = REDIRECT_LIST_HTML;

        try {
            initPageNum(pageable, redirectAttributes);
            manager.deleteById(id);
        } catch (DataIntegrityViolationException e) {
            log.error("删除失败", e);
            redirectAttributes.addFlashAttribute("erro", "该条数据不能删除，请先删除和他相关的类容!");
        }

        return view;
    }

    @RequiresPermissions("member")
    @RequestMapping("/admin/member/model_deletes")
    public String deletes(Pageable pageable, Long[] ids, RedirectAttributes redirectAttributes) {

        String view = REDIRECT_LIST_HTML;

        try {
            initPageNum(pageable, redirectAttributes);
            manager.deleteByIds(ids);
        } catch (DataIntegrityViolationException e) {
            log.error("批量删除失败", e);
            redirectAttributes.addFlashAttribute("erro", "该条数据不能删除，请先删除和他相关的类容!");
        }
        return view;
    }

    /*修改用户头像*/
    @RequiresPermissions("member")
    @RequestMapping(value = "/admin/member/updateAvatar",method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String updateAvatar(MultipartFile fileToUpload, HttpServletRequest request){
        String serverPath = request.getSession()
                .getServletContext().getRealPath("/");
        String fileName = UUID.randomUUID().toString();
        String path = "dist/img/";
        File dir = new File(serverPath + "dist/img");
        if (!dir.exists() && !dir.isDirectory()) {
            dir.mkdir();
        }
        String suffix = fileToUpload.getOriginalFilename().substring(fileToUpload.getOriginalFilename().lastIndexOf(".")+1);
        String httpPath = path + fileName + "." + suffix;
        String imgFilePath = serverPath + httpPath;
        File file = new File(imgFilePath);
        try {
            fileToUpload.transferTo(file);
        } catch (IOException e) {
            log.error("文件转换错误",e);
            return "error";
        }
        BufferedImage srcImage;
        try {
            FileInputStream in = new FileInputStream(imgFilePath);
            srcImage = javax.imageio.ImageIO.read(in);
        } catch (IOException e) {
            log.error("读取图片文件出错",e);
            return "error";
        }
        if(srcImage != null){
            String fileName2 =fileName+"_smaller";
            String outImgPath=serverPath+path + fileName2 + "." + suffix;
            CompressImg.compressImageWithWH(imgFilePath, outImgPath, 128,128);
            httpPath = path + fileName2 + "." + suffix;
        }
        long id= Long.parseLong(request.getParameter("id"));
        //更新头像信息
        Member member=manager.findById(id);
        member.setAvatar(httpPath);
        manager.update(member);
        return  httpPath;
    }

    /*上传论文文件*/
    @RequiresPermissions("member")
    @RequestMapping(value = "/admin/member/uploadPaper",method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String uploadPaper(MultipartFile fileToUpload, HttpServletRequest request){
        String serverPath = request.getSession()
                .getServletContext().getRealPath("/");
        String fileName = UUID.randomUUID().toString();
        String path = "dist/paper/";
        File dir = new File(serverPath + "dist/paper");
        if (!dir.exists() && !dir.isDirectory()) {
            dir.mkdir();
        }
        String httpPath = path + fileName + fileToUpload.getOriginalFilename();
        String filePath = serverPath + httpPath;
        File file = new File(filePath);
        try {
            fileToUpload.transferTo(file);
        } catch (IOException e) {
            log.error("文件转换错误",e);
            return "error";
        }
        return  httpPath;
    }



    //更新用户属性
    @RequiresPermissions("member")
    @RequestMapping("/admin/member/updateInfo")
    public String updateInfo(ModifyUser user, RedirectAttributes redirectAttributes,ModelMap model) {

        long id=user.getId();
        Member member=manager.findById(id);
        Map<String,String> attr= Maps.newHashMap();
        if(StringUtils.isNotEmpty(user.getEmail())){
            attr.put("email",user.getEmail());
        }
        if(StringUtils.isNotEmpty(user.getEducation())){
            attr.put("education",user.getEducation());
        }
        if(StringUtils.isNotEmpty(user.getLocation())){
            attr.put("location",user.getLocation());
        }
        if(StringUtils.isNotEmpty(user.getTag())){
            attr.put("tag",user.getTag());
        }
        if(StringUtils.isNotEmpty(user.getIntro())){
            attr.put("intro",user.getIntro());
        }

        member.setAttributes(attr);

        if(StringUtils.isNotEmpty(user.getSex())){
            member.setSex(user.getSex());
        }

        try {
            manager.update(member);
        } catch (DataIntegrityViolationException e) {
            log.error("更新用户信息失败", e);
            redirectAttributes.addFlashAttribute("erro", "更新用户信息失败!");
        }

        String allPaper=member.getIntroduce();
        List<PaperInfo> paperList=Lists.newArrayList();
        if(StringUtils.isNotEmpty(allPaper)){
            Gson gson=new Gson();
            Type type = new TypeToken<ArrayList<PaperInfo>>() {}.getType();
            paperList= gson.fromJson(allPaper,type);
        }
        //论文列表
        model.addAttribute("paperList",paperList);
        model.addAttribute(MODEL, manager.findById(id));
        return "/admin/member/profile";
    }


    //添加论文信息
    @RequiresPermissions("member")
    @RequestMapping(value="/admin/member/addPaper",method = RequestMethod.POST)
    @ResponseBody
    public String addPaper(@RequestBody PaperInfo paperInfo,HttpServletRequest request) {
        long id= Long.parseLong(request.getParameter("id"));
        Member member=manager.findById(id);
        String allPaper=member.getIntroduce();
        Gson gson=new Gson();
        if(StringUtils.isEmpty(allPaper)){
            List list= Lists.newArrayList();
            list.add(paperInfo);
            String paperStr=gson.toJson(list);
            member.setIntroduce(paperStr);
            try {
                manager.update(member);
            } catch (DataIntegrityViolationException e) {
                log.error("更新用户信息失败", e);
                return "error";
            }
        }else{
            Type type = new TypeToken<ArrayList<PaperInfo>>() {}.getType();
            List<PaperInfo> list= gson.fromJson(allPaper,type);
            List newList=Lists.newArrayList();
            try{
                for(int i=0;i<list.size();i++){
                    if(format.parse(list.get(i).getPostDate()).after(format.parse(paperInfo.getPostDate()))){
                        newList.add(list.get(i));
                    }else{
                        newList.add(paperInfo);
                        for(;i<list.size();i++){
                            newList.add(list.get(i));
                        }
                        break;
                    }
                }
                if(newList.size()==list.size()){
                    newList.add(paperInfo);
                }
                String paperStr=gson.toJson(newList);
                member.setIntroduce(paperStr);
                try {
                    manager.update(member);
                } catch (DataIntegrityViolationException e) {
                    log.error("更新用户信息失败", e);
                    return "error";
                }
            }catch (ParseException e){
                log.error("日期转换异常", e);
                return "error";
            }


        }
        return "ok";

    }


    //删除论文信息
    @RequiresPermissions("member")
    @RequestMapping(value = "/admin/member/delPaper",method = RequestMethod.POST)
    @ResponseBody
    public String delPaper(@RequestBody PaperInfo paperInfo,HttpServletRequest request) {
        long id= Long.parseLong(request.getParameter("id"));
        Member member=manager.findById(id);
        String allPaper=member.getIntroduce();
        Gson gson=new Gson();
        if(StringUtils.isEmpty(allPaper)){
            return "ok";
        }else{
            Type type = new TypeToken<ArrayList<PaperInfo>>() {}.getType();
            List<PaperInfo> list= gson.fromJson(allPaper,type);
            List newList=Lists.newArrayList();
            try {
                for(int i=0;i<list.size();i++){
                    if(format.parse(list.get(i).getPostDate()).after(format.parse(paperInfo.getPostDate()))){
                        newList.add(list.get(i));

                    }else if(format.parse(list.get(i).getPostDate()).compareTo(format.parse(paperInfo.getPostDate()))==0){
                        for(;i<list.size();i++){
                            if(!list.get(i).getTitle().equals(paperInfo.getTitle())){
                                newList.add(list.get(i));
                            }
                        }
                        break;
                    }
                }
                String paperStr="";
                if(CollectionUtils.isNotEmpty(newList)){
                    paperStr=gson.toJson(newList);
                }
                member.setIntroduce(paperStr);
                try {
                    manager.update(member);
                } catch (DataIntegrityViolationException e) {
                    log.error("更新用户信息失败", e);
                    return "error";
                }
            }catch (ParseException e){
                log.error("更新用户信息失败", e);
                return "error";
            }


        }

        return "ok";
    }


    @RequiresPermissions("member")
    @RequestMapping("/admin/member/view_paper_add")
    public String addPaperView(HttpServletRequest request, ModelMap model){
        long id= Long.parseLong(request.getParameter("id"));
        model.put("id",id);
        return "/admin/member/addPaper";
    }

}