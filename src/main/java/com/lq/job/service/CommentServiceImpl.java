package com.lq.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.CommentMapper;
import com.lq.job.domain.Comment;
import com.lq.job.domain.CommentVo;
@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper comMapper;
    @Override
    public Integer insertComment(Comment c) {
        // TODO Auto-generated method stub
        return comMapper.insertComment(c);
    }
    @Override
    public List<CommentVo> getAllComment(Integer id) {
        // TODO Auto-generated method stub
        return comMapper.getAllComment(id);
    }
    @Override
    public Integer addComNoteById(Integer id) {
        // TODO Auto-generated method stub
        return comMapper.addComNoteById(id);
    }
    @Override
    public List<CommentVo> getReplyComment(Integer id) {
        // TODO Auto-generated method stub
        return comMapper.getReplyComment(id);
    }
    @Override
    public Integer getReplyComNum(Integer id) {
        // TODO Auto-generated method stub
        return comMapper.getReplyComNum(id);
    }

}
