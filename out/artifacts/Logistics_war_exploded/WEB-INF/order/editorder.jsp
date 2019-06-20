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

	<style>
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
			padding-top: 100px;
		}
		p{
			width: 600px;
			font-size: 100px;
			position: absolute;
			left: 50%;
			margin-left: -220px;
		}
		#startPosition, #endPosition, #endPosition, #curPosition, #received, #descri{
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
<p>更改订单信息</p>
<div id="context">
	<s:form method="post">
		<s:hidden name="order.id" value="%{temp.id}"/>
		<s:hidden name="order.orderNum" value="%{temp.orderNum}"/>
		<s:textfield id="startPosition" label="收货地址" name="order.startPosition" value="%{temp.startPosition}"/><br>
		<s:textfield id="endPosition" label="收货地址" name="order.endPosition" value="%{temp.endPosition}"/><br>
		<s:textfield id="curPosition" label="当前位置" name="order.curPosition" value="%{temp.curPosition}"/><br>
		<s:textfield id="received" label="订单状态" name="order.received" value="%{temp.received}"/><br>
		<s:textfield id="descri" label="收货地址" name="order.descri" value="%{temp.descri}"/><br>
		<s:submit cssClass="sub" value="更新订单" onclick="update()"/>
		<s:reset cssClass="res" value="重置"/>
	</s:form>
</div>

</body>
</html>
<script>
	function update(){
		frm = document.getElementsByTagName("form")[0];
		frm.action="order!updateOrder.action";
		frm.submit()
	}
</script>