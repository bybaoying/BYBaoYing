<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_WebStartWin, App_Web_wtmgu-sw" enableEventValidation="false" %>
<%--<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >--%>
<html>
<head>
    <title>计算</title>
    <link href="../style/members.css" rel="stylesheet" type="text/css">
</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0"
    topmargin="0">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="td_banner_m">
                    <td>
                        &nbsp;&nbsp;按开奖彩球号码计算派奖:
                    </td>
                </tr>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table1" class="m_tab_ed" runat="server">
            <tr>
                <td id="TD1" class="m_title_edit" colspan="13" runat="server" align="center">
                    <div>
                        现在开奖彩球号码</div>
                </td>
            </tr>
            <tr class="m_title_edit">
                <td align="center">
                    <div>
                        正码一</div>
                </td>
                <td align="center">
                    正码二</td>
                <td align="center">
                    正码三</td>
                <td align="center">
                    正码四</td>
                <td align="center">
                    正码五</td>
                <td align="center">
                    正码六</td>
                <td align="center">
                    特别号</td>
                <td align="center">
                    总合</td>
                <td align="center" width="80" colspan="2">
                    特别码</td>
                <td align="center">
                    合数</td>
                <td align="center" width="80" colspan="2">
                    总和</td>
            </tr>
            <tr class="m_rig">
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmSum" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmDa" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmXa" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmHeda" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmSumda" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmSumxa" runat="server" ReadOnly="True" Width="40px"></asp:TextBox></td>
            </tr>
            <tr class="mem_index_cen">
                <td align="center" colspan="13" id="Msgbox" runat="server">
                    <asp:Button ID="ButDataWin" runat="server" Width="125px" Height="26px" Text="计算/派奖"
                        OnClick="ButDataWin_Click"></asp:Button></td>
            </tr>
        </table>
    </form>
</body>
</html>

