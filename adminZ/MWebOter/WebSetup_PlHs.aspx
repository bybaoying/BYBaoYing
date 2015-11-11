<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_PlHs, App_Web_nwkt-b7n" enableEventValidation="false" %>
<%@ Register Src="WebSetup_Pl_MenuToolsBar.ascx" TagName="WebSetup_Pl_MenuToolsBar" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>pl</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <link href="../style/WebSetup_Pl.css" type="text/css" rel="stylesheet"/>

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
 
            for (var i = 0 ; i <= 27; i++){

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
            
            lSetValue = SetValue( "<% Response.Write(mclassid); %>","0.1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27");
            
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
<body onload="onLoad();" text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff"
    leftmargin="0" topmargin="0">
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
                            <uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" runat="server" /></td> </tr>
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
                    &nbsp;&nbsp;合数&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0"
            runat="server">
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
                    <td rowspan="6" id="Labtmwindate" runat="server">
                        &nbsp;04-17<br>
                        20:35</td>
                    <td align="middle" rowspan="6" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title_Num">
                        0</td>
                    <td id="TS0" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab0" runat="server"></asp:Label></td>
                    <td align="middle" id="TD0" runat="server">
                        <asp:HyperLink ID="HL0" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        1</td>
                    <td id="TS1" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab1" runat="server"></asp:Label></td>
                    <td align="middle" id="TD1" runat="server">
                        <asp:HyperLink ID="HL1" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        2</td>
                    <td id="TS2" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab2" runat="server"></asp:Label></td>
                    <td align="middle" id="TD21" runat="server">
                        <asp:HyperLink ID="HL2" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        3</td>
                    <td id="TS3" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab3" runat="server"></asp:Label></td>
                    <td align="middle" id="TD31" runat="server">
                        <asp:HyperLink ID="HL3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        4</td>
                    <td id="TS4" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab4" runat="server"></asp:Label></td>
                    <td align="middle" id="TD41" runat="server">
                        <asp:HyperLink ID="HL4" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        5</td>
                    <td id="TS5" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab5" runat="server"></asp:Label></td>
                    <td align="middle" id="TD2" runat="server">
                        <asp:HyperLink ID="HL5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        6</td>
                    <td id="TS6" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab6" runat="server"></asp:Label></td>
                    <td align="middle" id="TD12" runat="server">
                        <asp:HyperLink ID="HL6" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        7</td>
                    <td id="TS7" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab7" runat="server"></asp:Label></td>
                    <td align="middle" id="TD22" runat="server">
                        <asp:HyperLink ID="HL7" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        8</td>
                    <td id="TS8" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab8" runat="server"></asp:Label></td>
                    <td align="middle" id="TD32" runat="server">
                        <asp:HyperLink ID="HL8" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        9</td>
                    <td id="TS9" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab9" runat="server"></asp:Label></td>
                    <td align="middle" id="TD42" runat="server">
                        <asp:HyperLink ID="HL9" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        10</td>
                    <td id="TS10" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab10" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL10" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        11</td>
                    <td id="TS11" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab11" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL11" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        12</td>
                    <td id="TS12" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab12" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL12" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        13</td>
                    <td id="TS13" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab13" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL13" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        14</td>
                    <td id="TS14" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab14" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL14" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        15</td>
                    <td id="TS15" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab15" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL15" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        16</td>
                    <td id="TS16" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab16" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL16" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        17</td>
                    <td id="TS17" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab17" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL17" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        18</td>
                    <td id="TS18" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab18" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL18" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        19</td>
                    <td id="TS19" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab19" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL19" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        20</td>
                    <td id="TS20" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab20" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL20" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        21</td>
                    <td id="TS21" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab21" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL21" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        22</td>
                    <td id="TS22" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab22" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL22" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        23</td>
                    <td id="TS23" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab23" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL23" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        24</td>
                    <td id="TS24" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab24" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL24" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        25</td>
                    <td id="TS25" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab25" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL25" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        26</td>
                    <td id="TS26" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab26" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL26" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        27</td>
                    <td id="TS27" runat="server" class="show_Td_pl" align="right">
                        <asp:Label class="show_Pl" ID="Lab27" runat="server"></asp:Label></td>
                    <td align="middle">
                        <asp:HyperLink ID="HL27" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        </td>
                    <td id="TS28" align="middle">
                        </td>
                    <td align="middle">
                        </td>
                    <td class="Td_Title_Num">
                        </td>
                    <td id="TS29" align="middle">
                        </td>
                    <td align="middle">
                        </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffcc" colspan="17">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0" id="TSetupPl" runat="server">
                            <tr>
                                <td bgcolor="#ffffcc" style="width: 105px">
                                </td>
                                <td id="Td50" runat="server" bgcolor="#ffffcc" style="height: 24px">
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
                                                    <asp:HyperLink ID="HyperLink11" runat="server" BackColor="Silver" ForeColor="Black"
                                                        NavigateUrl="javascript:SelectAll()">全部</asp:HyperLink>
                                                    &nbsp; &nbsp; </span></strong>
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

