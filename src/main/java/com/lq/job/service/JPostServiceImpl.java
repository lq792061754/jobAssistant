package com.lq.job.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.JPostMapper;
import com.lq.job.domain.JPost;
@Service
public class JPostServiceImpl implements JPostService {
    @Autowired
    private JPostMapper jPostMapper;
    @Override
    public Integer insertJPost(JPost j) {
        // TODO Auto-generated method stub
        return jPostMapper.insertJPost(j);
    }

}
