package com.logistics.test;

import com.logistics.action.RecordAction;
import com.logistics.entity.Order;
import com.logistics.entity.Record;
import com.logistics.entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Test {
    public static void main(String[] args) {
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring-config.xml");
        RecordAction recordAction = (RecordAction) ac.getBean("recordAction");
        User user = recordAction.userService.queryUserByU("hello");
        User user1 = recordAction.userService.queryUserByU("world");
        Order order = recordAction.orderService.queryOrderByN("hello");
        Record record = new Record();
        record.setBuyerId(user.getId());
        record.setBusinessId(user1.getId());
        record.setOrderId(order.getId());
        recordAction.recordService.addRecord(record);
    }
}
