package com.logistics.action;

import com.logistics.entity.User;
import com.logistics.service.UserService;
import java.util.List;

public class ManageUserAction {

    public User user;
    public User temp;
    public UserService userService;
    public String method;
    public List<User> userList;


    @Override
    public String toString() {
        return super.toString();
    }

    public String execute()
    {
        return "success";
    }

    public String login(){
        return userService.login(user);
    }
    public String test()
    {
        System.out.println("ok");
        return "success";
    }
// ---------------------lihui用户管理Action--------------------------------------
    public User getTemp() {
    return temp;
}

    public void setTemp(User temp) {
        this.temp = temp;
    }

    public String getMethod() {
         return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public List<User> getList() {
        return userList;
    }

    public void setList(List<User> list) {
        this.userList = list;
    }

    public String useradd() {
        try {
            userService.useradd(user);
        } catch (Exception e) {
            return "err";
        }
        return "success";
    }

    public String userdelete(){
        this.user = userService.queryForObject(user);
        userService.userdelete(user);
        return "success";
    }

    public String userupdate() {
        userService.userupdate(user);

        return "success";
    }
    public String userquery() {
        this.userList = userService.queryForList(user);

        return "userlist";
    }
    public String updateByUser(){
       this.temp = userService.queryForObject(user);
       return "preupdate";
    }
    public String userInfo(){
        this.temp = userService.queryForObject(user);
        return "userinfo";
    }
    //---------------------lihui用户管理Action--------------------------------------


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

}