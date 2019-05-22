package com.lq.job.dao;

import java.util.List;

import com.lq.job.domain.CompanyMsg;

public interface CompanyMsgMapper {
    public Integer insertCompanyMsg(CompanyMsg company);
    public List<CompanyMsg> getAllCompanyMsg();
    public CompanyMsg getCompanyMsgById(Integer id);
    public Integer updateCompanyMsgById(CompanyMsg company);
}
