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
    <dt><a href="/user/userMangeIndex.jsp">用户管理</a></dt>

    <dt><a href="/order/orderManage.jsp">订单管理</a></dt>

    <dt>记录管理</dt>
    <dd><a href="/record/addRecord.jsp" target="ifr">记录增加</a></dd>
    <dd><a href="record!list" target="ifr">记录查询</a></dd>
</div>

<div id="area">
    <iframe src="" name="ifr" width=100% height=100%  scrolling="no"></iframe>
</div>
</body>
</html>
