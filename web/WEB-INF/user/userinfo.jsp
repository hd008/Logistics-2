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
		<h1 align="center">用户列表数据显示</h1>
			<tr>
				<th>用户ID：</th>
				<td><s:property value="temp.id"/> </td>
			</tr>
			<tr>
				<th>用户名：</th>
				<td><s:property value="temp.username"/></td>
			</tr>
			<tr>
				<th>权&nbsp;&nbsp;&nbsp;限：</th>

				<s:if test="temp.isAss">
				<td>买家</td>
				</s:if>
				<s:elseif test="temp.isBussiness">
				<td>商家</td>
				</s:elseif>
				<s:else>
				<td>管理员</td>
				</s:else>
			</tr>
	</table>
</body>
</html>
