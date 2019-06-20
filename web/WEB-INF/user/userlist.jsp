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
<script src="js/username.js" type="text/javascript"></script>
</head>
<body>
<table align="center">
    <caption>用户列表数据显示</caption>
    <tr id="tr">
        <th>用 户 ID</th>
        <th>用 户 名</th>
        <th>用 户 密 码</th>
        <th>用 户 权 限</th>
        <%--			<th colspan="3">操作</th>--%>
        <th>操作</th>
    </tr>
    <s:iterator value="list">
        <td><s:property value="id" /></td>
        <td><s:property value="username" /></td>
        <td><s:property value="password" /></td>
                <%--                    <s:property value="isAss" />--%>
            <s:if test="isAss">
                <td>买家</td>
            </s:if>
            <s:elseif test="isBussiness">
                <td>商家</td>
            </s:elseif>
            <s:else>
                <td>管理员</td>
            </s:else>

        <s:if test='method=="delete"'>
            <td><s:a href="user!userdelete.action?user.id=%{id}">刪除</s:a></td>
        </s:if>
        <s:if test='method=="update"'>
            <td><s:a href="user!updateByUser.action?method=update&&user.username=%{username}">更新</s:a></td>
        </s:if>
        <s:if test='method=="query"'>
            <td><s:a href="user!userInfo.action?method=display&&user.username=%{username}">展示用户信息</s:a></td>
        </s:if>
        </tr>

    </s:iterator>

</table>
</body>
</html>