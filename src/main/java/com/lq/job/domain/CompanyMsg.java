package com.lq.job.domain;

public class CompanyMsg {
    private Integer company_id;
    private String company_name;
    private String start_time;
    private String end_time;
    private String test_time;
    private String hold_place;
    private String post_url;
    private String need_brief;
    public Integer getCompany_id() {
        return company_id;
    }
    public void setCompany_id(Integer company_id) {
        this.company_id = company_id;
    }
    public String getCompany_name() {
        return company_name;
    }
    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }
    public String getStart_time() {
        return start_time;
    }
    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }
    public String getEnd_time() {
        return end_time;
    }
    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }
    public String getTest_time() {
        return test_time;
    }
    public void setTest_time(String test_time) {
        this.test_time = test_time;
    }
    public String getHold_place() {
        return hold_place;
    }
    public void setHold_place(String hold_place) {
        this.hold_place = hold_place;
    }
    public String getPost_url() {
        return post_url;
    }
    public void setPost_url(String post_url) {
        this.post_url = post_url;
    }
    public String getNeed_brief() {
        return need_brief;
    }
    public void setNeed_brief(String need_brief) {
        this.need_brief = need_brief;
    }
}
