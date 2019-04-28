package com.lq.job.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.AdminMapper;
import com.lq.job.domain.Admin;
@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin findOneAdmin(Admin admin) {
        return adminMapper.findOneAdmin(admin);
    }

    @Override
    public int changeAdminPwd(String newPassword) {
        return adminMapper.changeAdminPwd(newPassword);
    }

}
