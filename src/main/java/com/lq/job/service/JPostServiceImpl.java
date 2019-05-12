package com.lq.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.JPostMapper;
import com.lq.job.domain.JPost;
import com.lq.job.domain.JPostVo;
@Service
public class JPostServiceImpl implements JPostService {
    @Autowired
    private JPostMapper jPostMapper;
    @Override
    public Integer insertJPost(JPost j) {
        // TODO Auto-generated method stub
        return jPostMapper.insertJPost(j);
    }
    @Override
    public List<JPostVo> getAllJPost() {
        // TODO Auto-generated method stub
        return jPostMapper.getAllJPost();
    }
    @Override
    public JPostVo getJPostById(Integer id) {
        // TODO Auto-generated method stub
        return jPostMapper.getJPostById(id);
    }
    @Override
    public JPost getPreJPost(Integer id) {
        // TODO Auto-generated method stub
        return jPostMapper.getPreJPost(id);
    }
    @Override
    public JPost getNextJPost(Integer id) {
        // TODO Auto-generated method stub
        return jPostMapper.getNextJPost(id);
    }
    @Override
    public Integer addComNum(Integer id) {
        // TODO Auto-generated method stub
        return jPostMapper.addComNum(id);
    }

}
