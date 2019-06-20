<%@ taglib prefix="c" uri="/struts-tags" %>
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
		div {
			text-align: center;
		}
		th{
			text-align:center;
		}
		#tab tr th{
			padding-right: 50px;
			font-size: 80px;
			margin-top: 40px;
			color: rgba(99, 99, 99, 0.87);
		}
		#tab tr td {
			padding-right: 50px;
			font-size: 80px;
			margin-top: 40px;
			color: rgba(99, 99, 99, 0.87);
		}
		h1{
			font-size: 80px;
			color: rgba(99, 99, 99, 0.87);
		}
	</style>
</head>

<body>
<table align="center" id="tab">
	<h1 align="center">订单信息</h1>
	<tr>
		<th>订单编号</th>
		<td><s:property value="temp.orderNum"/> </td>
	</tr>
	<tr>
		<th>发货地址</th>
		<td><s:property value="temp.startPosition"/></td>
	</tr>
	<tr>
		<th>收货地址</th>
		<td><s:property value="temp.endPosition"/></td>
	</tr>
		<th>当前位置</th>
		<td><s:property value="temp.curPosition"/></td>
	</tr>
	<tr>
		<th>订单状态</th>
		<td><s:property value="temp.received"/></td>
	</tr>
	<tr>
		<th>备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注</th>
		<td><s:property value="temp.descri"/></td>
	</tr>
</table>
</body>
</html>
