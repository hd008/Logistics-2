<%--
  Created by IntelliJ IDEA.
  User: 李辉1998
  Date: 2019/6/17
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户增加</title>
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
        input[type=button]:focus{
            outline: 0;
        }
        input[type=reset]{
            width: 300px;
            height: 120px;
            margin-left: 60px;
            border-radius: 70px;
            box-shadow: 6px 14px 5px #888888;
        }
        input[type=reset]:focus{
            outline: 0;
        }
        input[type=radio]{
            width: 250px;
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
    <h1>增&nbsp;加&nbsp;用&nbsp;户</h1>
</div>
<div id="context">
    <form action="" method="post">

        <label for="uname">用户名:</label>
            <input type="text" id="uname" name="user.username" onblur="checkuname(this)"><span id="info"></span><br>
        <label for="upass">密&nbsp;&nbsp;&nbsp;码:</label>
            <input type="text" id="upass" name="user.password"><br>

        <label>买&nbsp;家:</label>
        <input id="isAss" name="user.isAss" type="radio" value = "true" checked/>
        <label for="isAss">是</label>
        <input id="isAss1" name="user.isAss" type="radio" value="false" />
        <label for="isAss1">否</label><br />

        <label>商&nbsp;家:</label>
        <input id="isbuss" name="user.isBussiness" type="radio" value = "true" />
        <label for="isbuss">是</label>
        <input id="isbuss1" name="user.isBussiness" type="radio" value="false" checked/>
        <label for="isbuss1">否</label><br />

        <input type="button" value="增加用户" onclick="add()">
        <input type="reset" value="重置"/>
    </form>
</div>
</body>
</html>
<script>
    function check(){
       var username=document.getElementById("uname").value;
        var password=document.getElementById("upass").value;
        var isass=document.getElementsByName("user.isAss");
        var isbss=document.getElementsByName("user.isBussiness");
        var isa,isb;
        for (var i = 0; i < isass.length; i++) {
            if (isass[i].checked == true) {
                isa=isass[i].value;
            }
        }
        for (var i = 0; i < isbss.length; i++) {
            if (isbss[i].checked == true) {
                isb=isbss[i].value;
            }
        }

        if(username.trim()==''){
            alert("用户名不能为空！")
            return false;
        }else 	if(password.trim()==''&&password.length<=6){
            alert("用户密码不能为空或少于6个字符位！")
            return false;
        }else 	if(isa==isb){
            alert("用户不能同时为商家或者买家")
            return false;
        }else{
            return true;
        }
    }
    function  add(){
        //1.验证
        if(!check()) return false;
        //2.提交
        frm = document.getElementsByTagName("form")[0];
        frm.action="user!useradd.action";
        frm.submit();
    }
    function checkuname(a){
        //alert(a.value)
        ajaxByCheck(a.value);

    }
    function callback(){
        info = document.getElementById("info");
        if (httpRequest.readyState==4&&httpRequest.status==200){
            //alert(httpRequest.responseText)
            json = eval("("+httpRequest.responseText+")")
            //alert(json)
            //alert(json.user.id)
            if(json.user.id)
                info.innerHTML="用户名已经存在"
            else
                info.innerHTML="";
        }
    }
</script>