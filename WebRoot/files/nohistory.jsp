<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>错误信息显示</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.error{
color:red;
margin-left:50px;
margin-top:30px;
}
</style>
</head>
<body>
<form action="locateCheckList" method="post">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" background="images/nav04.gif">
      <tr>
      <td width="21"><img style="margin-left:50px" src="images/ico07.gif" width="20"
      
										height="18" /></td>
        <td height="62" >
         <s:hidden name="company.companyId" value="%{company.companyId}"></s:hidden>
		<div style="font-size:12px">查询:<input name="checkListDate" type="date"/>
		<input style="margin-left:10px" type="submit" class="right-button02" value="GO" />
		</div>
	</td>
      </tr>
</table>
</form>
<div style="margin-left:50px"><h2>该天没有检查记录</h2></div>

</body>
</html>