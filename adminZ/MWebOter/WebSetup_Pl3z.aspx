<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_Pl3z, App_Web_nwkt-b7n" enableEventValidation="false" %>

<%@ Register Src="WebSetup_Pl_MenuToolsBar.ascx" TagName="WebSetup_Pl_MenuToolsBar" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>pl</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/WebSetup_Pl.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/AutoRefreshShow.js"></script>

    <script language="JavaScript" type="text/javascript">
        var msGT = "<% =Request.QueryString["gt"] %>";
        function onLoad()
        {
              var ltype ="<% =Request.QueryString["ltype"] %>";
            if (ltype == "")
             {
                document.getElementById('ltype').value ="LA";
              }
              else
              {
                  document.getElementById('ltype').value =ltype;
              }
              
              var pct ="<% =Request.QueryString["pct"] %>";
              if (pct == "")
             {
                document.getElementById('pct').value =0;
              }
              else
              {
                  document.getElementById('pct').value =pct;
                 }
            var lclassid = "<% =Request.QueryString["classid"] %>";
            var lReftime ="<% =Request.QueryString["stoptime"] %>";
            AutoRefShow(lReftime,'gt='+ msGT +'&ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value  + '&classid=' + 
                lclassid  + '&');
        }
        function TmSetup(tm)
        {
            document.getElementById('TMNo').value  =tm;
            return false;
        }
        function HrefLj(tm)
        {
            location=tm + '?gt='+ msGT +'&ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=-1';
        }
        function ChageShow()
        {
            var lclassid = "<% =Request.QueryString["classid"] %>";
            location = '?gt='+ msGT +'&ltype=' + document.getElementById('ltype').value + '&pct=' + 
                document.getElementById('pct').value  + '&classid=' + 
                lclassid + '&stoptime=' + document.getElementById('retime').value;
            
        }
        function ChageClassid(lClassid)
        {
            location = '?gt='+ msGT +'&ltype=' + document.getElementById('ltype').value + '&pct=' + 
                document.getElementById('pct').value  + '&classid=' + 
                lClassid + '&stoptime=' + document.getElementById('retime').value;
        }
        function SelectBall(vTmno){
             if(isNaN(document.getElementById("TmPlValueA").value) == true || document.getElementById("TmPlValueA").value == '' )
             {
                document.getElementById("TmPlValueA").focus();
                alert("设置的赔率!!");
                return ;
            }
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = arrNum[i];
	            
	            SelectTmOk("TxtEditPl" + tmno.toString(),Number(document.getElementById("TmPlValueA").value));
	            
            }
        }
        function SelectBallType(vTmno){
             if(isNaN(document.getElementById("TmPlValue").value) == true || document.getElementById("TmPlValue").value == '' )
             {
                document.getElementById("TmPlValue").focus();
                alert("设置的赔率!!");
                return ;
            }
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = Number(arrNum[i]);
	            
	            SelectTmOk("TxtEditPl" + tmno.toString(),Number(document.getElementById("TmPlValue").value));
	            
            }
        }
        
        function SelectAll(){
             if(isNaN(document.getElementById("TmPlValue").value) == true || document.getElementById("TmPlValue").value == '' )
             {
                document.getElementById("TmPlValue").focus();
                alert("设置的赔率!!");
                return ;
            }
 
            for (var i = 0 ; i <= 219; i++){

	            SelectTmOk("TxtEditPl" + i.toString(),Number(document.getElementById("TmPlValue").value));
	            
            }
        }
        function SelectTmOk(vSelectTm,vTmPl)
        {//选择指定的号码
                document.getElementById(vSelectTm).value=vTmPl;
                
        }    
        function SubData()
        {
            document.getElementById('WagerTxt').value = "" ;
            var lWagerStr= "",lSetValue = ""; 
            lSetValue = GetValueIndex( "<% Response.Write(mclassid); %>",219); 
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ; 
                
            document.getElementById('WagerTxt').value = lWagerStr ;
            return true;
        }
        
        function SetValue(vClass,vNoValue)//SubData()//提交数据,进行组合检查
        {
            var arrNo = vNoValue.split(".");

            var lquerstr = "";
            var ltmsumje = 0;
            

            for (var i = 0 ; i < (arrNo.length ); i++){
               if (arrNo[i] != ""){
	                var  lSelectNo ="TxtEditPl" + arrNo[i];
	                if (isNaN(document.getElementById(lSelectNo).value) == false && document.getElementById(lSelectNo).value != ''){

                        lquerstr = lquerstr +  arrNo[i] + "$" + String( document.getElementById(lSelectNo).value) + ";"; 
	                }

                    if (document.getElementById(lSelectNo).value=="A" || document.getElementById(lSelectNo).value=="B" || document.getElementById(lSelectNo).value=="a" || document.getElementById(lSelectNo).value=="b"){
                        var  lLabNo ="Lab"+ arrNo[i];
                        lquerstr = lquerstr +  arrNo[i] + "$" + String( document.getElementById(lSelectNo).value) + document.getElementById(lLabNo).innerHTML + ";";

                    }
	            }
            }
            
            if (lquerstr == "" ){
                return "";
             }
             else{ 
                return vClass + "@" +  lquerstr + "#";
            }
        } 
        function GetValueIndex(vClass,vNoLeng)//SubData()//提交数据,进行组合检查
        {
            var lquerstr = "";
            var ltmsumje = 0; 
            for (var i = 0 ; i <= (vNoLeng ); i++){
 
                var  lSelectNo ="TxtEditPl" + String(i);
                if (isNaN(document.getElementById(lSelectNo).value) == false && document.getElementById(lSelectNo).value != ''){

                    lquerstr = lquerstr +  String(i) + "$" + String( document.getElementById(lSelectNo).value) + ";"; 
                }

                if (document.getElementById(lSelectNo).value=="A" || document.getElementById(lSelectNo).value=="B" || document.getElementById(lSelectNo).value=="a" || document.getElementById(lSelectNo).value=="b"){
                    var  lLabNo ="Lab"+ arrNo[i];
                    lquerstr = lquerstr +  String(i) + "$" + String( document.getElementById(lSelectNo).value) + document.getElementById(lLabNo).innerHTML + ";";
                }
            }
            
            if (lquerstr == "" ){
                return "";
             }
             else{ 
                return vClass + "@" +  lquerstr + "#";
            }
        } 
        
         function addition(vControlCaption,vValue)
        {
	        var  lSelectNo ="TxtEditPl" + vControlCaption;

	        if (Number(document.getElementById(lSelectNo).value)!=0){
	        
	            document.getElementById(lSelectNo).value = Math.round((Number(document.getElementById(lSelectNo).value) + vValue)*100)/100;
	        }else{
	            var lLabPl ="Lab" + vControlCaption;
	            document.getElementById(lSelectNo).value = Math.round((Number(document.getElementById(lLabPl).innerHTML) + vValue)*100)/100;
	        }
        } 
    </script>

