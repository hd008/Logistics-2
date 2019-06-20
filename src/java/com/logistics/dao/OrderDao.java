package com.logistics.dao;

import com.logistics.entity.Order;
import org.hibernate.SessionFactory;
import org.springframework.dao.support.DaoSupport;
import org.hibernate.Session;

import java.util.List;

public class OrderDao  extends DaoSupport{
    public SessionFactory sessionFactory;

    public Session getSession()
    {
        return this.sessionFactory.openSession();
    }

    public void setSession(SessionFactory sessionFactory)
    {
        this.sessionFactory = sessionFactory;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    //添加订单
    public void addOrder(Order order)
    {
        Session session = this.getSession();
        session.beginTransaction();
        session.save(order);
        session.getTransaction().commit();
        session.close();
    }

    public Order queryOrderById(int id){
        Session session = this.getSession();
        session.beginTransaction();
        List list = session.createQuery("from Order where id=" + id).list();
        session.getTransaction().commit();
        session.close();
        if(list.size() > 0){
            return (Order) list.get(0);
        }
        return null;
    }
    //删除订单
    public void deleteOrder(Order order)
    {
        Session session = this.getSession();
        session.beginTransaction();
        session.delete(order);
        session.getTransaction().commit();
        session.close();
    }

    //更新订单
    public void updateOrder(Order order)
    {
        Session session = this.getSession();
        session.beginTransaction();
        session.saveOrUpdate(order);
        session.getTransaction().commit();
        session.close();
    }


    //查询订单
    public List<Order> queryOrderList(Order order)
    {
        Session session = this.getSession();
        session.beginTransaction();

        String hql = "from Order o";

        if(order!=null&&order.getOrderNum()!=null && !"".equals(order.getOrderNum().trim()))
            hql += " where o.orderNum like '%"+order.getOrderNum()+"%'";

        List<Order> list =  session.createQuery(hql).list();

        session.close();
        return  list;

    }



    public Order queryOrderByN(String orderNum){
        Session session = this.getSession();
        session.beginTransaction();
        List list = session.createQuery("from Order where orderNum='" +  orderNum + "'").list();
        session.close();
        if (list.size()>0){
            return (Order)list.get(0);
        }
        return null;
    }
    //使用id查询订单
    public Order queryOrderObject(Order order)
    {
        Session session = this.getSession();
        session.beginTransaction();

        String hql = "from  Order o where 1=1 ";
        if(order.getId()!=0 ){
            hql += " and  o.id = '"+order.getId()+"'";
        }
        if(order.getOrderNum()!=null){
            hql += " and  o.orderNum = '"+order.getOrderNum()+"'";
        }
        if (order.getEndPosition()!=null){
            hql +=" and o.endPosition='"+order.getEndPosition()+"'";
        }
        List list =  session.createQuery(hql).list();
        session.close();
        if(list.get(0)!=null)
        {
            return (Order) list.get(0);
        }

        return null;
    }
//不登陆 id查订单
    public List<Order> queryOrders(int id)
    {
        List<Order> list = null;
        String hql = "from Order  where id = "+id;
        list =  this.getSession().createQuery(hql).list();
        return  list;

    }

    @Override
    protected void checkDaoConfig() throws IllegalArgumentException {

    }
}
