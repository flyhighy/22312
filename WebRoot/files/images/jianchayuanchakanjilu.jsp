<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 by www.www.777moban.com</title>
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

<body onload="on_load()">
<form name="fom" id="fom" method="post" action="">
<table id="mainpage" width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="62" background="../images/nav04.gif">
          
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newfont03">
		  <tr>
			<td width="21"><img src="../images/ico07.gif" width="20" height="18" /></td>
			<td width="330">查看企业：

              危险等级&nbsp; <select>
   <option value ="qwixian">所有</option>              
  <option value ="red">红</option>
  <option value ="yellow">黄</option>
  <option value="green">绿</option>
 
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
				  
	       <td width="10%" align="center" bgcolor="#EEEEEE">企业工商号</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">企业名称</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">所属部门</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">危险等级</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">街道办</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">街道</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">负责人名称</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">电话</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">是否合格</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">情况明细</a>

                  </tr>
                  <tr align="center">
				  
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">***公司</td>
                    <td bgcolor="#FFFFFF">**部</td>
                    <td bgcolor="#FFFFFF">红/黄/蓝</td>
                    <td bgcolor="#FFFFFF">***街道办</td>
                    <td bgcolor="#FFFFFF">**街道</td>
                    <td bgcolor="#FFFFFF">**</td>
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">是/否</td>
	       <td bgcolor="#FFFFFF"><a href="biaogexijie.jsp">表格细节</a>

		</tr>
		 <tr align="center">
				  
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">***公司</td>
                    <td bgcolor="#FFFFFF">**部</td>
                    <td bgcolor="#FFFFFF">红/黄/蓝</td>
                    <td bgcolor="#FFFFFF">***街道办</td>
                    <td bgcolor="#FFFFFF">**街道</td>
                    <td bgcolor="#FFFFFF">**</td>
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">是/否</td>
	       <td bgcolor="#FFFFFF"><a href="biaogexijie.jsp">表格细节</a>

		</tr>
		<tr align="center">
				  
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">***公司</td>
                    <td bgcolor="#FFFFFF">**部</td>
                    <td bgcolor="#FFFFFF">红/黄/蓝</td>
                    <td bgcolor="#FFFFFF">***街道办</td>
                    <td bgcolor="#FFFFFF">**街道</td>
                    <td bgcolor="#FFFFFF">**</td>
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">是/否</td>
	       <td bgcolor="#FFFFFF"><a href="biaogexijie.jsp">表格细节</a>

		</tr>
		<tr align="center">
				  
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">***公司</td>
                    <td bgcolor="#FFFFFF">**部</td>
                    <td bgcolor="#FFFFFF">红/黄/蓝</td>
                    <td bgcolor="#FFFFFF">***街道办</td>
                    <td bgcolor="#FFFFFF">**街道</td>
                    <td bgcolor="#FFFFFF">**</td>
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">是/否</td>
	       <td bgcolor="#FFFFFF"><a href="biaogexijie.jsp">表格细节</a>

		</tr>
		<tr align="center">
				   
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">***公司</td>
                    <td bgcolor="#FFFFFF">**部</td>
                    <td bgcolor="#FFFFFF">红/黄/蓝</td>
                    <td bgcolor="#FFFFFF">***街道办</td>
                    <td bgcolor="#FFFFFF">**街道</td>
                    <td bgcolor="#FFFFFF">**</td>
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">是/否</td>
	       <td bgcolor="#FFFFFF"><a href="biaogexijie.jsp">表格细节</a>

		</tr>
		<tr align="center">
				 
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">***公司</td>
                    <td bgcolor="#FFFFFF">**部</td>
                    <td bgcolor="#FFFFFF">红/黄/蓝</td>
                    <td bgcolor="#FFFFFF">***街道办</td>
                    <td bgcolor="#FFFFFF">**街道</td>
                    <td bgcolor="#FFFFFF">**</td>
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">是/否</td>
	       <td bgcolor="#FFFFFF"><a href="biaogexijie.jsp">表格细节</a>

		</tr>
		<tr align="center">
				  
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">***公司</td>
                    <td bgcolor="#FFFFFF">**部</td>
                    <td bgcolor="#FFFFFF">红/黄/蓝</td>
                    <td bgcolor="#FFFFFF">***街道办</td>
                    <td bgcolor="#FFFFFF">**街道</td>
                    <td bgcolor="#FFFFFF">**</td>
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">是/否</td>
	       <td bgcolor="#FFFFFF"><a href="biaogexijie.jsp">表格细节</a>

		</tr>
		<tr align="center">
				   
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">***公司</td>
                    <td bgcolor="#FFFFFF">**部</td>
                    <td bgcolor="#FFFFFF">红/黄/蓝</td>
                    <td bgcolor="#FFFFFF">***街道办</td>
                    <td bgcolor="#FFFFFF">**街道</td>
                    <td bgcolor="#FFFFFF">**</td>
                    <td bgcolor="#FFFFFF">1234567</td>
                    <td bgcolor="#FFFFFF">是/否</td>
	       <td bgcolor="#FFFFFF"><a href="biaogexijie.jsp">表格细节</a>

		</tr>
                </table></td>
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
                <td width="50%">共 <span class="right-text09">5</span> 页 | 第 <span class="right-text09">1</span> 页</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>

<div id="loadingmsg" style="width:100px; height:18px; top:0px; display:none;">
	<img src="file:///F|/项目管理相关资料/项目管理系统页面/images/loadon.gif" />
</div>

</body>
</html>
