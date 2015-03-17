<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>个人信息</title>
<style type="text/css">
.msg{

margin-top:30px;
margin-left:100px;
}

.edit{
height:30px;
}
.errorMessage{
	color:red;
	font-size:12px;
}

</style>
</head>

<body>
<form action="updatePassword" method="post">
   <div class="msg">
	<h1>修改密码</h1>
    <table>
     <tr><td></td><td><s:fielderror fieldName="userPassword"></s:fielderror></td></tr>
    <tr>
    <td>原密码:</td>
    <td>
    <input type="password"  name="user.userPassword" />
    </td>
    </tr>
    
     <tr><td></td><td><s:fielderror fieldName="newPassword"></s:fielderror></td></tr>
      <tr>
    <td>新密码:</td>
    <td>
    <input type="password" name="newPassword" />
    </td>
    </tr>
    
    <tr>
    <td>确认密码:</td>
    <td>
    <input type="password" name="confirmPassword" />
    </td>
    </tr>
    
    <tr>
    <td></td>
    <td><input type="submit" value="保存"/>
    <input type="button" value="返回"  onclick="window.history.go(-1);"/>
     </td>
    </tr>
    </table>
</div>
</form>
</body>
</html>
