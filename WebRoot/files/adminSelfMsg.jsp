<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>个人信息</title>
<style type="text/css">
.msg{

margin-top:30px;
}

.edit{
height:30px;
text-decoration:none;
color:blue;
}
</style>
</head>

<body>
<a class="edit" href="<%=request.getContextPath() %>/files/editPassword.jsp">修改密码</a>
   <div class="msg">
	<h1>个人信息</h1>
	<table width="50%" border="0" cellpadding="4" cellspacing="1"  bgcolor="#464646">
		<tr height="20"  bgcolor="#FFF">
			<td width="20%" nowrap align="right" width="13%">账号:</td>
			<td  align="center"><s:property value="user.userUsername" /></td>
		</tr>

	

		<tr height="20" bgcolor="#FFF">
			<td nowrap align="right">负责人:</td>
			<td align="center"><s:property value="user.userName" /></td>
		</tr>

		<tr height="20" bgcolor="#FFF">
			<td nowrap align="right">电话:</td>
			<td align="center"><s:property value="user.userPhone" /></td>
		</tr>
	</table>

</div>
</body>
</html>
