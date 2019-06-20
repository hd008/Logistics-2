package com.logistics.action;

import com.logistics.entity.User;
import com.logistics.service.UserService;

public class UserAction  {

    public User user;
    public UserService userService;
    public String msg;
    public String confirm;


    public String register(){
        if(!confirm.equals(user.getPassword())){
            return "fail";
        }
        if(userService.queryUserByU(user.getUsername())!=null){
            return "fail";
        }
        user.setIsAss(false);
        userService.useradd(user);
        return "regSuc";
    }

    public String login(){
        msg="";

        if(user == null){
            msg="请输全账号密码";
            return "fail";
        }

        String pass = userService.login(user);
        if(pass.equals("fail")){
            msg="账号或密码错误";
        }
        return pass;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public String getMsg() {
        return msg;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }
}
