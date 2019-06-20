package com.logistics.service;

import com.logistics.entity.Order;
import java.util.List;

public interface OrderService {
    public void addOrder(Order order);
    public void deleteOrder(Order order);
    public void updateOrder(Order order);
    public List<Order>queryOrderList(Order order);
    public Order queryOrderObject(Order order);
    public Order queryOrderByN(String oderNum);
    public Order queryOrderById(int id);


    public List<Order> query(Order order);

}
