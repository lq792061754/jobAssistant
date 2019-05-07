package com.lq.job.dao;

import java.util.List;

import com.lq.job.domain.User;

public interface UserMapper {
    public Integer insertUser(User user);
    public User findOneUser(User user);
    public List<User> getAllUser();
    public Integer deleteUserById(Integer id);
}
