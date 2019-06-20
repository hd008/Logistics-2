<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/6/13
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<<style>
	body{
		position: relative;
		background-color: rgba(237, 234, 239, 0.61)
	}
	#context{
		width: 1000px;
		height: 1000px;
		position: absolute;
		left: 50%;
		margin-left: -500px;
		padding-left: 170px;
		padding-top: -80px;
	}
	p{
		width: 600px;
		font-size: 100px;
		position: absolute;
		left: 50%;
		margin-left: -220px;
		top:-50px;
	}
	#uname, #isass, #isbuss, #upassn, #upassc{
		background-color: rgba(202, 204, 205, 0.61);
		margin-top: 30px;
	}
	.sub{
		width: 800px;
		margin-right: 100px;
		height: 70px;
		border-radius: 70px;
		box-shadow: 6px 14px 5px #888888;
		font-size: 60px;
		line-height: 60px;
		margin-top: 30px;
	}
	.res{
		width: 800px;
		height: 70px;
		margin-right: 100px;
		border-radius: 70px;
		box-shadow: 6px 14px 5px #888888;
		font-size: 60px;
		line-height: 60px;
		margin-top: 30px;
	}

</style>
</head>
  <body>
  <p>更新用户信息</p>
  <div id="context">
		<s:form method="post">
			<s:hidden name="user.id" value="%{temp.id}"/>
			<s:textfield id="uname" label="用户名：" name="user.username" value="%{temp.username}"/><br>
            <s:textfield id="isass" name="user.isAss" label="买家权限：" value="%{temp.isAss}"/><br>
            <s:textfield id="isbuss" name="user.isBussiness" label="商家权限：" value="%{temp.isAss}"/><br>
			<s:password id="upassn" label="新密码：" name="user.password"/><br>
			<s:password id="upassc" label="确认新密码: " onblur="confimPsw()"/><br>
			<s:submit cssClass="sub" value="更新用户" onclick="update()"/>
			<s:reset cssClass="res" value="重置"/>
		</s:form>
  </div>
  </body>
</html>
<script>
    function confimPsw(){
        var upassn = document.getElementById("upassn").value;
        var upassc = document.getElementById("upassc").value;
        if (upassn!=upassc){
            alert("密码要一致！");
        }
    }
	function update(){
		frm = document.getElementsByTagName("form")[0];
		frm.action="user!userupdate.action";
		frm.submit()
	}
</script>