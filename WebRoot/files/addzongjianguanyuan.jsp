<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>项目管理系统 </title>
<script language="JavaScript" type="text/javascript">
function tishi()
{
  var a=confirm('数据库中保存有该人员基本信息，您可以修改或保留该信息。');
  if(a!=true)return false;
  window.open("冲突页.htm","","depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}

function check()
{
document.getElementById("aa").style.display="";
}


function link(){
alert('保存成功！');
    document.getElementById("fom").action="xuqiumingxi.htm";
   document.getElementById("fom").submit();
}



</script>
<style type="text/css">

.atten {font-size:12px;font-weight:normal;color:#F00;}
.errorMessage{
color:red;
font-size:12px;
}
</style>
</head>

<body class="ContentBody">
  
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
 
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">　
		</td></tr>

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<form action="addUser" method="post" >
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 <tr><td></td><td width="50%"><s:fielderror fieldName="userUsername" /></td></tr>
					 <tr><td></td><td width="69%"><s:fielderror fieldName="user.userUsername" /></td></tr>
					  <tr>
					    <td nowrap align="right" width="13%">账号:</td>
					    <td width="43%"><input name="user.userUsername"  class="text" style="width:250px" type="text" size="40" /></td>
					    </tr>
                        <tr><td></td><td width="69%"><s:fielderror fieldName="user.userPassword" /></td></tr>
					  <tr>
					    <td nowrap align="right" width="13%">密码:</td>
					    <td width="43%"><input name="user.userPassword"  class="text" style="width:250px" type="text" size="40" value="888888"/></td>
					    </tr>

					  <tr>
					    <td nowrap align="right">姓名:</td>
					    <td width="43%"><input name="user.userName"  class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>
					    <tr><td></td><td><s:fielderror fieldName="user.userPhone"></s:fielderror></td></tr>
					 
					  <tr>
					    <td nowrap align="right">电话:</td>
					    <td width="43%"><input name="user.userPhone"  class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>
                      <tr>
                      <td nowrap align="right">
                      </td>
                      <td nowrap align="left" height="50px">
			<input type="submit" name="Submit" value="保存" class="button" "/>　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></td>
                      </tr>

					  </table>
					</form>
			 <br />
				</fieldset>			</TD>
		</TR>
		

	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</body>
</html>
