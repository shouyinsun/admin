package com.quhaodian.adminstore.data.entity;

import java.io.Serializable;

/**
 * 修改用户信息dto
 * author cash
 * create 2018-05-04-10:44
 **/

public class ModifyUser implements Serializable {
    private long id;
    private String email;
    private String sex;
    private String education;
    private String location;
    private String tag;
    private String intro;

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }
}