</head>
<body onload="onLoad();" text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td class="mem_index_ctrl_line">
                </td>
            </tr>
            <tr>
                <td class="mem_index_ctrl_bg">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td>
                                &nbsp;&nbsp;即时注单:
                                <select class="za_select" id="ltype" onchange="ChageShow();" name="ltype" runat="server">
                                    <option value="LA" selected>盘别 A</option>
                                    <option value="LB">盘别 B</option>
                                    <option value="LC">盘别 C</option>
                                    <option value="LD">盘别 D</option>
                                </select>
                                <select class="za_select" onchange="ChageShow();" name="pct" id="pct" runat="server">
                                    <option value="0" selected>全部</option>
                                    <option value="1">笔数</option>
                                    <option value="2">金额</option>
                                </select>
                                <a class="click_text" onclick="ChageShow();">刷新</a>:
                                <asp:Label ID="LabReftime" runat="server"></asp:Label>
                                <select class="za_select" id="retime" onchange="ChageShow();" name="retime" runat="server">
                                    <option value="-1" selected>不刷新</option>
                                    <option value="20">20 sec</option>
                                    <option value="40">40 sec</option>
                                    <option value="60">60 sec</option>
                                </select>
                                <uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="mem_index_ctrl_line">
                </td>
            </tr>
            <tr>
                <td class="mem_index_ctrl_space">
                </td>
            </tr>
            <tr class="mem_index_ctrl_Title">
                <td>
                    &nbsp;&nbsp;三字&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40">
                        时间</td>
                    <td width="30">
                        期数</td>
                    <td width="29">
                        号码</td>
                    <td width="25">
                        赔率</td>
                    <td>
                        注单</td>
                    <td width="29">
                        号码</td>
                    <td width="25">
                        赔率</td>
                    <td>
                        注单</td>
                    <td width="29">
                        号码</td>
                    <td width="25">
                        赔率</td>
                    <td>
                        注单</td>
                    <td width="29">
                        号码</td>
                    <td width="25">
                        赔率</td>
                    <td>
                        注单</td>
                    <td width="29">
                        号码</td>
                    <td width="25">
                        赔率</td>
                    <td>
                        注单</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td rowspan="44" id="Labtmwindate" runat="server">
                        &nbsp;04-17<br>
                        20:35&nbsp;</td>
                    <td align="middle" rowspan="44" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title_Num">
                        000</td>
                    <td id="TS0" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab0" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL0" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        001</td>
                    <td id="TS1" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab1" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL1" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        002</td>
                    <td id="TS2" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab2" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL2" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        003</td>
                    <td id="TS3" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab3" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        004</td>
                    <td id="TS4" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab4" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL4" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        005</td>
                    <td id="TS5" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab5" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        006</td>
                    <td id="TS6" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab6" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL6" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        007</td>
                    <td id="TS7" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab7" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL7" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        008</td>
                    <td id="TS8" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab8" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL8" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        009</td>
                    <td id="TS9" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab9" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL9" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        011</td>
                    <td id="TS10" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab10" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL10" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        012</td>
                    <td id="TS11" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab11" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL11" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        013</td>
                    <td id="TS12" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab12" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL12" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        014</td>
                    <td id="TS13" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab13" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL13" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        015</td>
                    <td id="TS14" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab14" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL14" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        016</td>
                    <td id="TS15" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab15" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL15" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        017</td>
                    <td id="TS16" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab16" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL16" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        018</td>
                    <td id="TS17" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab17" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL17" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        019</td>
                    <td id="TS18" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab18" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL18" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        022</td>
                    <td id="TS19" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab19" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL19" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num" style="height: 25px">
                        023</td>
                    <td id="TS20" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab20" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL20" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num" style="height: 25px">
                        024</td>
                    <td id="TS21" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab21" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL21" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num" style="height: 25px">
                        025</td>
                    <td id="TS22" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab22" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL22" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num" style="height: 25px">
                        026</td>
                    <td id="TS23" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab23" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL23" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num" style="height: 25px">
                        027</td>
                    <td id="TS24" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab24" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL24" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        028</td>
                    <td id="TS25" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab25" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL25" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        029</td>
                    <td id="TS26" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab26" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL26" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        033</td>
                    <td id="TS27" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab27" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL27" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        034</td>
                    <td id="TS28" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab28" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL28" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        035</td>
                    <td id="TS29" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab29" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL29" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        036</td>
                    <td id="TS30" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab30" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL30" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        037</td>
                    <td id="TS31" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab31" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL31" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        038</td>
                    <td id="TS32" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab32" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL32" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        039</td>
                    <td id="TS33" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab33" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL33" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        044</td>
                    <td id="TS34" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab34" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL34" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        045</td>
                    <td id="TS35" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab35" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL35" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        046</td>
                    <td id="TS36" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab36" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL36" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        047</td>
                    <td id="TS37" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab37" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL37" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        048</td>
                    <td id="TS38" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab38" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL38" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        049</td>
                    <td id="TS39" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab39" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL39" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        055</td>
                    <td id="TS40" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab40" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL40" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        056</td>
                    <td id="TS41" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab41" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL41" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        057</td>
                    <td id="TS42" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab42" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL42" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        058</td>
                    <td id="TS43" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab43" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL43" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        059</td>
                    <td id="TS44" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab44" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL44" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        066</td>
                    <td id="TS45" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab45" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL45" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        067</td>
                    <td id="TS46" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab46" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL46" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        068</td>
                    <td id="TS47" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab47" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL47" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        069</td>
                    <td id="TS48" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab48" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL48" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        077</td>
                    <td id="TS49" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab49" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL49" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        078</td>
                    <td id="TS50" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab50" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL50" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        079</td>
                    <td id="TS51" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab51" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL51" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        088</td>
                    <td id="TS52" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab52" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL52" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        089</td>
                    <td id="TS53" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab53" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL53" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        099</td>
                    <td id="TS54" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab54" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL54" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        111</td>
                    <td id="TS55" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab55" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL55" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        112</td>
                    <td id="TS56" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab56" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL56" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        113</td>
                    <td id="TS57" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab57" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL57" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        114</td>
                    <td id="TS58" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab58" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL58" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        115</td>
                    <td id="TS59" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab59" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL59" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        116</td>
                    <td id="TS60" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab60" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL60" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        117</td>
                    <td id="TS61" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab61" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL61" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        118</td>
                    <td id="TS62" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab62" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL62" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        119</td>
                    <td id="TS63" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab63" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL63" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        122</td>
                    <td id="TS64" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab64" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL64" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        123</td>
                    <td id="TS65" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab65" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL65" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        124</td>
                    <td id="TS66" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab66" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL66" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        125</td>
                    <td id="TS67" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab67" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL67" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        126</td>
                    <td id="TS68" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab68" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL68" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        127</td>
                    <td id="TS69" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab69" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL69" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        128</td>
                    <td id="TS70" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab70" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL70" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        129</td>
                    <td id="TS71" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab71" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL71" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        133</td>
                    <td id="TS72" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab72" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL72" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        134</td>
                    <td id="TS73" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab73" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL73" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        135</td>
                    <td id="TS74" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab74" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL74" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        136</td>
                    <td id="TS75" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab75" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL75" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        137</td>
                    <td id="TS76" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab76" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL76" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        138</td>
                    <td id="TS77" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab77" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL77" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        139</td>
                    <td id="TS78" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab78" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL78" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        144</td>
                    <td id="TS79" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab79" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL79" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        145</td>
                    <td id="TS80" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab80" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL80" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        146</td>
                    <td id="TS81" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab81" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL81" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        147</td>
                    <td id="TS82" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab82" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL82" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        148</td>
                    <td id="TS83" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab83" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL83" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        149</td>
                    <td id="TS84" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab84" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL84" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num" style="height: 25px">
                        155</td>
                    <td id="TS85" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab85" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL85" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num" style="height: 25px">
                        156</td>
                    <td id="TS86" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab86" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL86" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num" style="height: 25px">
                        157</td>
                    <td id="TS87" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab87" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL87" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num" style="height: 25px">
                        158</td>
                    <td id="TS88" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab88" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL88" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num" style="height: 25px">
                        159</td>
                    <td id="TS89" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                        <asp:Label ID="Lab89" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle" style="height: 25px">
                        <asp:HyperLink ID="HL89" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        166</td>
                    <td id="TS90" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab90" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL90" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        167</td>
                    <td id="TS91" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab91" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL91" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        168</td>
                    <td id="TS92" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab92" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL92" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        169</td>
                    <td id="TS93" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab93" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL93" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        177</td>
                    <td id="TS94" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab94" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL94" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        178</td>
                    <td id="TS95" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab95" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL95" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        179</td>
                    <td id="TS96" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab96" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL96" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        188</td>
                    <td id="TS97" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab97" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL97" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        189</td>
                    <td id="TS98" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab98" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL98" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        199</td>
                    <td id="TS99" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab99" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL99" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        222</td>
                    <td id="TS100" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab100" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL100" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        223</td>
                    <td id="TS101" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab101" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL101" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        224</td>
                    <td id="TS102" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab102" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL102" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        225</td>
                    <td id="TS103" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab103" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL103" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        226</td>
                    <td id="TS104" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab104" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL104" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        227</td>
                    <td id="TS105" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab105" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL105" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        228</td>
                    <td id="TS106" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab106" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL106" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        229</td>
                    <td id="TS107" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab107" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL107" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        233</td>
                    <td id="TS108" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab108" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL108" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        234</td>
                    <td id="TS109" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab109" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL109" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        235</td>
                    <td id="TS110" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab110" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL110" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        236</td>
                    <td id="TS111" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab111" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL111" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        237</td>
                    <td id="TS112" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab112" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL112" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        238</td>
                    <td id="TS113" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab113" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL113" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        239</td>
                    <td id="TS114" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab114" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL114" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        244</td>
                    <td id="TS115" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab115" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL115" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        245</td>
                    <td id="TS116" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab116" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL116" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        246</td>
                    <td id="TS117" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab117" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL117" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        247</td>
                    <td id="TS118" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab118" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL118" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        248</td>
                    <td id="TS119" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab119" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL119" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        249</td>
                    <td id="TS120" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab120" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL120" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        255</td>
                    <td id="TS121" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab121" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL121" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        256</td>
                    <td id="TS122" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab122" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL122" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        257</td>
                    <td id="TS123" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab123" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL123" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        258</td>
                    <td id="TS124" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab124" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL124" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        259</td>
                    <td id="TS125" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab125" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL125" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        266</td>
                    <td id="TS126" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab126" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL126" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        267</td>
                    <td id="TS127" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab127" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL127" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        268</td>
                    <td id="TS128" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab128" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL128" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        269</td>
                    <td id="TS129" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab129" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL129" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        277</td>
                    <td id="TS130" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab130" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL130" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        278</td>
                    <td id="TS131" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab131" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL131" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        279</td>
                    <td id="TS132" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab132" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL132" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        288</td>
                    <td id="TS133" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab133" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL133" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        289</td>
                    <td id="TS134" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab134" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL134" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        299</td>
                    <td id="TS135" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab135" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL135" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        333</td>
                    <td id="TS136" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab136" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL136" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        334</td>
                    <td id="TS137" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab137" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL137" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        335</td>
                    <td id="TS138" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab138" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL138" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        336</td>
                    <td id="TS139" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab139" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL139" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        337</td>
                    <td id="TS140" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab140" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL140" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        338</td>
                    <td id="TS141" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab141" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL141" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        339</td>
                    <td id="TS142" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab142" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL142" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        344</td>
                    <td id="TS143" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab143" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL143" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        345</td>
                    <td id="TS144" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab144" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL144" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        346</td>
                    <td id="TS145" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab145" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL145" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        347</td>
                    <td id="TS146" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab146" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL146" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        348</td>
                    <td id="TS147" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab147" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL147" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        349</td>
                    <td id="TS148" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab148" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL148" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        355</td>
                    <td id="TS149" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab149" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL149" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        356</td>
                    <td id="TS150" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab150" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL150" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        357</td>
                    <td id="TS151" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab151" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL151" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        358</td>
                    <td id="TS152" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab152" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL152" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        359</td>
                    <td id="TS153" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab153" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL153" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        366</td>
                    <td id="TS154" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab154" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL154" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        367</td>
                    <td id="TS155" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab155" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL155" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        368</td>
                    <td id="TS156" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab156" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL156" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        369</td>
                    <td id="TS157" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab157" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL157" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        377</td>
                    <td id="TS158" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab158" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL158" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        378</td>
                    <td id="TS159" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab159" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL159" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        379</td>
                    <td id="TS160" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab160" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL160" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        388</td>
                    <td id="TS161" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab161" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL161" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        389</td>
                    <td id="TS162" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab162" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL162" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        399</td>
                    <td id="TS163" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab163" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL163" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        444</td>
                    <td id="TS164" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab164" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL164" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        445</td>
                    <td id="TS165" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab165" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL165" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        446</td>
                    <td id="TS166" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab166" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL166" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        447</td>
                    <td id="TS167" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab167" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL167" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        448</td>
                    <td id="TS168" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab168" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL168" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        449</td>
                    <td id="TS169" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab169" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL169" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        455</td>
                    <td id="TS170" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab170" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL170" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        456</td>
                    <td id="TS171" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab171" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL171" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        457</td>
                    <td id="TS172" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab172" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL172" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        458</td>
                    <td id="TS173" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab173" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL173" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        459</td>
                    <td id="TS174" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab174" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL174" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        466</td>
                    <td id="TS175" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab175" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL175" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        467</td>
                    <td id="TS176" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab176" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL176" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        468</td>
                    <td id="TS177" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab177" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL177" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        469</td>
                    <td id="TS178" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab178" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL178" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        477</td>
                    <td id="TS179" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab179" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL179" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        478</td>
                    <td id="TS180" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab180" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL180" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        479</td>
                    <td id="TS181" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab181" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL181" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        488</td>
                    <td id="TS182" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab182" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL182" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        489</td>
                    <td id="TS183" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab183" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL183" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        499</td>
                    <td id="TS184" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab184" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL184" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        555</td>
                    <td id="TS185" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab185" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL185" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        556</td>
                    <td id="TS186" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab186" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL186" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        557</td>
                    <td id="TS187" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab187" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL187" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        558</td>
                    <td id="TS188" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab188" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL188" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        559</td>
                    <td id="TS189" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab189" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL189" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        566</td>
                    <td id="TS190" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab190" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL190" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        567</td>
                    <td id="TS191" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab191" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL191" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        568</td>
                    <td id="TS192" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab192" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL192" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        569</td>
                    <td id="TS193" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab193" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL193" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        577</td>
                    <td id="TS194" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab194" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL194" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        578</td>
                    <td id="TS195" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab195" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL195" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        579</td>
                    <td id="TS196" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab196" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL196" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        588</td>
                    <td id="TS197" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab197" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL197" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        589</td>
                    <td id="TS198" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab198" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL198" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        599</td>
                    <td id="TS199" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab199" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL199" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        666</td>
                    <td id="TS200" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab200" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL200" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        667</td>
                    <td id="TS201" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab201" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL201" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        668</td>
                    <td id="TS202" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab202" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL202" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        669</td>
                    <td id="TS203" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab203" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL203" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        677</td>
                    <td id="TS204" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab204" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL204" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        678</td>
                    <td id="TS205" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab205" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL205" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        679</td>
                    <td id="TS206" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab206" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL206" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        688</td>
                    <td id="TS207" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab207" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL207" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        689</td>
                    <td id="TS208" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab208" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL208" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        699</td>
                    <td id="TS209" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab209" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL209" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        777</td>
                    <td id="TS210" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab210" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL210" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        778</td>
                    <td id="TS211" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab211" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL211" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        779</td>
                    <td id="TS212" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab212" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL212" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        788</td>
                    <td id="TS213" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab213" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL213" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        789</td>
                    <td id="TS214" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab214" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL214" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        799</td>
                    <td id="TS215" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab215" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL215" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        888</td>
                    <td id="TS216" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab216" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL216" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        889</td>
                    <td id="TS217" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab217" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL217" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        899</td>
                    <td id="TS218" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab218" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL218" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        999</td>
                    <td id="TS219" runat="server" class="show_Td_pl" align="right">
                        <asp:Label ID="Lab219" runat="server" class="show_Pl"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL219" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffcc" colspan="17">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0" id="TSetupPl" runat="server">
                            <tr>
                                <td bgcolor="#ffffcc" style="width: 105px">
                                </td>
                                <td bgcolor="#ffffcc" style="height: 24px">
                                    <input id="WagerTxt" runat="server" maxlength="0" readonly="readonly" type="text" style="visibility: hidden" />
                                </td>
                                <td bgcolor="#ffffcc" colspan="2" style="height: 24px; width: 96px;">
                                    <input type="submit" name="Submit" value="确定" id="SubTmpl" runat="server" onclick="return SubData();" onserverclick="ButOk_Click" />
                                    <input type="reset" name="Submit2" value="清除" /></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFCC" style="width: 105px">
                                    赔率
                                    <input type="text" id="TmPlValue" runat="server" maxlength="8" size="4" /></td>
                                <td bgcolor="#FFFFCC" id="TmNoSetup" runat="server" style="height: 24px">
                                    <table>
                                        <tr>
                                            <td class="list_cen" colspan="5" style="text-align: center">
                                                <strong><span style="font-size: 11pt; color: #ff0033">
                                                    <asp:HyperLink ID="HLall" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectAll()">全部</asp:HyperLink>
                                                </span></strong>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td colspan="2" bgcolor="#FFFFCC" style="height: 24px; width: 96px;">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
