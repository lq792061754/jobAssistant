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
import com.lq.job.domain.Reply;
import com.lq.job.domain.ReplyVo;
import com.lq.job.service.ReplyService;

@Controller
public class ReplyController {
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Autowired
    private ReplyService replyService;
    @RequestMapping(value="insertReply")
    @ResponseBody
    public Map<String, Object> insertReply(Reply reply) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (reply.getReplier_id() != null) {
            reply.setReply_time(sdf.format(new Date()));
            reply.setReply_note(null);
            int i = replyService.insertReply(reply);
            if (i > 0)
                map.put("MSG", 1);//插入成功
            else
                map.put("MSG", 0);//插入失败
        } else {
            map.put("MSG", 111);//对象为空
        }
        return map;
    }
    @RequestMapping(value="getAllReply")
    @ResponseBody
    public PageInfo<ReplyVo> showReply(@RequestParam(defaultValue="1")Integer page, Integer id) {
        PageHelper.startPage(page, 5);//分页
        PageInfo<ReplyVo> list = new PageInfo<>(replyService.getAllReplyByComId(id));
        if (page > list.getPageNum())
            list = null;
        return list;
    }
}
