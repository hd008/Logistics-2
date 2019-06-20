<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/6/20
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form action="record!add" method="POST">
    <s:textfield name="buyer" label="买家"/>
    <s:textfield name="bussiness" label="卖家"/>
    <s:textfield name="orderNum" label="单号"/>
    <s:submit value="添加"/>
</s:form>

</body>
</html>
