<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/6/19
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #menu{
            border:1px solid red;
            width:30%;
            height:700px;
            float:left;
        }
        #area{
            border:1px solid red;
            width:65%;
            height:700px;
            float:right;
        }

        iframe{

        }
    </style>

</head>
<body>
<div id="menu">
    <dt>订单管理</dt>
    <dd><a href="/order/addOrder.jsp" target="ifr">订单增加</a></dd>
    <dd><a href="/order/deleteOrder.jsp" target="ifr">订单删除</a></dd>
    <dd><a href="/order/updateOrder.jsp" target="ifr">订单更新</a></dd>
    <dd><a href="/order/queryOrder.jsp" target="ifr">订单查询</a></dd>
    <dt>记录管理</dt>
    <dd><a href="/record/addRecord.jsp" target="ifr">记录增加</a></dd>
    <dd><a href="record!list" target="ifr">记录查询</a></dd>
</div>

<div id="area">
    <iframe src="" name="ifr" width=100% height=100%  scrolling="no"></iframe>
</div>
</body>
</html>
