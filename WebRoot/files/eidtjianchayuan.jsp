<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 </title>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />


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
				 <form action="updateStreet" method="post" >
					  <table style="margin-left:200px">
					 
					  <tr>
					   <s:hidden name="street.streetId" value="%{street.streetId}"></s:hidden>
					   <s:hidden name="street.office.officeId" value="%{street.office.officeId}"></s:hidden>
					   <s:hidden name="street.office.officeName" value="%{street.office.officeName}"></s:hidden>
					   <s:hidden name="street.user.userId" value="%{street.User.userId}"></s:hidden>
					  <s:hidden name="street.user.userType" value="%{street.User.userType}"></s:hidden>
					  <tr><td></td><td><s:fielderror fieldName="userUsername"></s:fielderror></td></tr>
					
					    <td ><s:textfield name="street.user.userUsername" value="%{street.user.userUsername}"  label="检查员账号" style="width:250px" type="text" size="40" /></td>
					    </tr>
                   
					  <tr>
					    <td><s:textfield name="street.user.userPassword" value="%{street.user.userPassword}"  label="密码" style="width:250px" type="text" size="40" /></td>
					    </tr>

					  <tr>
					    <td><s:textfield name="street.streetName"  value="%{street.streetName}" label="街道名称" style="width:250px" type="text" size="40"/></td>
					  </tr>

					  <tr>

					    <td><s:textfield name="street.user.userName"  value="%{street.user.userName}" label="检查员名称" style="width:250px" type="text" size="40"/></td>
					  </tr>
					   
					  <tr>

					    <td><s:textfield name="street.user.userPhone" value="%{street.user.userPhone}" label="电话" style="width:250px" type="text" size="40"/></td>
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
</form>
</body>
</html>
