package com.lq.job.domain;

public class CommentVo {
    private Integer comment_id;
    private Integer post_id;
    private String commenter;
    private String comment_content;
    private String comment_time;
    private String comment_note;
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
    public String getComment_note() {
        return comment_note;
    }
    public void setComment_note(String comment_note) {
        this.comment_note = comment_note;
    }
    public String getCommenter() {
        return commenter;
    }
    public void setCommenter(String commenter) {
        this.commenter = commenter;
    }
}
