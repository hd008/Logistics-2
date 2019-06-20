<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/6/20
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>记录ID</td>
        <td>买家</td>
        <td>卖家</td>
        <td>单号</td>
    </tr>
    <s:iterator value="recordList">
        <tr>
            <td>1<s:property value="%{id}"/></td>
            <td>1<s:property value="%{buyerId}"/></td>
            <td>1<s:property value="%{businessId}"/> </td>
            <td>1<s:property value="%{orderId}"/></td>
            <td><s:a href="record!delete?modifyId=%{id}">删除记录</s:a></td>
            <td><s:a href="record!update?modifyId=%{id}">更新</s:a></td>
            <td><s:a href="record!display?modifyId=%{id}">查看详细信息</s:a></td>
        </tr>
    </s:iterator>
</table>

</body>
</html>
