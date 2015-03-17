<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统</title>
<style type="text/css">
table{

}

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
.title{
	font-weight:bold;
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

function getdate(){
	var d=new Date();
	y=d.getFullYear();
	m=d.getMonth()+1;
	day=d.getDate();
	document.write(y+"-"+m+"-"+day);
	}
	
function setInput(){
	var inputs=document.getElementsByTagName("input");
	for(var i=0;i<inputs.length;i++)
	{
	if(inputs[i].type=="radio")
	inputs[i].disabled=true;  
	}
}
window.setTimeout(setInput,30);
</SCRIPT>

<body onload="on_load()">
<table id="mainpage" width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30">
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
</td>
</tr>
    <td><table id="subtree1" style="DISPLAY: ; margin-left:40px;" width="80%" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp; 企业信息列表 &nbsp;</td>
                    </tr>
                    <tr>
				    <tr>
				    <s:hidden name="checkList.company.companyId" value="%{company.companyId}"></s:hidden>
	                <td width="10%" align="center" bgcolor="#EEEEEE">被检查单位</td>
                    <td width="45%"  align="center" bgcolor="#EEEEEE"><s:property value="%{company.companyName}"/></td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">地址</td>
                    <td  align="center" bgcolor="#EEEEEE"><s:property value="%{company.street.streetName}"/></td>
                    </tr>
                    <tr>
                
                    <td width="6%" align="center" bgcolor="#EEEEEE">企业负责人</td>
           
  
                    <td  width="45%" align="center" bgcolor="#EEEEEE">
                    <s:property value="%{company.user.userName}"/>
                    <span style="padding:6px;border-left:thin solid;border-right:thin solid;margin-left:90px;margin-right:40px;">          
                    职务
                    </span>
                    <s:property value="%{company.companyPosition}"/>
                   </td>
      
                    
                    <td width="6%" align="center" bgcolor="#EEEEEE">联系电话</td>
                    <td  align="center" bgcolor="#EEEEEE"><s:property value="%{company.user.userPhone}"/></td>          
                    </tr>
                    
                    <tr>
                    <td width="6%" align="center" bgcolor="#EEEEEE">存储物品类别</td>
                    <td  align="center" bgcolor="#EEEEEE"><s:property value="%{company.subdivision.subdivisionName}"/></td>
                    <td width="6%" align="center" bgcolor="#EEEEEE">占地面积</td>
                    <td  align="center" bgcolor="#EEEEEE"><s:property value="%{company.companyArea}"/></td>
                    </tr>

                  </tr>

                 
                </table>


		<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp; 检查情况详细信息列表 &nbsp;</td>
                    </tr>
                  <tr>
				  
	       <td width="15%"  bgcolor="#EEEEEE">检查情况</td>
                    <td  bgcolor="#EEEEEE">细节检查</td>

                  </tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ1}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">01、建筑施工手续是否齐全</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ2}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">02、是否设立安全生产管理机构或配备专（兼）职安全生产管理人员</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ3}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">03、是否建立健全安全生产各项规章制度并落实责任</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ4}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">04、是否制定安全生产应急预案并定期进行演练</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ5}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">05、进出口大门内是否设置“五牌一图”：工程概况牌、管理人员名单及监督电话牌、消防保卫牌、安全生产牌、文明施工牌、施工现场平面图</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ6}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">06、是否配备足够的消防设施和器材，并经常检查维修（现有灭火器   个，其他    ）</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ7}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">07、消防设施和器材是否被圈、占、埋、挡和挪用</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ8}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">08、施工现场是否四周封闭，围挡高度符合施工规范</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ9}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">09、未竣工建筑物内是否设置员工宿舍</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ10}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">10、是否乱拉乱接和使用花线、排插</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ11}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">11、电箱是否安门、加锁、防雨；一机一闸、一漏一箱</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ12}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">12、是否设置相应数量的安全警示标志</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ13}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">13、基坑临边是否采取防护措施，基坑设置排水沟</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ14}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">14、进入施工现场人员是否佩戴安全帽，架子工等高处作业人员是否使用安全带</td>

		</tr>

                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ15}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">15、脚手架外层从上到下是否设置安全网</td>

		</tr>

                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ16}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">16、人行通道口、预留洞口、楼梯口、电梯井口和阳台、楼板、屋面、楼梯等临边按照规定进行安全防护</td>

		</tr>

                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ17}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">17、消防车道和安全出口、疏散通道是否畅通</td>

		</tr>

                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ18}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">18、禁烟火区是否有吸烟或动用明火现象</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ19}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">19、电工、焊工、电梯操作工、塔吊等特种作业人员是否持证上岗</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ20}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">20、是否经常性或定期开展安全生产检查、隐患整改并有工作记录</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><s:radio  list="%{#{'1':'是','0':'否'}}" value="%{checkList.listItem.itemQ21}" theme="simple"></s:radio></td>
                    <td bgcolor="#FFFFFF">21、是否定期对员工进行安全生产知识培训（新员工须经培训合格方可上岗）并有记录</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF">其他备注</td>
                    <td bgcolor="#FFFFFF">22、存在的其他安全隐患或非法违规行为：<s:property value="%{checkList.listItem.itemNote}" /></td>

		</tr>

                </table>

<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13" bgcolor="#EEEEEE" class="title" text-align="left">  针对以上情况要求你标出单位存在的隐患或违规行为 &nbsp;</td>
                    </tr>
                  <tr>
				  
	       <td width="6%"  bgcolor="#EEEEEE">1、现场整改（第<input type="text" style="border:0px; border-bottom:#000 thin solid; background-color:inherit" />条）</td>
                    <td width="6%"  bgcolor="#EEEEEE">2、限<input name="days" type="text" style="border:0px; border-bottom:#000 thin solid;background-color:inherit; width:20px" />日内整改完毕（第<input type="text" style="border:0px; border-bottom:#000 thin solid;background-color:inherit"" />条）</td>
	    </tr>

	    <tr>
	       <td width="6%"  bgcolor="#EEEEEE">3、立即停业整改<input name="result" type="checkbox" /></td>
                    <td width="6%"  bgcolor="#EEEEEE">4、进一步加强安全管理、 防范）<input type="checkbox" /></td>

                  </tr>
                 
                </table>

		<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13" " bgcolor="#EEEEEE"class="title">已对应上述存在的安全隐患或违法行为下发整改通知 &nbsp;</td>
                    </tr>
                  <tr>
				  
	       <td width="50%"  bgcolor="#EEEEEE">被检查单位现场负责人（签字）：<s:property value="%{company.companyCustodian}"/></td>
                    <td width="50%"  bgcolor="#EEEEEE">检查人员（签字）：<s:property value="%{company.street.user.userName}"/></td>

	    </tr>
	    <tr>
                    <td width="6%" align="center" bgcolor="#EEEEEE"></td>
                    <td width="6%" align="right" bgcolor="#EEEEEE">
                     <s:date name='%{checkList.listTime}' format='yyyy-MM-dd'/>
                    
                    </td>
	    </tr>
                 
                </table>

<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13"  bgcolor="#EEEEEE"class="title"> 办事处现场开展安全知识教育培训情况： &nbsp;</td>
                    </tr>
                  <tr>
				  
	       <td align="left" bgcolor="#EEEEEE">已对现场从业人员进行了基础的消防安全知识培训（包括：检查消除火灾隐患的能力、组织扑救初起火灾的能力、组织人员疏散逃生的能力、消防宣传教育培训的能力；教育员工熟悉本单位消防安全标志、疏散通道、安全出口，掌握疏散程序、逃生技能；灭火器的操作使用方法）。 
<br>现场受教育培训人员（签字）：<s:property value="%{company.companyCustodian}"/></td>


	    </tr>
	    <tr>
                    <td width="6%" align="right" bgcolor="#EEEEEE"> <s:date name='%{checkList.listTime}' format='yyyy-MM-dd'/></td>
                 
                </table>

		<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13"  bgcolor="#EEEEEE"class="title"> 复查情况： &nbsp;</td>
                    </tr>
                  <tr>
				  
	       <td width="6%"  bgcolor="#EEEEEE">1、整改合格（第<input type="text" style="border:0px; border-bottom:#000 thin solid; background-color:inherit" />条） </td>
	       <td width="6%"  bgcolor="#EEEEEE">2、整改不合格（第<input type="text" style="border:0px; border-bottom:#000 thin solid; background-color:inherit" />条）</td>
		</tr>
		<tr>
	       <td width="6%"  bgcolor="#EEEEEE">3、未整改（第<input type="text" style="border:0px; border-bottom:#000 thin solid; background-color:inherit" />条）</td>
	       <td width="6%"  bgcolor="#EEEEEE"></td>
	    </tr>

                  <tr>
				  
	       <td width="6%" bgcolor="#EEEEEE">被检查单位现场负责人（签字）：<input type="text" style="border:0px; border-bottom:#000 thin solid; background-color:inherit" /></td>
                    <td width="6%"  bgcolor="#EEEEEE">检查人员（签字）：<input type="text" style="border:0px; border-bottom:#000 thin solid; background-color:inherit" /></td>

	    </tr>
	    <tr>
                    <td width="6%" align="center" bgcolor="#EEEEEE"></td>
                    <td width="6%" align="right" bgcolor="#EEEEEE">    年   月   日     </td>
                 
                </table>
       
            
		</td>
              </tr>
              
              
            </table></td>
        </tr>
         
      </table>
      
      </td>
        </tr>
       
      </table>
     
      </form>
</body>
</html>
