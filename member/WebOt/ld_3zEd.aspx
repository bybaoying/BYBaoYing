<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_ld_3zEd, App_Web_t2vtoice" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css"  />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/but_chip_Check.js"></script> 
    <script language="javascript" type="text/javascript" src="../Scripts/JS_Page_tab.js"></script>

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        //检查帐号,名称,密码 字元限制 
        function chanagePage()
        {
            location="ld_3z.aspx?GameType=" + "<% =Request.QueryString["GameType"] %>" + "&Classid=" + "<% =Request.QueryString["Classid"] %>" ;
        }

        function openNewPage(vClassid)
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        }   
        function openLink()
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=<% =Request.QueryString["Classid"] %>';
        }
        
        function openchanagePage(vClassid)
        {
            location='ld_3dwEd.aspx?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        } 
        function SubData()
        {
            mChipMoneySum = 0 ;//保存注单的金额合计
            var lWagerStr= "",lSetValue = "";
            document.getElementById("WagerTxt").value = "" ;
            
            lSetValue = GetValueStrII("03",0,219,"Txt","Label")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }                
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
  
            if (!SubChk(String(mChipMoneySum),document.getElementById("Labxynd").innerHTML,"TxtButData")){
                return false;
            }
                
            document.getElementById("WagerTxt").value = lWagerStr ;
                return true;
        } 
    </script>

    <%--oncontextmenu="self.event.returnvalue=false;window.event.returnvalue=false;"
      ondragstart="return   false" 
      onselectstart   ="return   false"   onselect="document.selection.empty()"     
      oncopy="document.selection.empty()"   onbeforecopy="return false"--%>
