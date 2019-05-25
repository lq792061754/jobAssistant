package com.lq.job.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lq.job.domain.Comment;
import com.lq.job.domain.CommentVo;
import com.lq.job.service.CommentService;
import com.lq.job.service.JPostService;

@Controller
public class CommentController {
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Autowired
    private CommentService commentService;
    @Autowired
    private JPostService jPostService;
    @RequestMapping(value="insertComment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> insertCom(Comment comment) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (comment.getCommenter_id() != null) {
            comment.setComment_time(sdf.format(new Date()));
            comment.setComment_note(0);
            comment.setComment_flag("1");
            int i = commentService.insertComment(comment);
            jPostService.addComNum(comment.getPost_id());//评论数加一
            if (i > 0) {
                map.put("type", 1);//插入成功
            } else {
                map.put("type", 2);//插入失败
            }
        } else {
            map.put("type", 3);//未登录
        }
        return map;
    }
    @RequestMapping(value="getAllComment")
    @ResponseBody
    public PageInfo<CommentVo> getAllCom(@RequestParam(defaultValue="1")Integer page, Integer id) {
        PageHelper.startPage(page, 5);//分页
        PageInfo<CommentVo> list = new PageInfo<>(commentService.getAllComment(id));
        return list;
    }
    @RequestMapping(value="getReplyComment")
    @ResponseBody
    public PageInfo<CommentVo> getReplyCom(@RequestParam(defaultValue="1")Integer page, Integer id) {
        commentService.updateSetComLooked(id);
        PageHelper.startPage(page, 5);//分页
        PageInfo<CommentVo> list = new PageInfo<>(commentService.getReplyComment(id));
        return list;
    }
    @RequestMapping(value="getReplyComNum")
    @ResponseBody
    public Map<String, Object> getReplyComNum(Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("NEWCOM", commentService.getReplyComNum(id));
        return map;
    }

}
