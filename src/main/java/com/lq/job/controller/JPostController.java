package com.lq.job.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lq.job.domain.JPost;
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

}
