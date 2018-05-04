package com.quhaodian.adminstore.data.entity;

import java.io.Serializable;

/**
 * 论文信息dto
 * author cash
 * create 2018-05-04-19:12
 **/

public class PaperInfo implements Serializable {

    private String postDate;
    private String fileDir;
    private String title;
    private String author;
    private String summary;

    public String getPostDate() {
        return postDate;
    }

    public void setPostDate(String postDate) {
        this.postDate = postDate;
    }

    public String getFileDir() {
        return fileDir;
    }

    public void setFileDir(String fileDir) {
        this.fileDir = fileDir;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }
}
