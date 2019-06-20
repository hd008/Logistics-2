package com.logistics.action;

import com.logistics.entity.Order;
import com.logistics.service.OrderService;

import java.util.List;

public class QueryAction {
    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Order order;

    public List<Order> getList() {
        return list;
    }

    public void setList(List<Order> list) {
        this.list = list;
    }

    public List<Order> list;



    public OrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    public OrderService orderService;

    public String query(){
        if(orderService.query(order)!=null){
            this.list=orderService.query(order);
            return "orderlist";}
        else
            return "fail";

    }


}
