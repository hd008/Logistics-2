<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/6/20
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/style.css">

</head>
<body>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300" type="text/css" />
<div id="form">
    <s:form action="user!register" method="POST">
        <s:textfield name="user.username" label="username"/>
        <s:password name="user.password" label="password"/>
        <s:password name="confirm" label="confirm"/>
        <s:checkbox name="user.isBussiness" label="商家"/>
        <s:submit value="register"/>
    </s:form>
</div>

</body>
</html>
