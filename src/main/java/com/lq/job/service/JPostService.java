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
    public Integer addComNum(Integer id);
    public Integer addComHeat(Integer id);
    public List<JPost> getAllJPostById(Integer id);
    public List<JPostVo> getAllJPostByCom();
    public Integer setJPostToTop(Integer id);
    public Integer deleteJPostById(Integer id);
    public List<JPostVo> getAllJPostManage();
    public Integer setJPostToNormal(Integer id);
    public List<JPostVo> getTopJPost();
    public List<JPost> getTopHot();
}
