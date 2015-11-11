<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_FT_order, App_Web_3mbbw7kj" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Main_left_TM.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../js/Ft_tm.js"></script>

    <script language="JavaScript" type="text/javascript">
            if(self == top) location = '/';

            var notNumber = "下注金额仅能输入数字！";
            var underMinStake = "下注金额不可小於最低下注金额：";
            var overLottoMaxBetLimitValue = "对不起，本期有下注金额最高限制：";

            var overBetLimit = "下注金额不可大於单号限额：";
            var overDcLimit = "下註金額不可大於單註限額(可以多次下註)：";
            var overMaxPayOff = "对不起，本期有派彩最高限制：";
            var noMoney = "请填入下注金额！";
            var sureStake = "是否确定下注？";
            var overCredit = "下注金额不可大於信用馀额：";
            var overEventLimit = "下注金额不可大於可用单场限额：";
            function ClickCancel()
            {
                self.location='../App/select_lt.aspx?GameType=TM';
            }
    </script>

</head>
<body>
    <div class="div_Class">
        <form id="Form1" name="select_lt" method="post" runat="server" onsubmit="return SubChk();">
            <div class="div_Head_a">
                <div id="countdown_num_title" class="m-title" runat="server">
                </div>
            </div>
            <div class="div_Head_b">
                <div class="m-title">
                    <asp:Label ID="LabTzC" runat="server" Text="投注"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="交易单"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="计时:"></asp:Label>
                    <asp:Label ID="LabTime" runat="server"></asp:Label></div>
            </div>
            <div class="div_Head_d">
                <div class="div_table">
                    <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                       <tbody>
                        <tr>
                            <td class="td_Caption_set">
                                期数:
                            </td>
                            <td>
                                <span id="Labtmwinno" class="span_set" runat="server"></span>
                            </td>
                            <tr>
                                <td class="td_Caption_set">
                                    帐户名称:
                                </td>
                                <td>
                                    <span id="TxtUsername" class="span_set" runat="server"></span>
                                </td>
                            </tr>
                        <tr>
                            <td class="td_Caption_set">
                                信用额度:
                            </td>
                            <td>
                                <span id="Labxynd" class="span_set" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_Caption_set">
                                使用幣別:
                            </td>
                            <td>
                                <span id="LabBzname" class="span_set" runat="server">人民币(RMB)</span>
                            </td>
                        </tr>
                    </tbody>
                    </table>
                </div>
            </div>
            <div class="div_table">
                <table id="TableA" class="Main_Table" cellspacing="1" cellpadding="0" border="0">
                    <thead>
                        <tr>
                            <td class="td_Head_set_cen" colspan="2">
                                <asp:Label ID="Label9" runat="server" Text="本場單注最高"></asp:Label>
                                <em>
                                    <asp:Label ID="LabTjeA" runat="server"></asp:Label></em>
                                <asp:Label ID="Label10" runat="server" Text="限制 !!"></asp:Label>
                            </td>
                        </tr>
                    </thead>
                    <tr>
                        <td class="td_cen_caption" colspan="2">
                            <br>
                            <asp:Label ID="LabTzName" runat="server" Text="AAAA"></asp:Label>@ <em>
                                <asp:Label ID="LabPL" name="LabPL" runat="server" Text=""></asp:Label></em></td>
                    </tr>
                </table>
            </div>
            <div class="div_table">
                <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                    <tr>
                        <td class="td_Caption_set">
                            交易金額：</td>
                        <td class="td_Text_set">
                            <asp:TextBox ID="gold" name="gold" CssClass="Ed_TmMoneyfont" size="8" MaxLength="10"
                                runat="server" onKeyPress="return CheckKey();" onKeyUp="return CountWinGold();"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            可贏金額：</td>
                        <td id="TDTmwinje" runat="server" class="td_Caption_Text">
                            <asp:Label ID="LabTmwinje" name="LabTmwinje" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            最低限額：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDd" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            單注限額：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDc" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            單号限額：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDz" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            單项最高：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDx" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </div>
            <br />
            <div>
                <span style="left: 30px; position: relative;">
                    <input type="button" name="btnCancel" value="取消交易" onclick="ClickCancel();" class="no"
                        id="btnCancel" runat="server">&nbsp;
                    <asp:Button ID="ButCmdData" runat="server" OnClick="ButOk_Click" Text="確定交易" />&nbsp;
                    <asp:TextBox ID="TxtButData" runat="server" MaxLength="1" Style="visibility: hidden;
                        width: 3px"></asp:TextBox></span>
            </div>
            <div style="height: 80px;">
            </div>
        </form>
    </div>
</body>
</html>

