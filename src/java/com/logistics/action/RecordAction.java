package com.logistics.action;

import com.logistics.entity.Order;
import com.logistics.entity.Record;
import com.logistics.entity.User;
import com.logistics.service.OrderService;
import com.logistics.service.RecordService;
import com.logistics.service.UserService;

import java.util.List;

public class RecordAction {
    public RecordService recordService;
    public OrderService orderService;
    public UserService userService;
    public String msg;
    public Record record;
    public String buyer;
    public String bussiness;
    public String orderNum;
    public Order order;
    public List<User> userList;
    public List<Order> orderList;
    public List<Record> recordList;
    public int modifyId;

    public RecordService getRecordService() {
        return recordService;
    }

    public String display(){
        record = recordService.queryRecordById(modifyId);
        buyer = userService.queryUserById(record.getBuyerId()).getUsername();
        bussiness = userService.queryUserById(record.getBusinessId()).getUsername();
        order = orderService.queryOrderById(record.getBuyerId());
        return "recordInfo";
    }
    public String updateRecord()
    {
        recordService.updateRecord(record);
        return "upOk";
    }

    public String delete()
    {
        record = recordService.queryRecordById(modifyId);
        recordService.deleteRecord(record);
        recordList=recordService.queryRecords();
        return "list";
    }

    public String update(){
        record = recordService.queryRecordById(modifyId);
        return "updateRecord";
    }

    public String listRecorde()
    {
        recordList=recordService.queryRecords();
        return "listRecord";
    }

    public String add(){
        msg="";
        User byU = userService.queryUserByU(buyer);
        User buU = userService.queryUserByU(bussiness);
        Order order = orderService.queryOrderByN(orderNum);
        System.out.println(byU);
        System.out.println(buU);
        System.out.println(order);

        if(buU.getIsBussiness()){
            msg= buU.getUsername() + "不是商家";
            return "addFailed";
        }
        if(buU==null || buU==null){
            msg="买家或者卖家不存在";
            return "addFailed";
        }

        if(order==null){
            msg="改订单不存在";
            return "addFailed";
        }
        Record record1 = new Record();
        record1.setBusinessId(buU.getId());
        record1.setBuyerId(byU.getId());
        record1.setOrderId(order.getId());
        recordService.addRecord(record1);
        orderNum=null;
        buyer=null;
        bussiness=null;
        recordList=recordService.queryRecords();
        return "addOk";
    }

    public String list()
    {
        recordList=recordService.queryRecords();
        return "list";
    }

    public void setRecordService(RecordService recordService) {
        this.recordService = recordService;
    }

    public String getBuyer() {
        return buyer;
    }

    public void setBuyer(String buyer) {
        this.buyer = buyer;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getBussiness() {
        return bussiness;
    }

    public void setBussiness(String bussiness) {
        this.bussiness = bussiness;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }



    public List<Order> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<Order> orderList) {
        this.orderList = orderList;
    }

    public OrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public Record getRecord() {
        return record;
    }

    public void setRecord(Record record) {
        this.record = record;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public List<Record> getRecordList() {
        return recordList;
    }

    public int getModifyId() {
        return modifyId;
    }

    public void setModifyId(int modifyId) {
        this.modifyId = modifyId;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
}

