package com.lq.job.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.UserMapper;
import com.lq.job.domain.User;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public Integer insertUser(User user) {
        return userMapper.insertUser(user);
    }
    @Override
    public User findOneUser(User user) {
        return userMapper.findOneUser(user);
    }

}
