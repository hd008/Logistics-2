package com.logistics.service.Impl;

import com.logistics.dao.OrderDao;
import com.logistics.entity.Order;
import com.logistics.service.OrderService;
import java.util.List;

public class OrderServiceImpl implements OrderService {

    public OrderDao orderDao;

    public OrderDao getOrderDao() {
        return orderDao;
    }
    public Order queryOrderById(int id)
    {
        return orderDao.queryOrderById(id);
    }

    public Order queryOrderByN(String orderNum){
        return orderDao.queryOrderByN(orderNum);
    }

    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    //    增
    public void addOrder(Order order){
        orderDao.addOrder(order);
    }
    //删
    public void deleteOrder(Order order){
        orderDao.deleteOrder(order);
    }
    //改
    public void updateOrder(Order order){
        orderDao.updateOrder(order);
    }
    //查
    public List<Order> queryOrderList(Order order) {
        // TODO Auto-generated method stub
        return orderDao.queryOrderList(order);
    }


    @Override
    public Order queryOrderObject(Order order) {
        return orderDao.queryOrderObject(order);
    }


    public List<Order> query(Order order) {
        return orderDao.queryOrders(order.getId());

    }
}
