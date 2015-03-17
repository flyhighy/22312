<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>项目管理系统 </title>
<link rel="stylesheet" rev="stylesheet" href="css.css" type="text/css" media="all" />


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

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				 <form action="updateDepartment" method="post" >
					  <table style="margin-left:200px">
					 <s:hidden name="department.departmentId" value="%{department.departmentId}"></s:hidden>
					 <s:hidden name="department.user.userId" value="%{department.User.userId}"></s:hidden>
					  <s:hidden name="department.user.userType" value="%{department.User.userType}"></s:hidden>
					  <tr><td></td><td><s:fielderror fieldName="userUsername" /></td></tr>
					  <tr>
					    <td><s:textfield name="department.user.userUsername" value="%{department.User.userUsername}"  label="账号" class="text" style="width:250px" type="text" size="40" /></td>
					    </tr>

					  <tr>

					    <td><s:textfield name="department.user.userPassword" value="%{department.User.userPassword}" label="密码" value="888888" class="text" style="width:250px" type="text" size="40" /></td>
					    </tr>
                     
					  <tr>

					    <td><s:textfield  name="department.departmentName" value="%{department.departmentName}" label="部门" class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>
					  <tr>
					    <td><s:textfield name="department.user.userName" value="%{department.User.userName}" label="负责人" class="text" style="width:250px" type="text" size="40" /></td>
					    </tr>
					  <tr>
					    <td><s:textfield name="department.user.userPhone" value="%{department.User.userPhone}"  label="电话" class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>
	                  <tr>
                      <td nowrap align="right">
                      </td>
                      <td  height="50px">
			<input type="submit" name="Submit" value="保存" class="button"/>　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></td>
                      </tr>
					  </table>
					  </form>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
  

		
		
		
		
	
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>

</body>
</html>
