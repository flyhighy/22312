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
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
.errorMessage{
	color:red;
	font-size:12px;
}
-->
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
				 <form action="saveCompany" method="post" >
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr><td></td><td><s:fielderror fieldName="company.userUsername"></s:fielderror></td></tr>
					 <tr><td></td><td><s:fielderror fieldName="company.user.userUsername"></s:fielderror></td></tr>
					  <tr>
					   <s:hidden name="userId" value="%{#session.user.userId}"></s:hidden>
					    <td nowrap align="right" width="13%">企业工商号:</td>
					    <td width="43%"><input name="company.user.userUsername" class="text" style="width:250px" type="text" size="40" /></td>
					    </tr>
					    <tr><td></td><td><s:fielderror fieldName="company.companyName"></s:fielderror></td></tr>
					   
                        <tr>
					    <td nowrap align="right">企业名称:</td>
					    <td width="43%"><input name="company.companyName" class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>
					  <tr><td></td><td><s:fielderror fieldName="company.user.userPassword"></s:fielderror></td></tr>
					  <tr>
					    <td nowrap align="right" width="13%">密码:</td>
					    <td width="43%"><input name="company.user.userPassword" value="888888"  class="text" style="width:250px" type="text" size="40" /></td>
					    </tr>

					  <tr>
					    <td nowrap align="right">所属部门:</td>
					    <td>
					    <select name="departmentName">
					    <option value="工商局">工商局</option>
					    <option value="质监局">质监局</option>
					    <option value="安监局">安监局</option>
					    <option value="建住局">建住局</option>
					    </select>
					    </td>
					  </tr>
					  
					    <tr>
					    <td nowrap align="right">企业类型:</td>
					    <td>
					    <select name="company.subdivision.subdivisionId">
					    <option value="1">仓储物流单位</option>
					    <option value="2">公众聚集场所</option>
					    <option value="3">家具制造单位</option>
					    <option value="4">建筑施工现场</option>
					    <option value="5">“九小”场所</option>
					    <option value="6">危险化学品单位</option>
					    </select>
					    </td>
					  </tr>

					  <tr>
					    <td nowrap align="right">所属街道:</td>
					    <td width="43%">
					    <select name="company.street.streetId">
					    <s:iterator value="#session.listStreet" id="ls">
					 
					    <option value="${ls.streetId}"><s:property value="#ls.streetName"/> </option>					   
					    </s:iterator>
					     </select>
					    </td>
					  </tr>
					   
					  <tr>
					    <td nowrap align="right">危险等级:</td>
					    <td width="43%">
					    <select name="company.companyDanger">
					    <option value="红">红</option>
					    <option value="黄">黄</option>
					    <option value="蓝">蓝</option>
					    </select>
					    </td>
					    <tr><td></td><td><s:fielderror fieldName="company.companyArea"></s:fielderror></td></tr>
					  </tr>
					    <tr>
					    <td nowrap align="right">公司面积:</td>
					    <td width="43%"><input name="company.companyArea" class="text" style="width:80px" type="text" size="40"/>㎡</td>
					  </tr>
					  
					   <tr><td></td><td><s:fielderror fieldName="company.user.userName"></s:fielderror></td></tr> 
					    <tr>
					    <td nowrap align="right">负责人:</td>
					    <td width="43%"><input name="company.user.userName" class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>
				   <tr><td></td><td><s:fielderror fieldName="company.companyPosition"></s:fielderror></td></tr>					   
					  <tr>
					   <td nowrap align="right">负责人职位:</td>
					    <td width="43%"><input name="company.companyPosition" class="text" style="width:250px" type="text" size="40"/></td>
					  </tr>
					  <tr><td></td><td><s:fielderror fieldName="company.user.userPhone"></s:fielderror></td></tr>
					    <tr>
					    <td nowrap align="right">电话:</td>
					    <td width="43%"><input name="company.user.userPhone" class="text" style="width:250px" type="text" size="40"/></td>
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
