package com.lq.job.service;

import java.util.List;

import com.lq.job.domain.JPost;
import com.lq.job.domain.JPostVo;

public interface JPostService {
    public Integer insertJPost(JPost j);
    public List<JPostVo> getAllJPost();
    public JPostVo getJPostById(Integer id);
    public JPost getPreJPost(Integer id);
    public JPost getNextJPost(Integer id);
}
