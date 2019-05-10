package com.lq.job.domain;

public class JPost {
    private Integer post_id;
    private String post_title;
    private Integer writer_id;
    private String post_content;
    private String pub_time;
    private Integer post_heat;
    private Integer post_comments_num;
    private String post_note;
    public Integer getPost_id() {
        return post_id;
    }
    public void setPost_id(Integer post_id) {
        this.post_id = post_id;
    }
    public String getPost_title() {
        return post_title;
    }
    public void setPost_title(String post_title) {
        this.post_title = post_title;
    }
    public Integer getWriter_id() {
        return writer_id;
    }
    public void setWriter_id(Integer writer_id) {
        this.writer_id = writer_id;
    }
    public String getPost_content() {
        return post_content;
    }
    public void setPost_content(String post_content) {
        this.post_content = post_content;
    }
    public String getPub_time() {
        return pub_time;
    }
    public void setPub_time(String pub_time) {
        this.pub_time = pub_time;
    }
    public Integer getPost_heat() {
        return post_heat;
    }
    public void setPost_heat(Integer post_heat) {
        this.post_heat = post_heat;
    }
    public Integer getPost_comments_num() {
        return post_comments_num;
    }
    public void setPost_comments_num(Integer post_comments_num) {
        this.post_comments_num = post_comments_num;
    }
    public String getPost_note() {
        return post_note;
    }
    public void setPost_note(String post_note) {
        this.post_note = post_note;
    }

}
