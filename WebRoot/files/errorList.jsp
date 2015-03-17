<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>错误信息显示</title>
<style type="text/css">
.error{
color:red;
margin-left:50px;
margin-top:30px;
}
</style>
</head>
<body>
<div style="margin-left:50px"><h2>错误信息提示</h2></div>
<div class="error">
<table>
<s:iterator value="#request.errorList" id="error">
<tr><td><s:property value="#error"/></td></tr>
</s:iterator>
</table>
</div>
</body>
</html>