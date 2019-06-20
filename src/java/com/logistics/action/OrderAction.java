package com.logistics.action;

import com.logistics.entity.Order;
import com.logistics.service.OrderService;
import java.util.List;

public class OrderAction {

    public Order order;
    public Order temp;
    public OrderService orderService;
    public String method;
    public List<Order> list;

    @Override
    public String toString() {
        return super.toString();
    }

    public List<Order> getList() {
        return list;
    }

    public void setList(List<Order> list) {
        this.list = list;
    }

    public String execute()
    {
        return "success";
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Order getTemp() {
        return temp;
    }

    public void setTemp(Order temp) {
        this.temp = temp;
    }

    public OrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    //增
    public String addOrder(){
        orderService.addOrder(order);
//        try{
//           orderService.addOrder(order);
//        }catch (Exception e){
//            System.out.println("error");
//            return "err";
//        }
        return "success";
    }
    //    删
    public String deleteOrder(){
        this.order = orderService.queryOrderObject(order);
        orderService.deleteOrder(order);

        return "success";
    }
    //改
    public String updateOrder(){
        orderService.updateOrder(order);
        return "success";
    }
    public String updateByOrder(){
        this.temp = orderService.queryOrderObject(order);
        return "editorder";
    }

    //    查
    public String queryOrder(){
        this.list= orderService.queryOrderList(order);

        return "orderlist";
    }

    public String orderInfo(){
        this.temp = orderService.queryOrderObject(order);
        return "orderinfo";
    }





}
