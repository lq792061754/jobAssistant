package com.lq.job.service;

import java.util.List;

import com.lq.job.domain.Reply;
import com.lq.job.domain.ReplyVo;

public interface ReplyService {
    public Integer insertReply(Reply r);
    public List<ReplyVo> getAllReplyByComId(Integer id);
}
