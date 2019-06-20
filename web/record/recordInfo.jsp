<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/6/20
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        ul li{
            list-style: none;
        }
    </style>
</head>
<body>
<ul>
    <li>买家:<s:property value="buyer"/></li>
    <li>卖家:<s:property value="bussiness"/></li>
    <li>订单号:<s:property value="order.orderNum"/> </li>
    <li>发货地址:<s:property value="order.startPosition"/> </li>
    <li>收货地址:<s:property value="order.endPosition"/> </li>
    <li>当前地址:<s:property value="order.curPosition"/> </li>
    <li>是否收货:<s:property value="order.received"/> </li>
    <li>物品描述:<s:property value="order.discri"/> </li>
</ul>
</body>
</html>
