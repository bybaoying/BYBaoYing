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

            var notNumber = "��ע�������������֣�";
            var underMinStake = "��ע����С������ע��";
            var overLottoMaxBetLimitValue = "�Բ��𣬱�������ע���������ƣ�";

            var overBetLimit = "��ע���ɴ�춵����޶";
            var overDcLimit = "���]���~���ɴ�춆��]���~(���Զ�����])��";
            var overMaxPayOff = "�Բ��𣬱������ɲ�������ƣ�";
            var noMoney = "��������ע��";
            var sureStake = "�Ƿ�ȷ����ע��";
            var overCredit = "��ע���ɴ�������Ŷ";
            var overEventLimit = "��ע���ɴ�춿��õ����޶";
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
                    <asp:Label ID="LabTzC" runat="server" Text="Ͷע"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="���׵�"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="��ʱ:"></asp:Label>
                    <asp:Label ID="LabTime" runat="server"></asp:Label></div>
            </div>
            <div class="div_Head_d">
                <div class="div_table">
                    <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                       <tbody>
                        <tr>
                            <td class="td_Caption_set">
                                ����:
                            </td>
                            <td>
                                <span id="Labtmwinno" class="span_set" runat="server"></span>
                            </td>
                            <tr>
                                <td class="td_Caption_set">
                                    �ʻ�����:
                                </td>
                                <td>
                                    <span id="TxtUsername" class="span_set" runat="server"></span>
                                </td>
                            </tr>
                        <tr>
                            <td class="td_Caption_set">
                                ���ö��:
                            </td>
                            <td>
                                <span id="Labxynd" class="span_set" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_Caption_set">
                                ʹ�Îńe:
                            </td>
                            <td>
                                <span id="LabBzname" class="span_set" runat="server">�����(RMB)</span>
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
                                <asp:Label ID="Label9" runat="server" Text="������ע���"></asp:Label>
                                <em>
                                    <asp:Label ID="LabTjeA" runat="server"></asp:Label></em>
                                <asp:Label ID="Label10" runat="server" Text="���� !!"></asp:Label>
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
                            ���׽��~��</td>
                        <td class="td_Text_set">
                            <asp:TextBox ID="gold" name="gold" CssClass="Ed_TmMoneyfont" size="8" MaxLength="10"
                                runat="server" onKeyPress="return CheckKey();" onKeyUp="return CountWinGold();"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            ���A���~��</td>
                        <td id="TDTmwinje" runat="server" class="td_Caption_Text">
                            <asp:Label ID="LabTmwinje" name="LabTmwinje" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            ������~��</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDd" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            ��ע���~��</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDc" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            �κ����~��</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDz" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            ������ߣ�</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDx" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </div>
            <br />
            <div>
                <span style="left: 30px; position: relative;">
                    <input type="button" name="btnCancel" value="ȡ������" onclick="ClickCancel();" class="no"
                        id="btnCancel" runat="server">&nbsp;
                    <asp:Button ID="ButCmdData" runat="server" OnClick="ButOk_Click" Text="�_������" />&nbsp;
                    <asp:TextBox ID="TxtButData" runat="server" MaxLength="1" Style="visibility: hidden;
                        width: 3px"></asp:TextBox></span>
            </div>
            <div style="height: 80px;">
            </div>
        </form>
    </div>
</body>
</html>

