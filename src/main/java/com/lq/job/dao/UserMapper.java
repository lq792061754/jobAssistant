package com.lq.job.dao;

import com.lq.job.domain.User;

public interface UserMapper {
    public Integer insertUser(User user);
    public User findOneUser(User user);

}
