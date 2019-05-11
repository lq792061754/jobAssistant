package com.lq.job.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lq.job.domain.JPost;
import com.lq.job.domain.JPostVo;
import com.lq.job.service.JPostService;

@Controller
public class JPostController {
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Autowired
    private JPostService jPostService;
    @RequestMapping(value="insertJPost")
    @ResponseBody
    public Map<String, Object> insertJPost(JPost jPost) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (jPost != null) {
            jPost.setPub_time(sdf.format(new Date()));
            jPost.setPost_heat(0);
            jPost.setPost_comments_num(0);
            jPost.setPost_note(null);
            int i = jPostService.insertJPost(jPost);
            if (i > 0) {
                map.put("type", 1);
            } else {
                map.put("type", 2);
            }
        } else {
            map.put("type", 3);
        }
        return map;
    }
    @RequestMapping(value="showJPost")
    @ResponseBody
    public PageInfo<JPostVo> showJPost(@RequestParam(defaultValue="1")Integer page) {
        PageHelper.startPage(page, 5);//分页
        PageInfo<JPostVo> list = new PageInfo<>(jPostService.getAllJPost());
        if (page > list.getPageNum())
            list = null;
        return list;
    }
    @RequestMapping(value="showJPostDetail")
    @ResponseBody
    public Map<String, Object> showJPostDetail(Integer id) {
        JPostVo j = jPostService.getJPostById(id);
        JPost pre = jPostService.getPreJPost(id);
        JPost next = jPostService.getNextJPost(id);
        Map<String, Object> map = new HashMap<String, Object>();
            map.put("JPostVo", j);
            map.put("PRE", pre);
            map.put("NEXT", next);
        return map;
    }
}
