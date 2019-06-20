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
    <title>add</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }
        h1 {
            text-align: center;
            font-size: 99px;
            font-weight: 500;
            color: rgba(30, 30, 30, 0.66);
            margin: 31px;
        }
        body{
            font-family: "微软雅黑 Light";
            font-size: 50px;
        }
        input{
            width: 600px;
            height: 90px;
            margin-top: 30px;
            margin-left: 0px;
            text-align: center;
            background-color: rgba(236, 238, 239, 0.61);
            clear: both;
        }
        input[type=button]{
            width: 300px;
            height: 120px;
            margin-left: 60px;
            border-radius: 70px;
            box-shadow: 6px 14px 5px #888888;
        }
        input[type=button]:focus {
            outline: none;
        }
        input[type=reset]{
            width: 300px;
            height: 120px;
            margin-left: 60px;
            border-radius: 70px;
            box-shadow: 6px 14px 5px #888888;
        }
        input[type=radio]{
            width: 126px;
            height: 60px;
            background-color: rgba(236, 238, 239, 0.61);
        }
        div{
            text-align: center;
        }

    </style>

</head>
<body>
<div id="head">
    <h1>增加订单</h1>
</div>
<div id="context">
    <div>
        <form action="" method="post">
            <label for="orderNum">订单编号:</label>
            <input type="text" id="orderNum" name="order.orderNum" onblur="checkuname(this)"><br />
            <label>订单状态:</label>
            <input id="received2" name="order.received" type="radio" value = "false" checked/>
            <label for="received2">未收货</label>
            <input id="received1" name="order.received" type="radio" value="true" />
            <label for="received1">已收货</label><br />
            <label for="startPosition">发货地址:</label>
            <input type="text" id="startPosition" name="order.startPosition"><br />
            <label for="endPosition">收货地址:</label>
            <input type="text" id="endPosition" name="order.endPosition"><br />
            <label for="curPosition">当前位置:</label>
            <input type="text" id="curPosition" name="order.curPosition"><br>
            <label for="descri">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
            <input type="text" id="descri" name="order.descri"><br>
            <input type="button" value="增加订单" onclick="add()">
        </form>
    </div>
</div>
</body>
</html>
<script>
    function check() {
        orderNum = document.getElementById("orderNum").value;
        received1 = document.getElementById("received1").value;
        received2 = document.getElementById("received2").value;
        startPosition = document.getElementById("startPosition").value;
        endPosition = document.getElementById("endPosition").value;
        curPosition = document.getElementById("curPosition").value;
        describe = document.getElementById("descri").value;
        if (orderNum.trim()==""){
            alert("订单编号不能为空");
            return false;
        }
        else if (received1.trim()=="" && received2.trim()==""){
            alert("订单状态不能为空");
            return false;
        }
        else if (startPosition.trim()==""){
            alert("发货地址不能为空");
            return false;
        }else if (endPosition.trim()==""){
            alert("收货地址不能为空");
            return false;
        }else if (curPosition.trim()==""){
            alert("当前位置不能为空");
            return false;
        }
        else{
            return true;
        }
    }
    function add(){
        if (!check())
            return false;
        frm = document.getElementsByTagName("form")[0];
        frm.action = "order!addOrder.action";
        frm.submit();
    }
</script>
