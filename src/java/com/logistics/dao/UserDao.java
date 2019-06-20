package com.logistics.dao;

import com.logistics.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.dao.support.DaoSupport;

import java.util.List;

public class UserDao extends DaoSupport {

    //   //查询所有用户
//    public SessionFactory sessionFactory;
    private SessionFactory sessionFactory;

    public Session getSession()
    {
        return this.sessionFactory.openSession();
    }

    public User queryUserByU(String username)
    {
        Session session = this.getSession();
        List list = session.createQuery("from User where username='" + username + "'").list();
        this.getSession().close();
        if(list.size()>0)
        {
            return (User)list.get(0);
        }
        return null;
    }

    public List<User> queryUsers()
    {
        Session session = this.getSession();
        String hql = "from User";
        List list =  session.createQuery(hql).list();
        session.getTransaction().commit();
        session.close();
        return  list;
    }
    //使用id查询
    public User queryUserById(int id)
    {
        Session session = this.getSession();
        String hql= "from User where id="+ id;
        List list =  session.createQuery(hql).list();
        session.close();
        if(list.get(0)!=null)
        {
            return (User) list.get(0);
        }
        return null;
    }


    //使用用户名和密码查询
    public User queryUserByUP(User user)
    {
        Session session = this.getSession();
        String hql = "from User where username = '"+ user.getUsername() + "'and password = '" + user.getPassword()+ "'";
        List list =  session.createQuery(hql).list();
        session.close();
        if(list.get(0)!=null)
        {
            return (User) list.get(0);
        }
        return null;
    }

//    -------------------------------------Lihui-------------------------------------

    //添加用户-----------------------------changed
    public void addUser(User user)
    {
        Session session = this.getSession();
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
        session.close();
    }

    //更新用户
    public void updateUser(User user)
    {
        Session session = this.getSession();
        session.beginTransaction();
        session.saveOrUpdate(user);
        session.getTransaction().commit();
        session.close();
    }

    //删除用户
    public void deleteUser(User user)
    {
        Session session = this.getSession();
        session.beginTransaction();
        session.delete(user);
        session.getTransaction().commit();
        session.close();
    }



    public User queryForObject(User user) {
        Session session = this.getSession();
        session.beginTransaction();
        String hql = "from  User u where 1=1 ";
        if(user.getId()!=0 ){
            hql += " and  u.id = '"+user.getId()+"'";
        }
        if(user.getUsername()!=null){
            hql += " and  u.username = '"+user.getUsername()+"'";
        }
        if (user.getPassword()!=null&&!"".equals(user.getPassword().trim())){
            hql +=" and u.password='"+user.getPassword()+"'";
        }
        List list =  session.createQuery(hql).list();
        session.close();
        if(list.get(0)!=null)
        {
            return (User) list.get(0);
        }
        return null;
    }

    public List<User> queryForList(User user) {
        Session session = this.getSession();
        session.beginTransaction();
        String hql  = "from User u ";

        if(user!=null&&user.getUsername()!=null && !"".equals(user.getUsername().trim()))
            hql += " where u.username like '%"+user.getUsername()+"%'";

        List<User> list =  session.createQuery(hql).list();
        session.close();
        return list;
    }

//    ----------------------------------------------------------------------------------

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    protected void checkDaoConfig() throws IllegalArgumentException {

    }

}
