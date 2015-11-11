<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_PlDs, App_Web_nwkt-b7n" enableEventValidation="false" %>

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
        function SelectClassAll(vTmplavalue,vTmno){
             if (!(document.getElementById(vTmplavalue).value.toLowerCase() == 'a' || document.getElementById(vTmplavalue).value.toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById(vTmplavalue).value) == true || document.getElementById(vTmplavalue).value == '' )
                     {
                        document.getElementById(vTmplavalue).focus();
                        alert("设置的赔率!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById(vTmplavalue).value = Number(document.getElementById(vTmplavalue).value) ;
                    }
            }
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = arrNum[i];
	            
	            SelectTmOk("TxtEditPl" + tmno.toString(),document.getElementById(vTmplavalue).value);
	            
            }
        }
        function SelectAll(){
             if(isNaN(document.getElementById("TmPlValue").value) == true || document.getElementById("TmPlValue").value == '' )
             {
                document.getElementById("TmPlValue").focus();
                alert("设置的赔率!!");
                return ;
            }
 
            for (var i = 0 ; i <= 5; i++){

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
            
            lSetValue = SetValue("04","tmadr.tmasa.tmbdr.tmbsa.tmcdr.tmcsa.tmada.tmaxa.tmbda.tmbxa.tmcda.tmcxa");
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ; 

            lSetValue = SetValue("41","tmbcdr.tmbcsa.tmbcda.tmbcxa.tmacdr.tmacsa.tmacda.tmacxa.tmabdr.tmabsa.tmabda.tmabxa");
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
                    &nbsp;&nbsp;单双大小&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40">
                        时间</td>
                    <td width="30">
                        期数</td>
                    <td width="100">
                        类别
                    </td>
                    <td width="50">
                        号码</td>
                    <td width="45">
                        赔率</td>
                    <td>
                        注单</td>
                    <td width="50">
                        号码</td>
                    <td width="45">
                        赔率</td>
                    <td>
                        注单</td>
                    <td width="50">
                        号码</td>
                    <td width="45">
                        赔率</td>
                    <td>
                        注单</td>
                    <td width="50">
                        号码</td>
                    <td width="45">
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
                        佰位</td>
                    <td class="Td_Title_Num">
                        单</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TStmadr">
                    </td>
                    <td align="middle" id="Td33">
                        <asp:HyperLink ID="HLtmadr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        双</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TStmasa">
                    </td>
                    <td align="middle" id="Td35">
                        <asp:HyperLink ID="HLtmasa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        大</td>
                    <td id="TStmada" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td15" align="middle">
                        <asp:HyperLink ID="HLtmada" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        小</td>
                    <td id="TStmaxa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td17" align="middle">
                        <asp:HyperLink ID="HLtmaxa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        拾位</td>
                    <td class="Td_Title_Num">
                        单</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TStmbdr">
                    </td>
                    <td align="middle" id="Td7">
                        <asp:HyperLink ID="HLtmbdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        双</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TStmbsa">
                    </td>
                    <td align="middle" id="Td11">
                        <asp:HyperLink ID="HLtmbsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        大</td>
                    <td id="TStmbda" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td19" align="middle">
                        <asp:HyperLink ID="HLtmbda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        小</td>
                    <td id="TStmbxa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td21" align="middle">
                        <asp:HyperLink ID="HLtmbxa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        个位</td>
                    <td class="Td_Title_Num">
                        单</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TStmcdr">
                    </td>
                    <td align="middle" id="Td29">
                        <asp:HyperLink ID="HLtmcdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        双</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TStmcsa">
                    </td>
                    <td align="middle" id="Td31">
                        <asp:HyperLink ID="HLtmcsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        大</td>
                    <td id="TStmcda" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td23" align="middle">
                        <asp:HyperLink ID="HLtmcda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        小</td>
                    <td id="TStmcxa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td25" align="middle">
                        <asp:HyperLink ID="HLtmcxa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        拾个位
                    </td>
                    <td class="Td_Title_Num">
                        单</td>
                    <td id="TStmbcdr" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD0">
                        <asp:HyperLink ID="HLtmbcdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        双</td>
                    <td id="TStmbcsa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD1">
                        <asp:HyperLink ID="HLtmbcsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        大</td>
                    <td id="TStmbcda" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD10">
                        <asp:HyperLink ID="HLtmbcda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        小</td>
                    <td id="TStmbcxa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD13">
                        <asp:HyperLink ID="HLtmbcxa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        佰个位</td>
                    <td class="Td_Title_Num">
                        单</td>
                    <td id="TStmacdr" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD2">
                        <asp:HyperLink ID="HLtmacdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        双</td>
                    <td id="TStmacsa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD12">
                        <asp:HyperLink ID="HLtmacsa" runat="server" class="show_je">[HLtmacsa]</asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        大</td>
                    <td id="TStmacda" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD6">
                        <asp:HyperLink ID="HLtmacda" runat="server" class="show_je">[HLtmacda]</asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        小</td>
                    <td id="TStmacxa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD8">
                        <asp:HyperLink ID="HLtmacxa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        佰拾位</td>
                    <td class="Td_Title_Num">
                        单</td>
                    <td id="TStmabdr" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle">
                        <asp:HyperLink ID="HLtmabdr" runat="server" class="show_je">[HLtmabdr]</asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        双</td>
                    <td id="TStmabsa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle">
                        <asp:HyperLink ID="HLtmabsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        大</td>
                    <td id="TStmabda" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle">
                        <asp:HyperLink ID="HLtmabda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        小</td>
                    <td id="TStmabxa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle">
                        <asp:HyperLink ID="HLtmabxa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffcc" colspan="15">
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
                                                    <asp:HyperLink ID="HyperLink11" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectClassAll('TmPlValue','tmadr.tmasa.tmbdr.tmbsa.tmcdr.tmcsa.tmada.tmaxa.tmbda.tmbxa.tmcda.tmcxa.tmbcdr.tmbcsa.tmbcda.tmbcxa.tmacdr.tmacsa.tmacda.tmacxa.tmabdr.tmabsa.tmabda.tmabxa.')">全部</asp:HyperLink>
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
