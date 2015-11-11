<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_webstartwin, App_Web_hmaezzcm" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/members.css" rel="stylesheet" type="text/css" />
</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="td_banner_m">
                    <td>
                        &nbsp;&nbsp;<asp:Label ID="LabGameCaption" runat="server"></asp:Label>-按开奖彩球号码计算派奖:
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
                <td id="TD1" class="m_title_edit" colspan="7" runat="server" align="center">
                    <div>
                        -开奖彩球号码</div>
                </td>
            </tr>
            <tr class="m_title_edit">
                <td align="center">
                    佰</td>
                <td align="center">
                    拾</td>
                <td align="center">
                    个</td>
                <td align="center">
                    总合</td>
                <td align="center">
                    佰拾</td>
                <td align="center">
                    拾个</td>
                <td align="center">
                    佰个</td>
            </tr>
            <tr class="m_rig">
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox2" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox3" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmSum" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmAXa" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmBXa" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmCXa" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr class="mem_index_cen">
                <td align="center" colspan="7" id="Msgbox" runat="server">
                    <asp:Button ID="ButDataWin" runat="server" Width="125px" Height="26px" Text="计算/派奖" OnClick="ButDataWin_Click"></asp:Button></td>
            </tr>
        </table>
    </form>
</body>
</html>
