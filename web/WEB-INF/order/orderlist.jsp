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

	<title>title</title>
	<style>
		#tr {
			background-color: rgba(17, 17, 34, 0.49);
		}
		a{
			text-decoration: none;
			text-align: center;
			color: rgba(39, 50, 44, 0.86);
			font-size: 46px;
		}
		a:hover{
			color: rgba(236, 111, 23, 0.62);
		}
		tr:hover {
			background-color: rgba(172, 139, 139, 0.64);
		}
		th,td{
			white-space: nowrap;
			width: 527px;
			height: 156px;
			text-align: center;
			line-height: 156px;
			font-size: 65px;
		}
		body {
			font-size: 45px;
			background-repeat: repeat-y;
		}
		caption{
			text-align: center;
			font-size: 99px;
			font-weight: 500;
			color: rgba(30, 30, 30, 0.66);
			margin: 60px;
		}
	</style>
</head>

<body>
<table align="center">
	<caption>订单数据列表</caption>
	<tr id="tr">
		<th>订单ID</th>
		<th>订单编号</th>
		<th>发货地址</th>
		<th>收货地址</th>
		<th>当前位置</th>
		<th>订单状态</th>
		<th>备注</th>
		<th>操作</th>
	</tr>
	<s:iterator value="list">
		<tr>
			<td><s:property value="id" /></td>
			<td><s:property value="orderNum" /></td>
			<td><s:property value="startPosition" /></td>
			<td><s:property value="endPosition" /></td>
			<td><s:property value="curPosition" /></td>
			<td><s:property value="received" /></td>
			<td><s:property value="descri" /></td>
			<s:if test='method=="delete"'>
				<td><s:a href="order!deleteOrder.action?order.id=%{id}">刪除</s:a></td>
			</s:if>
			<s:if test='method=="update"'>
				<td><s:a href="order!updateByOrder.action?method=update&&order.orderNum=%{orderNum}">更新</s:a></td>
			</s:if>
			<s:if test='method=="query"'>
				<td><s:a href="order!orderInfo.action?method=display&&order.orderNum=%{orderNum}">展示订单信息</s:a></td>
			</s:if>
		</tr>
	</s:iterator>
</table>
</body>
</html>