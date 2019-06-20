package com.logistics.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Order {
    private int id;
    private String orderNum;
    private boolean received;
    private String endPosition;
    private String startPosition;
    private String curPosition;
    private String descri;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "order_num", nullable = false, length = 20)
    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    @Basic
    @Column(name = "received", nullable = false)
    public boolean isReceived() {
        return received;
    }

    public void setReceived(boolean received) {
        this.received = received;
    }

    @Basic
    @Column(name = "end_position", nullable = false, length = 20)
    public String getEndPosition() {
        return endPosition;
    }

    public void setEndPosition(String endPosition) {
        this.endPosition = endPosition;
    }

    @Basic
    @Column(name = "start_position", nullable = false, length = 20)
    public String getStartPosition() {
        return startPosition;
    }

    public void setStartPosition(String startPosition) {
        this.startPosition = startPosition;
    }

    @Basic
    @Column(name = "cur_position", nullable = false, length = 20)
    public String getCurPosition() {
        return curPosition;
    }

    public void setCurPosition(String curPosition) {
        this.curPosition = curPosition;
    }

    @Basic
    @Column(name = "descri", nullable = true, length = 100)
    public String getDescri() {
        return descri;
    }

    public void setDescri(String descri) {
        this.descri = descri;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order order = (Order) o;

        if (id != order.id) return false;
        if (received != order.received) return false;
        if (orderNum != null ? !orderNum.equals(order.orderNum) : order.orderNum != null) return false;
        if (endPosition != null ? !endPosition.equals(order.endPosition) : order.endPosition != null) return false;
        if (startPosition != null ? !startPosition.equals(order.startPosition) : order.startPosition != null)
            return false;
        if (curPosition != null ? !curPosition.equals(order.curPosition) : order.curPosition != null) return false;
        if (descri != null ? !descri.equals(order.descri) : order.descri != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (orderNum != null ? orderNum.hashCode() : 0);
        result = 31 * result + (received ? 1 : 0);
        result = 31 * result + (endPosition != null ? endPosition.hashCode() : 0);
        result = 31 * result + (startPosition != null ? startPosition.hashCode() : 0);
        result = 31 * result + (curPosition != null ? curPosition.hashCode() : 0);
        result = 31 * result + (descri != null ? descri.hashCode() : 0);
        return result;
    }
}
