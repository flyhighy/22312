<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统</title>
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
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >增加街道办</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">

					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					

					  <tr>
					    <td nowrap align="right" width="13%">企业名称:</td>
					    <td width="43%"><input  class="text" style="width:250px" type="text" size="40" /></td>
					    </tr>

					  <tr>
					    <td nowrap align="right">所属部门:</td>
					    <td width="43%"><input  class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>

					  <tr>
					    <td nowrap align="right">危险等级:</td>
					    <td width="43%"><input  class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>

					  <tr>
					    <td nowrap align="right">街道:</td>
					    <td width="43%"><input  class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>

					  <tr>
					    <td nowrap align="right">检查员名称:</td>
					    <td width="43%"><input  class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>
					   
					  <tr>
					    <td nowrap align="right">电话:</td>
					    <td width="43%"><input  class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>

					  </table>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
  

		
		
		
		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="保存" class="button" onclick="link();"/>　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</form>
</body>
</html>
