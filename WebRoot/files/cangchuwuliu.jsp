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
</SCRIPT>

<body onload="on_load()">
<form action="saveForm" method="post">
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
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ1" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ1" value="0">否</td>
                    <td bgcolor="#FFFFFF">01、是否设立专兼职消防安全管理人员</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ2" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ2" value="0">否</td>
                    <td bgcolor="#FFFFFF">02、是否建立健全消防安全各项规章制度并落实责任</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ3" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ3" value="0">否</td>
                    <td bgcolor="#FFFFFF">03、是否制定消防安全应急预案并定期进行演练</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ4" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ4" value="0">否</form></td>
                    <td bgcolor="#FFFFFF">04、是否配备足够的消防设施和器材，并经常检查维修</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ5" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ5" value="0">否</td>
                    <td bgcolor="#FFFFFF">05、消防设施和器材是否被圈、占、埋、挡和挪用</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ6" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ6" value="0">否</td>
                    <td bgcolor="#FFFFFF">06、库区是否设置醒目的防火标志</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ7" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ7" value="0">否</td>
                    <td bgcolor="#FFFFFF">07、室内、外存的储物品是否分类、分堆、分组、分垛储存</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ8" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ8" value="0">否</td>
                    <td bgcolor="#FFFFFF">08、库房内物品是否保持五距：间距（1米）、墙（0.5米）、柱（0.3米）、灯（0.3米）、道（2米）</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ9" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ9" value="0">否</td>
                    <td bgcolor="#FFFFFF">09、库区线路敷设是否规范，库房内所有线路是否穿管（金属PVC）</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ10" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ10" value="0">否</td>
                    <td bgcolor="#FFFFFF">10、库房内是否使用碘钨灯和超过60W以上的白炽灯等高温照明灯具</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ11" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ11" value="0">否</td>
                    <td bgcolor="#FFFFFF">11、库房是否人走断电（有相对独立的断电装置）</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ12" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ12" value="0">否</td>
                    <td bgcolor="#FFFFFF">12、库房内是否使用电炉、电炉铁、电熨斗、电视机、电冰箱等电器</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ13" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ13" value="0">否</td>
                    <td bgcolor="#FFFFFF">13、闸刀等电器设备周围及线路下方是否堆放物品</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ14" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ14" value="0">否</td>
                    <td bgcolor="#FFFFFF">14、库区的消防车道和安全出口、疏散通道处是否堆放物品</td>

		</tr>

                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ15" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ15" value="0">否</td>
                    <td bgcolor="#FFFFFF">15、库房内是否违规设置办公室（确需设置时须征得当地公安消防监督机构同意）或留人住宿</td>

		</tr>

                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ16" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ16" value="0">否</td>
                    <td bgcolor="#FFFFFF">16、库房内是否使用明火或火炉取暖（库区内使用须经单位防火负责人批准并采取安全措施）</td>

		</tr>

                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ17" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ17" value="0">否</td>
                    <td bgcolor="#FFFFFF">17、库房内是否设置移动式照明灯具</td>

		</tr>

                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ18" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ18" value="0">否</td>
                    <td bgcolor="#FFFFFF">18、叉车等特种作业人员是否持证上岗</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ19" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ19" value="0">否</td>
                    <td bgcolor="#FFFFFF">19、是否定期对员工进行仓储业务和消防知识培训（新员工须经培训合格方可上岗）</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF"><input type="radio" name="checkList.listItem.itemQ20" value="1">是&nbsp&nbsp<input type="radio" name="checkList.listItem.itemQ20" value="0">否</td>
                    <td bgcolor="#FFFFFF">20、库区内是否非法存储油漆、烟花爆竹等易燃易爆危险物品、易燃液体、气体</td>

		</tr>
                  <tr>
				  
                    <td height="20" bgcolor="#FFFFFF">其他备注</td>
                    <td bgcolor="#FFFFFF">21、存在的其他安全隐患或非法违规行为：<input name="checkList.listItem.itemNote" type="text" style="border:0px; border-bottom:#000 thin solid" /></td>

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
				  
	       <td width="50%"  bgcolor="#EEEEEE">被检查单位现场负责人（签字：<input type="text" style="border:0px; border-bottom:#000 thin solid; background-color:inherit" /></td>
                    <td width="50%"  bgcolor="#EEEEEE">检查人员（签字）：<input type="text" style="border:0px; border-bottom:#000 thin solid; background-color:inherit" /></td>

	    </tr>
	    <tr>
                    <td width="6%" align="center" bgcolor="#EEEEEE"></td>
                    <td width="6%" align="right" bgcolor="#EEEEEE">
                    <script type="text/javascript">getdate()</script>
                    
                    </td>
	    </tr>
                 
                </table>

<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13"  bgcolor="#EEEEEE"class="title"> 办事处现场开展安全知识教育培训情况： &nbsp;</td>
                    </tr>
                  <tr>
				  
	       <td align="left" bgcolor="#EEEEEE">已对现场从业人员进行了基础的消防安全知识培训（包括：检查消除火灾隐患的能力、组织扑救初起火灾的能力、组织人员疏散逃生的能力、消防宣传教育培训的能力；教育员工熟悉本单位消防安全标志、疏散通道、安全出口，掌握疏散程序、逃生技能；灭火器的操作使用方法）。 
<br>现场受教育培训人员（签字）：<input type="text" style="border:0px; border-bottom:#000 thin solid; background-color:inherit" /></td>


	    </tr>
	    <tr>
                    <td width="6%" align="right" bgcolor="#EEEEEE"> <script type="text/javascript">getdate()</script></td>
                 
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
      <div style="float:right;margin-right:210px">
      <input style="margin-right:50px" type="submit" value="提交"/><input onclick="window.location='uncheckedCompany.action'" type="button" value="取消">
      </div>
      </form>
</body>
</html>
