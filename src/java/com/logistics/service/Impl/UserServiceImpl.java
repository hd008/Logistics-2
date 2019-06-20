package com.logistics.service.Impl;

import com.logistics.dao.UserDao;
import com.logistics.entity.User;
import com.logistics.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    public UserDao userDao;

    public User queryUserByU(String username)
    {
        return userDao.queryUserByU(username);
    }

    public User queryUserById(int id)
    {
        return userDao.queryUserById(id);
    }

    @Override
    public String login(User user) {
        User user1 = userDao.queryUserByUP(user);
        if (user1!=null)
        {
            if(user1.getIsAss()){
                return "assLoginSuccess";
            }else if(user1.getIsBussiness()){
                return "businessLoginSuccess";
            }else{
                return "userLoginSuccess";
            }
        }
        return "fail";
    }
    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    //------------------------用户管理操作-----------------------------------
    public void useradd(User user) {
        userDao.addUser(user);
    }

    public void userupdate(User user) {
        userDao.updateUser(user);
    }

    public void userdelete(User user) {
        userDao.deleteUser(user);
    }

    public List<User> queryForList(User user) {
        return userDao.queryForList(user);
    }

    public User queryForObject(User user) {
        return userDao.queryForObject(user);
    }
    public User queryUserByUP(User user){
        return userDao.queryUserByUP(user);
    }
    //--------------------------------------------------------------------------
}
