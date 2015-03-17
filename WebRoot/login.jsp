<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>安全生产网格化管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
 select{
   font-family: "宋体";
	font-size: 13px;
	}
#manager{
	display:none;
	}
#type{
	float:left;
}
#checkImg{
	text-align:center;
	width:60px;
	height:21px;
	background-image:url(images/pic05.jpg);
	display:inline-block;

	}
#checknum{	
letter-spacing:5px;
font-weight:bold;
color:#066 ;
}
.errorMessage{
	color:red;
	font-size:12px;
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script>


function change(name){
	if(name=='管理员ID:')
	   document.getElementById("manager").style.display='table-row';
    else
	   document.getElementById("manager").style.display='none';
	}
var num=Math.floor((Math.random())*10000);
function changeNum(){
	num=Math.floor((Math.random())*10000);
	document.getElementById("checknum").innerHTML=num;
}
window.onload=changeNum;
</script>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="images/top02.gif"><img src="images/top03.jpg" width="776" height="147" /></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td>
    <form action="login" method="post">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    
      <tr>
        <td width="31%" height="35" class="login-text02">选择登陆：</td>
        <td width="69%"  class="mylogin-text"><input id="type" type="radio" name="login_type" value="0" checked="checked" onclick="change('企业工商号:')" />企业登陆<input type="radio" name="login_type" value="1" onclick="change('管理员ID:')" />管理员登陆</td>
      </tr>
      <tr  id="manager">
        <td width="31%" height="35" class="login-text02">管理员等级：<br /></td>
        <td width="69%" ><select name="user.userType">
        <option value="0">区安委</option>
        <option value="1">总监管员</option>
        <option value="2">部门管理员</option>
        <option value="3">街道管理员</option>
        <option value="4">检查员</option></select></td>
      </tr>
     <tr><td></td><td width="69%"><s:fielderror fieldName="user.userUsername" /></td></tr>
			<tr><td></td><td width="69%"><s:fielderror fieldName="login" /></td></tr>		 
      <tr>
        <td width="31%" height="35" class="login-text02">用户名：<br /></td>
        <td width="69%" ><input  name="user.userUsername" type="text" size="22" /></td>
      </tr>
       <tr><td></td><td width="69%"><s:fielderror fieldName="user.userPassword" /></td></tr>
      <tr>
        <td height="35" class="login-text02">密　码：<br /></td>
        <td><input  name="user.userPassword" type="password" size="22" /></td>
      </tr>
<!--       <tr> -->
<!--         <td height="35" class="login-text02">请输入验证码：<br /></td> -->
<!--         <td><input name="check_num" type="text" size="4" /><span id="checkImg"><span id="checknum">2133</span></span><a href="#" style="vertical-align:bottom" class="login-text03" onclick="changeNum()">看不清楚</a></td> -->
<!--       </tr> -->
    
      <tr>
        <td height="35">&nbsp;</td>
        <td><input  type="submit" class="right-button01" value="确认登陆"  />
          <input  type="reset" class="right-button02" value="重 置" /></td>
      </tr>
    </table>
    </form>
    </td>
  </tr>
</table>
</body>
</html>