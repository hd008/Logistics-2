<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/6/20
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <s:form action="record!updateRecord" method="POST">
        <s:textfield name="record.buyerId" label="买家ID"/>
        <s:textfield name="record.businessId" label="卖家ID"/>
        <s:textfield name="record.orderId" label="订单ID"/>
        <s:submit value="更新"/>
    </s:form>

</body>
</html>
