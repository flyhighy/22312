<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 </title>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />


<script language="JavaScript" type="text/javascript">

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
				 <form action="addStreet" method="post" >
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 <tr><td></td><td><s:fielderror fieldName="userUsername"></s:fielderror></td></tr>
					 <tr><td></td><td><s:fielderror fieldName="street.user.userUsername"></s:fielderror></td></tr>
					  <tr>
					   <s:hidden name="userId" value="%{#session.user.userId}"></s:hidden>
					    <td nowrap align="right" width="13%">检查员账号:</td>
					    <td width="43%"><input name="street.user.userUsername" class="text" style="width:250px" type="text" size="40" /></td>
					    </tr>
                      <tr><td></td><td><s:fielderror fieldName="street.user.passWord"></s:fielderror></td></tr>
					  <tr>
					    <td nowrap align="right" width="13%">密码:</td>
					    <td width="43%"><input name="street.user.userPassword" value="888888"  class="text" style="width:250px" type="text" size="40" /></td>
					    </tr>
<tr><td></td><td><s:fielderror fieldName="street.streetName"></s:fielderror></td></tr>
					  <tr>
					    <td nowrap align="right">街道名称:</td>
					    <td width="43%"><input name="street.streetName" class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>

					  <tr>
					    <td nowrap align="right">检查员名称:</td>
					    <td width="43%"><input name="street.user.userName" class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>
					    <tr><td></td><td><s:fielderror fieldName="street.user.userPhone"></s:fielderror></td></tr>
					 
					  <tr>
					    <td nowrap align="right">电话:</td>
					    <td width="43%"><input name="street.user.userPhone" class="text" style="width:250px" type="text" size="40"/></td>
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
