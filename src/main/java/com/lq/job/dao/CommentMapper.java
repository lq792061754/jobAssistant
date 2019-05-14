package com.lq.job.dao;

import java.util.List;

import com.lq.job.domain.Comment;
import com.lq.job.domain.CommentVo;

public interface CommentMapper {
    public Integer insertComment(Comment c);
    public List<CommentVo> getAllComment(Integer id);
    public Integer addComNoteById(Integer id);
    public List<CommentVo> getReplyComment(Integer id);
    public Integer getReplyComNum(Integer id);
}
