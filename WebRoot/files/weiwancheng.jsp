<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 </title>
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
function gotoPage(){
	var num=document.getElementById("pages").innerHTML;
	var getNum=document.getElementById("pageNum").value;
	if(!Number(getNum))
		alert("非法输入！请输入阿拉伯数字！");
	else{
	if(getNum>num)
		alert("页数不存在！请重新输入！");
	else
		document.getElementById("goNum").submit();
	}
}
</SCRIPT>

<body onload="on_load()">
<form name="fom" id="fom" method="post" action="">
<table id="mainpage" width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="62" background="images/nav04.gif">
          
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newfont03">
		  <tr>
			<td width="21"><img src="images/ico07.gif" width="20" height="18" /></td>
			<td width="330">查看企业：

              危险等级&nbsp; <select name="companyControl.companyDanger">
											<option value="all">所有</option>
											<option value="红">红</option>
											<option value="黄">黄</option>
											<option value="蓝">蓝</option>
									</select>&nbsp;
             <input name="Submit" type="button" class="right-button02" value="搜 索" />

			 </td>

			<td width=100 align="right"><input type="text" placeholder="输入搜索条件">
         					<input type="button" class="right-button02" value="GO" />
			</td>

		</tr>
        </table>


	</td>
      </tr>
    </td>
  </tr>
</table>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp; 企业信息列表 &nbsp;</td>
                    </tr>
            								<tr>
												
												<td width="10%" align="center" bgcolor="#EEEEEE">企业工商号/账号</td>
												
												<td width="10%" align="center" bgcolor="#EEEEEE">企业名称</td>
												<td width="10%" align="center" bgcolor="#EEEEEE">企业类型</td>
												<td width="10%" align="center" bgcolor="#EEEEEE">所属部门</td>
										<td width="10%" align="center" bgcolor="#EEEEEE">所属街道</td>
												<td width="10%" align="center" bgcolor="#EEEEEE">负责人</td>

												<td width="10%" align="center" bgcolor="#EEEEEE">电话</td>
												<td width="8%" align="center" bgcolor="#EEEEEE">危险等级</td>
												<td width="12%" align="center" bgcolor="#EEEEEE">操作
											</tr>
                <s:iterator value="#request.pageBean.companylist" id="lc">
												<tr align="center">
												
													<td bgcolor="#FFFFFF"><s:property
															value="#lc.User.userUsername" /></td>
						
													<td bgcolor="#FFFFFF"><s:property
															value="#lc.companyName" /></td>
													<td bgcolor="#FFFFFF"><s:property
															value="#lc.subdivision.subdivisionName" /></td>
													<td bgcolor="#FFFFFF"><s:property
															value="#lc.subdivision.department.departmentName" /></td>

													<td bgcolor="#FFFFFF"><s:property
															value="#lc.street.streetName" /></td>
													<td bgcolor="#FFFFFF"><s:property
															value="#lc.user.userName" /></td>
													<td bgcolor="#FFFFFF"><s:property
															value="#lc.user.userPhone" /></td>
													<td bgcolor="#FFFFFF"><s:property
															value="#lc.companyDanger" /></td>
													<td bgcolor="#FFFFFF"><s:a
															href="fillForm?company.companyId=%{#lc.companyId}">填表</s:a>
										
												</tr>
											</s:iterator>
		 
      </table>

<div class="right-font08" style="font-size:13px">
	    
	    <div style="margin-left:0px;display:inline;padding-top:3px;">
         <font size="1">共<span id="pages" style="color:red"><s:property value="#request.pageBean.totalPage"/></span>页</font>&nbsp;
        <font size="1">共<font color="red"><s:property value="#request.pageBean.allRows"/></font>条记录</font>
        </div>
        
         <div style="float:right;margin-right:0px;display:inline">
        <s:if test="#request.pdpageBean.currentPage == 1">
            第一页&nbsp;&nbsp;&nbsp;尾页
        </s:if>
        
        <s:else>
            <a href="<s:property value="#request.action"/>.action?page=1">第一页</a>
            &nbsp;
            <a href="<s:property value="#request.action"/>.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
        </s:else>
        
        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
            <a href="<s:property value="#request.action"/>.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="<s:property value="#request.action"/>.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
        </s:if>
        
        <s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>

    <form id="goNum" action="<s:property value="#request.action"/>" style="display:inline" onsubmit="return validate();">
                                    跳转至
            <input id="pageNum" type="text"  name="page" class="right-textfield03" size="1">页
            <input type="button" onclick="gotoPage()" value="跳转">
        </form>
          </div>
       </div> 
</td>
        </tr>
      </table></td>
  </tr>
</table>


</body>
</html>
