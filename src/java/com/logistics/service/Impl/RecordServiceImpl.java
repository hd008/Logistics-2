package com.logistics.service.Impl;

import com.logistics.dao.RecordDao;
import com.logistics.entity.Order;
import com.logistics.entity.Record;
import com.logistics.entity.User;
import com.logistics.service.RecordService;
import java.util.List;

public class RecordServiceImpl implements RecordService {

    public RecordDao recordDao;
    public List<Record> queryRecords()
    {
        return recordDao.queryRecords();
    }
    //使用id查询记录
    public Record queryRecordById(int id)
    {
       return recordDao.queryRecordById(id);
    }

    //添加记录
    public void addRecord(Record record)
    {
        recordDao.addRecord(record);

    }


    //通过订单查询记录
    public List<Record> queryByOrder(Order order)
    {
        return recordDao.queryByOrder(order);
    }

    //查询买家所有交易记录
    public List<Record> queryByBuyer(User buyer)
    {
        return  recordDao.queryByBuyer(buyer);
    }

    //查询买家所有交易记录
    public List<Record> queryByBusiness(User business)
    {
        return  recordDao.queryByBusiness(business);
    }

    //更新记录
    public void updateRecord(Record record)
    {
        recordDao.updateRecord(record);
    }

    //删除记录
    public void deleteRecord(Record record)
    {
       recordDao.deleteRecord(record);
    }

    public RecordDao getRecordDao() {
        return recordDao;
    }

    public void setRecordDao(RecordDao recordDao) {
        this.recordDao = recordDao;
    }
}
