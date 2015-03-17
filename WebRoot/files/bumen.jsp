<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/xiangmu.js"></script>
</head>
<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="xiangmu.htm";
   document.getElementById("fom").submit();
}

function on_load(){
	var loadingmsg=document.getElementById("loadingmsg");
	var mainpage=document.getElementById("mainpage");
	loadingmsg.style.display="";
	mainpage.style.display="none";
	
	loadingmsg.style.display="none";
	mainpage.style.display="";
}
</SCRIPT>

<body onload="on_load()">
<table id="mainpage" width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="62" background="images/nav04.gif">
          
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

<!--           	 <tr> -->
<!--                <td height="20"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span> -->
<!-- 	              <input type="submit" value="删除所选项目信息"/> -->
<!-- 	              <input type="button" onclick="window.location='<%=request.getContextPath() %>/files/addbumen.jsp'" value="添加项目"></td> -->
<!--           	 </tr> -->
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13" align="center" bgcolor="#EEEEEE"> &nbsp; 部门账户信息列表 &nbsp;</td>
                    </tr>
                  <tr>
			
                    <td width="12%" align="center" bgcolor="#EEEEEE">账号</td>
                    <td width="12%" align="center" bgcolor="#EEEEEE">密码</td>
                    <td width="12%" align="center" bgcolor="#EEEEEE">部门名称</td>
                   <td width="12%" align="center" bgcolor="#EEEEEE">负责人</td>
                    <td width="12%" align="center" bgcolor="#EEEEEE">电话</td>
	       <td width="12%" align="center" bgcolor="#EEEEEE">操作
	    
                  </tr>
                   <s:iterator value="#request.list" id="ut">
                  <tr align="center">
		
                    <td height="20" bgcolor="#FFFFFF"><s:property value="#ut.User.userUsername"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="#ut.User.userPassword"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="#ut.departmentName"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="#ut.User.userName"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="#ut.User.userPhone"/></td>
                   
	       <td bgcolor="#FFFFFF"><s:a href="editDepartment?department.departmentId=%{#ut.departmentId}">编辑</s:a>
		</tr>
	     </s:iterator>
	
		
		
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              
                     
               
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>



</body>
</html>
