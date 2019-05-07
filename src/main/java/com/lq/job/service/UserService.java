package com.lq.job.service;

import java.util.List;

import com.lq.job.domain.User;

public interface UserService {
    public Integer insertUser(User user);
    public User findOneUser(User user);
    public List<User> getAllUser();
    public Integer deleteUserById(Integer id);
}