</head>
<body>
    <form id="lt_form" method="post" onsubmit="return SubData();" runat="server">
        <div class="div_windows">
            <table id="Table4" class="table_windows" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td>
                            <table id="Table9" class="Page_Head" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td class="Page_HeadL">
                                    </td>
                                    <td class="Page_HeadM">
                                        <span class="img_message"> </span> 
                                        <span id="Msg">
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" style="width: 600px; height: 16px">
                                                <% =mOtMessage %>
                                            </marquee>
                                        </span>
                                    </td>
                                    <td class="Page_HeadR">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="Td_TabPage"  >
                            <div id="tab">
                                <ul >
                                    <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('03');">三字组合</a></li>
                                    <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openchanagePage('50');">佰拾个定位</a></li>
                                    <li id="space" ><span></span></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="Td_Cont" class="Td_Table" runat="server">
                            <table id="TableKK" border="0" cellspacing="1" cellpadding="0" runat="server">
                                <tr>
                                    <td>
                                        <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipTitle" id="Table3" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>三字</strong></td>
                                                                <td style="width: 250px">
                                                                    (香港时间:
                                                                    <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                                <td style="text-align: right;">
                                                                    <strong><a class="click_text" onclick="openLink();">刷新</a></strong>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipInfo" id="Table2" border="0" cellspacing="1" cellpadding="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>期数:</strong>
                                                                    <asp:Label ID="Labtmwinno" runat="server"></asp:Label>
                                                                </td>
                                                                <td style="width: 250px">
                                                                    <asp:HyperLink ID="linkZmGo" runat="server" NavigateUrl="javascript:chanagePage();">切换下注模式</asp:HyperLink></td>
                                                                <td style="text-align: right">
                                                                    <b>开奖日期:</b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table id="Table7" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_Chipsend">
                                                                <td style="width: 60px" class="td_Chipsend">
                                                                    提交金额:
                                                                </td>
                                                                <td>
                                                                    <input id="ButSend" onserverclick="ButOk_Click" class="button_Ok" type="button" value="确定" runat="server" />
                                                                    <input onmouseup="return reset();" class="button_Reset" type="reset" value="取消" />&nbsp;
                                                                    <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden; width: 3px" type="text" />
                                                                    <input id="WagerTxt" runat="server" name="TxtButData" readonly="readonly" type="text" style="visibility: hidden; width: 3px" /></td>
                                                                <td align="center">
                                                                    <input id="TxtClassid" runat="server" type="text" style="visibility: hidden; width: 3px" /></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="Table1" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td style="width: 65px;" class="td_Caption_set">
                                                    帐户名称</td>
                                                <td style="width: 146px;" class="td_Center_set">
                                                    <asp:Label ID="LabUsername" runat="server"></asp:Label></td>
                                                <td style="width: 65px;" class="td_Caption_set">
                                                    信用额度</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabBzname" runat="server" Text="人民币(RMB)"></asp:Label>
                                                    <asp:Label ID="Labxynd" runat="server"></asp:Label>
                                                </td>
                                                <td style="width: 65px;" class="td_Caption_set">
                                                    下注金额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="td_Caption_set">
                                                    最低限额</td>
                                                <td style="width: 146px;" class="td_Center_set">
                                                    <asp:Label ID="LabDd03" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单注限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDz03" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单项限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDx03" runat="server"></asp:Label></td>
                                            </tr>
                                        </table>
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">000</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label0" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt0" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">001</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label1" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt1" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">002</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label2" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt2" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">003</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label3" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt3" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">004</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label4" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt4" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">005</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label5" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt5" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">006</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label6" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt6" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">007</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label7" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt7" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">008</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label8" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt8" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">009</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label9" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt9" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">011</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label10" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt10" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">012</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label11" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt11" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">013</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label12" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt12" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">014</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label13" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt13" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">015</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label14" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt14" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">016</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label15" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt15" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">017</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label16" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt16" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">018</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label17" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt17" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">019</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label18" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt18" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">022</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label19" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt19" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">023</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label20" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt20" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">024</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label21" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt21" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">025</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label22" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt22" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">026</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label23" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt23" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">027</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label24" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt24" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">028</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label25" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt25" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">029</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label26" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt26" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">033</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label27" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt27" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">034</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label28" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt28" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">035</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label29" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt29" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">036</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label30" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt30" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">037</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label31" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt31" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">038</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label32" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt32" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">039</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label33" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt33" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">044</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label34" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt34" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">045</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label35" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt35" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">046</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label36" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt36" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">047</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label37" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt37" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">048</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label38" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt38" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">049</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label39" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt39" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">055</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label40" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt40" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">056</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label41" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt41" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">057</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label42" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt42" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">058</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label43" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt43" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">059</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label44" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt44" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">066</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label45" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt45" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">067</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label46" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt46" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">068</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label47" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt47" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">069</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label48" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt48" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">077</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label49" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt49" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">078</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label50" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt50" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">079</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label51" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt51" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">088</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label52" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt52" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">089</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label53" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt53" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">099</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label54" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt54" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">111</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label55" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt55" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">112</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label56" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt56" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">113</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label57" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt57" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">114</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label58" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt58" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">115</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label59" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt59" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">116</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label60" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt60" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">117</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label61" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt61" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">118</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label62" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt62" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">119</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label63" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt63" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">122</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label64" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt64" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">123</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label65" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt65" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">124</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label66" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt66" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">125</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label67" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmPlfont">
                                                        <input id="Txt67" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">126</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label68" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt68" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">127</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label69" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt69" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">128</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label70" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt70" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">129</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label71" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt71" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">133</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label72" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt72" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">134</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label73" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt73" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">135</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label74" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt74" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">136</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label75" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt75" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">137</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label76" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt76" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">138</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label77" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt77" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">139</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label78" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt78" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">144</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label79" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt79" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">145</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label80" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt80" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">146</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label81" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt81" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">147</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label82" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt82" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">148</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label83" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt83" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">149</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label84" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt84" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">155</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label85" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmPlfont">
                                                        <input id="Txt85" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">156</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label86" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt86" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">157</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label87" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt87" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">158</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label88" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt88" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">159</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label89" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt89" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">166</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label90" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt90" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">167</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label91" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt91" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">168</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label92" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt92" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">169</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label93" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt93" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">177</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label94" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt94" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">178</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label95" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt95" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">179</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label96" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt96" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">188</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label97" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt97" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">189</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label98" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt98" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">199</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label99" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt99" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">222</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label100" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt100" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">223</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label101" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt101" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">224</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label102" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt102" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">225</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label103" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt103" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">226</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label104" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt104" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">227</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label105" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt105" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">228</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label106" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt106" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">229</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label107" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt107" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">233</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label108" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt108" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">234</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label109" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt109" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">235</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label110" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt110" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">236</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label111" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt111" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">237</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label112" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt112" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">238</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label113" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt113" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">239</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label114" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt114" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">244</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label115" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt115" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">245</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label116" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt116" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">246</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label117" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt117" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">247</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label118" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt118" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">248</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label119" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt119" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">249</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label120" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt120" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">255</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label121" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt121" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">256</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label122" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt122" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">257</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label123" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt123" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">258</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label124" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt124" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">259</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label125" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt125" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">266</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label126" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt126" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">267</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label127" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt127" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">268</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label128" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt128" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">269</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label129" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt129" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">277</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label130" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt130" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">278</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label131" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt131" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">279</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label132" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt132" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">288</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label133" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt133" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">289</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label134" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt134" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">299</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label135" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt135" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">333</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label136" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt136" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">334</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label137" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt137" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">335</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label138" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt138" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">336</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label139" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt139" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">337</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label140" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt140" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">338</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label141" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt141" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">339</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label142" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt142" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">344</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label143" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt143" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">345</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label144" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt144" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">346</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label145" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt145" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">347</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label146" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt146" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">348</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label147" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt147" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">349</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label148" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt148" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">355</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label149" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt149" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">356</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label150" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt150" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">357</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label151" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt151" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">358</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label152" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt152" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">359</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label153" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt153" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">366</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label154" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt154" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">367</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label155" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt155" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">368</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label156" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt156" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">369</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label157" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt157" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">377</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label158" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt158" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">378</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label159" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt159" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">379</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label160" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt160" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">388</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label161" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt161" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">389</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label162" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt162" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">399</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label163" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt163" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">444</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label164" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt164" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">445</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label165" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt165" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">446</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label166" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt166" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">447</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label167" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt167" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">448</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label168" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt168" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">449</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label169" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt169" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">455</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label170" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt170" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">456</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label171" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt171" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">457</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label172" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt172" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">458</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label173" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt173" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">459</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label174" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt174" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">466</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label175" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt175" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">467</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label176" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt176" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">468</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label177" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt177" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">469</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label178" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt178" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">477</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label179" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt179" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">478</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label180" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt180" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">479</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label181" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt181" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">488</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label182" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt182" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">489</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label183" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt183" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">499</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label184" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt184" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">555</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label185" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt185" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">556</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label186" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt186" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">557</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label187" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt187" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">558</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label188" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt188" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">559</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label189" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt189" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">566</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label190" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt190" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">567</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label191" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt191" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">568</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label192" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt192" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">569</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label193" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt193" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">577</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label194" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt194" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">578</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label195" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt195" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">579</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label196" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt196" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">588</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label197" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt197" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">589</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label198" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt198" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">599</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label199" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt199" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">666</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label200" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt200" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">667</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label201" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt201" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">668</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label202" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt202" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">669</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label203" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt203" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">677</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label204" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt204" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">678</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label205" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt205" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">679</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label206" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt206" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">688</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label207" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt207" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">689</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label208" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt208" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">699</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label209" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt209" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">777</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label210" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt210" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">778</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label211" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt211" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">779</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label212" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <font>
                                                            <input id="Txt212" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">788</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label213" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt213" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">789</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label214" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt214" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">799</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label215" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt215" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">888</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label216" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt216" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">889</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label217" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt217" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">899</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label218" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt218" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">999</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label219" runat="server">00</asp:HyperLink></td>
                                                    <td align="center" class="Show_Pl">
                                                        <input id="Txt219" onkeypress="return MoneyKey(event);" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
        <table id="Table5" width="668" class="table_banner" cellspacing="1" style="visibility: hidden; display: none;">
            <tr>
                <td style="width: 65px;" class="ball_td" align="center">
                    信用额度</td>
                <td class="list_cen">
                    <asp:Label ID="Label220" runat="server" Text="人民币(RMB)"></asp:Label>&nbsp;
                </td>
                <td style="width: 65px;" class="ball_td" align="center">
                    下注金额</td>
                <td class="list_cen">
                </td>
            </tr>
        </table>
        <table id="Table10" width="668" class="table_banner" cellspacing="1" style="display: none; visibility: hidden" >
            <tr>
                <td class="ball_td" align="center">
                    最低限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label221" runat="server"></asp:Label>
                    <asp:Label ID="LabDd04" runat="server"></asp:Label>
                    <asp:Label ID="LabDd41" runat="server"></asp:Label>
                    <asp:Label ID="LabDd42" runat="server"></asp:Label>
                    <asp:Label ID="LabDd43" runat="server"></asp:Label>
                    <asp:Label ID="LabDd17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc03" runat="server"></asp:Label>
                    <asp:Label ID="Label222" runat="server"></asp:Label>
                    <asp:Label ID="LabDc04" runat="server"></asp:Label>
                    <asp:Label ID="LabDc41" runat="server"></asp:Label>
                    <asp:Label ID="LabDc42" runat="server"></asp:Label>
                    <asp:Label ID="LabDc43" runat="server"></asp:Label>
                    <asp:Label ID="LabDc17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label223" runat="server"></asp:Label>
                    <asp:Label ID="LabDz04" runat="server"></asp:Label>
                    <asp:Label ID="LabDz41" runat="server"></asp:Label>
                    <asp:Label ID="LabDz42" runat="server"></asp:Label>
                    <asp:Label ID="LabDz43" runat="server"></asp:Label>
                    <asp:Label ID="LabDz17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label224" runat="server"></asp:Label>
                    <asp:Label ID="LabDx04" runat="server"></asp:Label>
                    <asp:Label ID="LabDx41" runat="server"></asp:Label>
                    <asp:Label ID="LabDx42" runat="server"></asp:Label>
                    <asp:Label ID="LabDx43" runat="server"></asp:Label>
                    <asp:Label ID="LabDx17" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
