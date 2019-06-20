package com.logistics.service;

import com.logistics.entity.User;

import java.util.List;

public interface UserService {
    public String login(User user);
    //----------用户管理-----------------------------------------------------
    public void useradd(User user) ;
    public void userupdate(User user);
    public void userdelete(User user);
    public User queryUserByUP(User user);
    public List<User> queryForList(User user);
    public User queryForObject(User user);
    public User queryUserByU(String username);
    public User queryUserById(int id);
    //------------------------------------------------------------------
}
