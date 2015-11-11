<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_ld_1zEd, App_Web_t2vtoice" enableEventValidation="false" %>

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
            location="ld_1z.aspx?GameType=" + "<% =Request.QueryString["GameType"] %>" + "&Classid=" + "<% =Request.QueryString["Classid"] %>" ;
        }

        function openNewPage(vClassid)
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        }   
        function openLink()
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=<% =Request.QueryString["Classid"] %>';
            
        }
        function SubData()
        {
            mChipMoneySum = 0 ;//保存注单的金额合计
            var lWagerStr= "",lSetValue = "";
            document.getElementById("WagerTxt").value = "" ;
            
            lSetValue = GetValueStrII("<% Response.Write(mClassid); %>",0,9,"Txt","Label")
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

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
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
                                        <div id="Msg" style="display: inline">
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" style="width: 600px; ">
                                                <% =mOtMessage %>
                                            </marquee>
                                        </div>
                                    </td>
                                    <td class="Page_HeadR">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="Td_TabPage">
                            <div id="tab">
                                <ul>
                                    <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('01');">一字组合</a></li>
                                    <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('11');">佰定位</a></li>
                                    <li id="linkZm3" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('12');">拾定位</a></li>
                                    <li id="linkZm4" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('13');">个定位</a></li>
                                    <li id="space"><span></span></li>
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
                                                        <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>一字</strong></td>
                                                                <td style="width: 250px">
                                                                    (<b>香港时间:</b>
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
                                                        <table id="Table3" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_Chipsend">
                                                                <td style="width: 60px" class="td_Chipsend">
                                                                    提交金额:
                                                                </td>
                                                                <td>
                                                                    <input id="ButSend" onserverclick="ButOk_Click" class="button_Ok" type="button" value="确定" runat="server" />
                                                                    <input onmouseup="return reset();" class="button_Reset" type="reset" value="取消" />&nbsp;
                                                                    <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden; width: 3px; display: none;" type="text" />
                                                                    <input id="WagerTxt" runat="server" name="TxtButData" readonly="readonly" type="text" style="visibility: hidden; width: 3px;display: none;" /></td>
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
                                                    <asp:Label ID="LabDd01" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd11" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd12" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd13" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单注限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDz01" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz11" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz12" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz13" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单项限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDx01" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx11" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx12" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx13" runat="server"></asp:Label></td>
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
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        金额</td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">0</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label0" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt0" type="text" name="Chktm" maxlength="8" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">1</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label1" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt1" type="text" name="Chktm" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">2</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label2" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <font>
                                                            <input onkeypress="return MoneyKey(event);" id="Txt2" type="text" name="Chktm" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">3</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label3" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt3" type="text" name="Chktm" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">4</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label4" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt4" type="text" name="Chktm" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">5</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label5" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt5" type="text" name="Chktm" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">6</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label6" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt6" type="text" name="Chktm" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">7</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label7" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt7" type="text" name="Chktm" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">8</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label8" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt8" type="text" name="Chktm" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">9</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label9" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt9" type="text" name="Chktm" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
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
        <table id="Table7" width="668" class="table_banner" cellspacing="1" style="visibility: hidden; display: none;">
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
        <table id="Table10" width="668" class="table_banner" cellspacing="1" style="display: none; visibility: hidden">
            <tr>
                <td class="ball_td" align="center">
                    最低限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label221" runat="server"></asp:Label>
                    <asp:Label ID="LabDd43" runat="server"></asp:Label>
                    <asp:Label ID="LabDd17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc01" runat="server"></asp:Label>
                    <asp:Label ID="Label222" runat="server"></asp:Label>
                    <asp:Label ID="LabDc11" runat="server"></asp:Label>
                    <asp:Label ID="LabDc12" runat="server"></asp:Label>
                    <asp:Label ID="LabDc13" runat="server"></asp:Label>
                    <asp:Label ID="LabDc43" runat="server"></asp:Label>
                    <asp:Label ID="LabDc17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label223" runat="server"></asp:Label>
                    <asp:Label ID="LabDz43" runat="server"></asp:Label>
                    <asp:Label ID="LabDz17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label224" runat="server"></asp:Label>
                    <asp:Label ID="LabDx43" runat="server"></asp:Label>
                    <asp:Label ID="LabDx17" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

