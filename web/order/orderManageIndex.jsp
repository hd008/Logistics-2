<%--
  Created by IntelliJ IDEA.
  User: Orchid
  Date: 2019/6/18
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>orderManage</title>

    <style>
        * {
            margin: 0px;
            padding: 0px;
        }
        body{
            overflow: hidden;
        }
        h1 {
            padding: 48px;
            text-align: center;
            font-size: 150px;
            font-family: Impact, Charcoal, sans-serif;
            color: rgba(25, 27, 26, 0.92)
        }
        body{
            background-color: rgba(237, 234, 239, 0.61);
            text-align: center;
            font-family: "微软雅黑 Light";
            background-color: rgba(237, 234, 239, 0.61);
            position: relative;
        }
        dd{
            width: 500px;
            height: 120px;
            float: left;
            margin: 81px;
            border-radius: 58px;
        }
        a{
            width: 500px;
            height: 120px;
            margin: 81px;
            line-height: 120px;
            border-radius: 58px;
            background-color: rgba(226, 226, 226, 0.44);
            box-shadow: 27px 27px 13px rgba(59, 58, 66, 0.54);
            text-align: center;
            float: left;
            text-decoration: none;
            color: rgba(15, 22, 17, 0.86);
            font-size:46px;
        }
        a:hover{
            background-color: rgba(30, 30, 30, 0.63);
            color: white;
        }

        body #head{
            width: 100%;
            height: 400px;
            background-color: rgba(63, 69, 80, 0.58);
        }
        body #head p{
            font-size: 59px;
            float: right;
            margin-right: 150px;
            color: white;
        }

        body #context{
            width: 100%;
            height: 80%;
            text-align: center;
        }
        body #context #menu {
            width: 100%;
            height: 340px;
            text-align: center;
        }
        body #context #menu #cen{
            width: 2800px;
            text-align: center;
            position: absolute;
            left: 50%;
            margin-left: -1450px;
        }

        body #context #area {
            width: 100%;
            height: 100%;
        }
        body #context #area iframe {
            width: 100%;
            height: 100%;
            border-width: 0px;
            border-style: inset;
            border-color: rgba(237, 234, 239, 0.61);
            border-image: initial;
        }

    </style>

</head>

<body>
<div id="head">
    <h1>用户管理</h1>
    <p>欢迎登录物流信息管理系统,${user.username }</p>
</div>
    <div id="menu">
        <dt>订单管理</dt>
        <dd><a href="/order/addOrder.jsp" target="ifr">订单增加</a></dd>
        <dd><a href="/order/deleteOrder.jsp" target="ifr">订单删除</a></dd>
        <dd><a href="/order/updateOrder.jsp" target="ifr">订单更新</a></dd>
        <dd><a href="/order/queryOrder.jsp" target="ifr">订单查询</a></dd>
    </div>
    <div id="area"><iframe src="" name="ifr" width=100% height=100%></iframe></div>
</div>
</body>
</html>
