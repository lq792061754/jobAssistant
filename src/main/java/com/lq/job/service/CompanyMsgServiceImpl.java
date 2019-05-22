package com.lq.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.CompanyMsgMapper;
import com.lq.job.domain.CompanyMsg;
@Service
public class CompanyMsgServiceImpl implements CompanyMsgService {
    @Autowired
    private CompanyMsgMapper companyMsgMapper;
    @Override
    public Integer insertCompanyMsg(CompanyMsg company) {
        // TODO Auto-generated method stub
        return companyMsgMapper.insertCompanyMsg(company);
    }
    @Override
    public List<CompanyMsg> getAllCompanyMsg() {
        // TODO Auto-generated method stub
        return companyMsgMapper.getAllCompanyMsg();
    }
    @Override
    public CompanyMsg getCompanyMsgById(Integer id) {
        // TODO Auto-generated method stub
        return companyMsgMapper.getCompanyMsgById(id);
    }
    @Override
    public Integer updateCompanyMsgById(CompanyMsg company) {
        // TODO Auto-generated method stub
        return companyMsgMapper.updateCompanyMsgById(company);
    }

}
