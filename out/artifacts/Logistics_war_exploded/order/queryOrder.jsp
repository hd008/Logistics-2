<%--
  Created by IntelliJ IDEA.
  User: Orchid
  Date: 2019/6/18
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>query</title>

    <style>
        * {
            margin: 0px;
            padding: 0px;
        }
        body{
            font-family: "微软雅黑 Light";
            font-size: 50px;
            overflow: hidden;
        }
        input{
            width: 600px;
            height: 90px;
            margin-left: 0px;
            text-align: center;
            background-color: rgba(236, 238, 239, 0.61);
        }
        input[type=button]{
            width: 300px;
            height: 120px;
            margin-left: 60px;
            border-radius: 70px;
            box-shadow: 6px 14px 5px #888888;
        }
        input[type=button]:focus{
            outline: 0;
        }
        #select{
            height: 20%;
            float: right;
            margin-top: 10px;
            margin-right: 100px;
            border-color: rgba(237, 234, 239, 0.61);
        }
        #re{
            height:80%;
        }
        iframe{
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
<div id="context">
    <div id="select">
        <form action="" method="post" target="ifr1">
            <label for="orderNum">订单编号:</label><input type="text" id="orderNum" name="order.orderNum">
            <input type="button" value="查询" onclick="query()">
        </form>
    </div>
    <div id="re">
        <iframe src="" name="ifr1"></iframe>
    </div>
</div>
</body>
</html>
<script>
    function  query(){
        frm = document.getElementsByTagName("form")[0];
        frm.action="order!queryOrder.action?method=query";
        frm.submit();
    }
</script>
