<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_Pl2z, App_Web_nwkt-b7n" enableEventValidation="false" %>

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
 
            for (var i = 0 ; i <= 54; i++){

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
            
            lSetValue = GetValueIndex( "<% Response.Write(mclassid); %>",54);
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ; 
                
            document.getElementById('WagerTxt').value = lWagerStr ;
            return true;
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
                                <a class="click_text" onclick="ChageShow();">刷新</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label>
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
                    &nbsp;&nbsp;二字&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
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
                    <td rowspan="11" id="Labtmwindate" runat="server">
                        &nbsp;04-17<br>
                        20:35&nbsp;</td>
                    <td align="middle" rowspan="11" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title_Num">
                        00</td>
                    <td id="TS0" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab0" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL0" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        01</td>
                    <td id="TS1" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab1" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL1" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        02</td>
                    <td id="TS2" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab2" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL2" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        03</td>
                    <td id="TS3" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab3" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        04</td>
                    <td id="TS4" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab4" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL4" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        05</td>
                    <td id="TS5" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab5" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        06</td>
                    <td id="TS6" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab6" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL6" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        07</td>
                    <td id="TS7" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab7" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL7" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        08</td>
                    <td id="TS8" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab8" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL8" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        09</td>
                    <td id="TS9" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab9" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL9" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        11</td>
                    <td id="TS10" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab10" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL10" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        12</td>
                    <td id="TS11" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab11" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL11" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        13</td>
                    <td id="TS12" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab12" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL12" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        14</td>
                    <td id="TS13" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab13" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL13" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        15</td>
                    <td id="TS14" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab14" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL14" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        16</td>
                    <td id="TS15" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab15" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL15" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        17</td>
                    <td id="TS16" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab16" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL16" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        18</td>
                    <td id="TS17" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab17" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL17" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        19</td>
                    <td id="TS18" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab18" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL18" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        22</td>
                    <td id="TS19" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab19" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL19" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        23</td>
                    <td id="TS20" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab20" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL20" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        24</td>
                    <td id="TS21" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab21" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL21" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        25</td>
                    <td id="TS22" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab22" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL22" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        26</td>
                    <td id="TS23" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab23" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL23" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        27</td>
                    <td id="TS24" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab24" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL24" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        28</td>
                    <td id="TS25" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab25" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL25" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        29</td>
                    <td id="TS26" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab26" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL26" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        33</td>
                    <td id="TS27" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab27" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL27" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        34</td>
                    <td id="TS28" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab28" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL28" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        35</td>
                    <td id="TS29" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab29" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL29" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        36</td>
                    <td id="TS30" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab30" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL30" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        37</td>
                    <td id="TS31" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab31" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL31" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        38</td>
                    <td id="TS32" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab32" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL32" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        39</td>
                    <td id="TS33" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab33" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL33" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        44</td>
                    <td id="TS34" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab34" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL34" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        45</td>
                    <td id="TS35" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab35" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL35" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        46</td>
                    <td id="TS36" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab36" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL36" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        47</td>
                    <td id="TS37" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab37" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL37" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        48</td>
                    <td id="TS38" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab38" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL38" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        49</td>
                    <td id="TS39" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab39" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL39" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        55</td>
                    <td id="TS40" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab40" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL40" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        56</td>
                    <td id="TS41" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab41" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL41" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        57</td>
                    <td id="TS42" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab42" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL42" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        58</td>
                    <td id="TS43" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab43" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL43" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        59</td>
                    <td id="TS44" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab44" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL44" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        66</td>
                    <td id="TS45" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab45" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL45" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        67</td>
                    <td id="TS46" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab46" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL46" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        68</td>
                    <td id="TS47" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab47" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL47" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        69</td>
                    <td id="TS48" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab48" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL48" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        77</td>
                    <td id="TS49" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab49" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL49" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        78</td>
                    <td id="TS50" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab50" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL50" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        79</td>
                    <td id="TS51" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab51" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL51" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        88</td>
                    <td id="TS52" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab52" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL52" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        89</td>
                    <td id="TS53" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab53" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL53" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        99</td>
                    <td id="TS54" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab54" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL54" runat="server" class="show_je"></asp:HyperLink></td>
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
                                                    <asp:HyperLink ID="HL011" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectAll()">全部</asp:HyperLink>
                                                    &nbsp; &nbsp; </span></strong>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td colspan="2" bgcolor="#FFFFCC" style="height: 24px; width: 96px;">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
