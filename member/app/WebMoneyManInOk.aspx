<%@ page language="C#" autoeventwireup="true" inherits="member_app_WebMoneyManInOk, App_Web_01izlwfu" enableEventValidation="false" %>

<%@ Register Src="WebMoneyManToolMenu.ascx" TagName="WebMoneyManToolMenu" TagPrefix="uc1" %>
<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_Tm.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_TM.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_TM.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="Form1" method="post" onsubmit="return SubChk()" runat="server">
        <div class="div_windows">
            <table class="table_windows" cellspacing="0" cellpadding="0" border="0">
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
                                                <% =Session["TmMessage"] %>
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
                        <td class="Td_Table">
                            <table id="Table1" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table class="table_ChipTitle" cellspacing="1" cellpadding="0" border="0">
                                                <tr>
                                                    <td style="width: 150px">
                                                        我的钱包->存款</td>
                                                    <td colspan="2" style="text-align: right">
                                                        <uc1:WebMoneyManToolMenu ID="WebMoneyManToolMenu1" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table id="Table8" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                <tr>
                                    <td class="td_Head_set_cen" style="width: 150px">
                                        汇入银行</td>
                                    <td class="td_Text_set">
                                        <input id="TxtBankUserCaption" runat="server" readonly="readonly" type="text" /></td>
                                </tr>
                                <tr>
                                    <td class="td_Head_set_cen">
                                        帐户余额</td>
                                    <td class="td_Text_set">
                                        <input id="TxtMoney" runat="server" readonly="readonly" type="text" /></td>
                                </tr>
                                <tr>
                                    <td class="td_Head_set_cen">
                                        存款金额</td>
                                    <td class="td_Text_set">
                                        <input id="TxtMoneyOut" runat="server" type="text" /></td>
                                </tr>
                                <tr>
                                    <td class="td_Head_set_cen">
                                        联系电话</td>
                                    <td class="td_Text_set">
                                        <input id="TxtBankUserTel" runat="server" type="text" /></td>
                                </tr>
                                <tr>
                                    <td class="list_cen" style="text-align: center" colspan="2">
                                        <asp:Button ID="CmdOk" runat="server" Text="确定" class="button_Ok" OnClick="CmdOk_Click"></asp:Button>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
    </form>
</body>
</html>
