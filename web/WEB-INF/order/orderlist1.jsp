<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: hd
  Date: 2019-06-19
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/style.css">

</head>
<body>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300" type="text/css" />

<table style="position:absolute;top: 0px;left:30%;">
    <caption>订单列表数据显示</caption>
    <tr>
        <th>订单ID</th>
        <th>订单编号</th>
        <th>订单状态</th>
        <th>发货地址</th>
        <th>收货地址</th>
        <th>当前位置</th>
        <th>备注</th>
    </tr>
<s:iterator value="list">
    <tr>
        <td><s:property value="id" /></td>
        <td><s:property value="orderNum" /></td>
        <td><s:property value="received" /></td>
        <td><s:property value="startPosition" /></td>
        <td><s:property value="endPosition" /></td>
        <td><s:property value="curPosition" /></td>
        <td><s:property value="describe" /></td>

    </tr>
</s:iterator>

</table>
</body>
</html>
