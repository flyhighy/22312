<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>企业管理系统 </title>
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

<link href="../css/css.css" rel="stylesheet" type="text/css" />
<link href="../css/style.css" rel="stylesheet" type="text/css" />
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

<body>
<table id="mainpage" width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="62" background="../images/nav04.gif">
          
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newfont03">
		  
        </table>


	</td>
      </tr>
 
</table>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

              <tr>
                <td height="232" class="font42"><div>
                  <table width="60%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" >
                    
                    <tr>
                      <td height="30" colspan="13" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp; 检查通知 &nbsp;</td>
                      </tr>
                    
                    
                    <tr>  <td width="20%" align="center" bgcolor="#EEEEEE">企业工商号</td>
                      <td bgcolor="#FFFFFF"><s:property value="%{company.user.userUsername}"/></td>
                      </tr>
                    <tr>   <td width="20%" align="center" bgcolor="#EEEEEE">企业名称</td>
                      <td bgcolor="#FFFFFF"><s:property value="%{company.companyName}"/></td>
                      </tr>
              
                    <tr><td width="20%" align="center" bgcolor="#EEEEEE">合格状态</td>
                      <td bgcolor="#FFFFFF"><s:property value="%{company.companyCondition}"/></td>
                      </tr>
                    <tr><td width="20%" align="center" bgcolor="#EEEEEE"><div align="center">下次检查时间</div></td>
                      <td bgcolor="#FFFFFF"><s:date name="%{company.companyTime}" format='yyyy-MM-dd'/></td>
                      </tr>
                      
                      <tr><td width="20%" align="center" bgcolor="#EEEEEE"><div align="center">检查类型</div></td>
                      <td bgcolor="#FFFFFF">复查</td>
                      </tr>
                      
                    <tr><td width="20%" align="center" bgcolor="#EEEEEE">检查员</td>
                      <td bgcolor="#FFFFFF"><s:property value="%{company.street.user.userName}"/></td>
                      </tr>
                    <tr><td width="20%" align="center" bgcolor="#EEEEEE">检查员电话</td>
                      <td bgcolor="#FFFFFF"><s:property value="%{company.street.user.userPhone}"/></td>
                      </tr>
                    
                    
                    
                  </table>
                </div></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
               
                    <tr>
                    
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
</table>

</body>
</html>
