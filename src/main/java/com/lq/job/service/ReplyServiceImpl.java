package com.lq.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.ReplyMapper;
import com.lq.job.domain.Reply;
import com.lq.job.domain.ReplyVo;
@Service
public class ReplyServiceImpl implements ReplyService {
    @Autowired
    private ReplyMapper replyMapper;
    @Override
    public Integer insertReply(Reply r) {
        // TODO Auto-generated method stub
        return replyMapper.insertReply(r);
    }
    @Override
    public List<ReplyVo> getAllReplyByComId(Integer id) {
        // TODO Auto-generated method stub
        return replyMapper.getAllReplyByComId(id);
    }

}
