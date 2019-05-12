package com.lq.job.domain;

public class ReplyVo {
    private Integer reply_id;
    private Integer comment_id;
    private String replier;
    private String reply_content;
    private String reply_time;
    private String reply_note;
    public Integer getReply_id() {
        return reply_id;
    }
    public void setReply_id(Integer reply_id) {
        this.reply_id = reply_id;
    }
    public Integer getComment_id() {
        return comment_id;
    }
    public void setComment_id(Integer comment_id) {
        this.comment_id = comment_id;
    }
    public String getReplier() {
        return replier;
    }
    public void setReplier(String replier) {
        this.replier = replier;
    }
    public String getReply_content() {
        return reply_content;
    }
    public void setReply_content(String reply_content) {
        this.reply_content = reply_content;
    }
    public String getReply_time() {
        return reply_time;
    }
    public void setReply_time(String reply_time) {
        this.reply_time = reply_time;
    }
    public String getReply_note() {
        return reply_note;
    }
    public void setReply_note(String reply_note) {
        this.reply_note = reply_note;
    }
}
