package com.lq.job.dao;

import java.util.List;

import com.lq.job.domain.Reply;
import com.lq.job.domain.ReplyVo;

public interface ReplyMapper {
    public Integer insertReply(Reply r);
    public List<ReplyVo> getAllReplyByComId(Integer id);
}
