<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/6/13
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300" type="text/css" />
  <h1>欢迎光临</h1>

  <script  src="js/script.js"></script>
  <div style="position:absolute;right: 53px;">
    <a href="front/login.jsp" style="text-decoration:none">登陆</a>   ||
    <a href="front/register.jsp"style="text-decoration:none">注册</a>
  </div>

<div id="find">

  <s:form action="query!query" method="POST" theme="simple" cssStyle="margin: auto">
    <s:textfield name="order.id" cssStyle="width: 500px;height: 40px"/>
    <s:submit value="find" cssStyle="font-size: 16px;line-height: 38px;border:none;background:none;cursor:pointer;"/>
  </s:form>
  <s:property value="msg"/>
</div>



  </body>
</html>
