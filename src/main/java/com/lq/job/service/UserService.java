package com.lq.job.service;

import com.lq.job.domain.User;

public interface UserService {
    public Integer insertUser(User user);
    public User findOneUser(User user);
}
