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
				 <form action="updateCompany" method="post" >
					  <table style="margin-left:200px">
					 <s:hidden name="company.companyId" value="%{#session.company.companyId}"></s:hidden>
					 <s:hidden name="company.user.userId" value="%{#session.company.user.userId}"></s:hidden>
					 <s:hidden name="company.user.userType" value="%{#session.company.user.userType}"></s:hidden>
					 <s:hidden name="company.companyCustodian" value="%{#session.company.companyCustodian}"></s:hidden>
					 <s:hidden name="company.companyCondition" value="%{#session.company.companyCondition}"></s:hidden>
					  <s:hidden name="company.companyTime" value="%{#session.company.companyTime}"></s:hidden>
					 <tr><td></td><td><s:fielderror fieldName="company.userUsername"></s:fielderror></td></tr>
					  <tr>
					    <td><s:textfield  name="company.user.userUsername" value="%{#session.company.user.userUsername}" label="企业工商号" style="width:250px"  size="40" /></td>
					    </tr>
                        <tr>

					    <td><s:textfield  name="company.companyName" value="%{#session.company.companyName}" label="企业名称" style="width:250px" size="40"/></td>
					  </tr>
					  <tr>
					    <td><s:textfield  name="company.user.userPassword" value="%{#session.company.user.userPassword}"  label="密码"  style="width:250px" size="40" /></td>
					    </tr>

					  <tr>
					    <td nowrap align="left">所属部门:</td>
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
					    <td nowrap align="left">企业类型:</td>
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
					    <td nowrap align="left">所属街道:</td>
					    <td>
					    <select name="company.street.streetId">
					    <s:iterator value="#session.listStreet" id="ls">
					 
					    <option value="${ls.streetId}"><s:property value="#ls.streetName"/> </option>					   
					    </s:iterator>
					     </select>
					    </td>
					  </tr>
					   
					  <tr>
					    <td nowrap align="left">危险等级:</td>
					    <td>
					    <select name="company.companyDanger">
					    <option value="红">红</option>
					    <option value="黄">黄</option>
					    <option value="蓝">蓝</option>
					    </select>
					    </td>
					  </tr>
					  <tr>

					    <td><s:textfield name="company.companyArea" value="%{#session.company.companyArea}"  label="公司面积(㎡)" style="width:80px"  size="40"/></td>
					  </tr>
					    <tr>

					    <td><s:textfield name="company.user.userName" value="%{#session.company.user.userName}"  label="负责人" style="width:250px"  size="40"/></td>
					  </tr>
					  <tr>
					    <td><s:textfield name="company.companyPosition" value="%{#session.company.companyPosition}"   label="负责人职位"  style="width:250px" size="40"/></td>
					  </tr>
					    <tr>
					    <td><s:textfield name="company.user.userPhone" value="%{#session.company.user.userPhone}"  label="电话" style="width:250px" size="40"/></td>
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
