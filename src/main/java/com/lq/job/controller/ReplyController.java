package com.lq.job.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lq.job.domain.Reply;
import com.lq.job.domain.ReplyVo;
import com.lq.job.service.CommentService;
import com.lq.job.service.ReplyService;

@Controller
public class ReplyController {
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Autowired
    private ReplyService replyService;
    @Autowired
    private CommentService comService;
    @RequestMapping(value="insertReply", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> insertReply(Reply reply) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (reply.getReplier_id() != null) {
            reply.setReply_time(sdf.format(new Date()));
            reply.setReply_note(null);
            int i = replyService.insertReply(reply);
            comService.addComNoteById(reply.getComment_id());
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
    public List<ReplyVo> showReply(Integer id) {
        List<ReplyVo> list = replyService.getAllReplyByComId(id);
        return list;
    }
}
