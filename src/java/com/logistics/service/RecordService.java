package com.logistics.service;

import com.logistics.entity.Order;
import com.logistics.entity.Record;
import com.logistics.entity.User;

import java.util.List;

public interface RecordService {
    public List<Record> queryRecords();
    public Record queryRecordById(int id);
    public void addRecord(Record record);
    public List<Record> queryByOrder(Order order);
    public List<Record> queryByBuyer(User buyer);
    public List<Record> queryByBusiness(User business);
    public void updateRecord(Record record);
    public void deleteRecord(Record record);
}
