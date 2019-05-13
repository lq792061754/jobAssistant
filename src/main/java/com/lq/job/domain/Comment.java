package com.lq.job.domain;

public class Comment {
    private Integer comment_id;
    private Integer post_id;
    private Integer commenter_id;
    private String comment_content;
    private String comment_time;
    private Integer comment_note;
    private String comment_flag;
    public Integer getComment_id() {
        return comment_id;
    }
    public void setComment_id(Integer comment_id) {
        this.comment_id = comment_id;
    }
    public Integer getPost_id() {
        return post_id;
    }
    public void setPost_id(Integer post_id) {
        this.post_id = post_id;
    }
    public Integer getCommenter_id() {
        return commenter_id;
    }
    public void setCommenter_id(Integer commenter_id) {
        this.commenter_id = commenter_id;
    }
    public String getComment_content() {
        return comment_content;
    }
    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }
    public String getComment_time() {
        return comment_time;
    }
    public void setComment_time(String comment_time) {
        this.comment_time = comment_time;
    }
    public Integer getComment_note() {
        return comment_note;
    }
    public void setComment_note(Integer comment_note) {
        this.comment_note = comment_note;
    }
    public String getComment_flag() {
        return comment_flag;
    }
    public void setComment_flag(String comment_flag) {
        this.comment_flag = comment_flag;
    }

}
