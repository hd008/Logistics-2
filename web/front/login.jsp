<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: hd
  Date: 2019-06-20
  Time: 20:34
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
<s:form action="user!login" method="POST">
    <s:textfield name="user.username" label="username"/>
    <s:password name="user.password" label="password"/>
    <s:submit value="login"/>
</s:form><!--为什么不能出现两个 form   例如index一个login一个这个表!-->

<s:property value="msg"/>
</div>
</body>
</html>
