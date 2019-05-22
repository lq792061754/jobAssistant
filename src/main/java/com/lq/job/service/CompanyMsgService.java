package com.lq.job.service;

import java.util.List;

import com.lq.job.domain.CompanyMsg;

public interface CompanyMsgService {
    public Integer insertCompanyMsg(CompanyMsg company);
    public List<CompanyMsg> getAllCompanyMsg();
    public CompanyMsg getCompanyMsgById(Integer id);
    public Integer updateCompanyMsgById(CompanyMsg company);
}
