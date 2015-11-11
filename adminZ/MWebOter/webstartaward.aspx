<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_webstartaward, App_Web_hmaezzcm" enableEventValidation="false" %>

<html>
<head>
    <title></title> 
    <link href="../style/members.css" rel="stylesheet" type="text/css"/>
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
                        <asp:Label ID="LabGameCaption" runat="server"></asp:Label>-现在开奖摇珠:
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
        <table id="Table2" class="m_tab_ed">
            <tr class="mem_index_cen">
                <td>
                    <table id="TableA" width="208" border="0" align="center" runat="server" style="background-color: #330000">
                        <tr>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30" id="TD1" runat="server">
                                <asp:LinkButton ID="LinkButton0" runat="server" CommandName="0" OnCommand="bA_Command">0</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="1" OnCommand="bA_Command">1</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="2" OnCommand="bA_Command">2</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="3" OnCommand="bA_Command">3</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="4" OnCommand="bA_Command">4</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30">
                                <asp:LinkButton ID="LinkButton5" runat="server" CommandName="5" OnCommand="bA_Command">5</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30">
                                <asp:LinkButton ID="LinkButton6" runat="server" CommandName="6" OnCommand="bA_Command">6</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton7" runat="server" CommandName="7" OnCommand="bA_Command">7</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton8" runat="server" CommandName="8" OnCommand="bA_Command">8</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton9" runat="server" CommandName="9" OnCommand="bA_Command">9</asp:LinkButton></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="mem_index_cen">
                <td>
                    <asp:Button ID="TmCancel" runat="server" Width="72px" Text="取消" OnClick="TmCancel_Click"></asp:Button>
                    <asp:Button ID="TmOk" runat="server" Width="72px" Text="完成" ToolTip="开奖结束，特码已产生，不能进行修改" OnClick="TmOk_Click"></asp:Button>
                    <asp:TextBox ID="TmNoN" runat="server" Width="14px" Visible="False">0</asp:TextBox></td>
            </tr>
            <tr class="mem_index_cen">
                <td>
                    <asp:Label ID="labMsgbox" runat="server" ForeColor="Red">注意：点击[完成]按钮后开奖结果不允许修改，只能进行计算奖金。请您务必慎重！</asp:Label>
                </td>
            </tr>
        </table>
        <table id="Table1" class="m_tab_ed" runat="server">
            <tr class="m_title_edit">
                <td colspan="7">
                  <p align="center">
                        -开奖彩球号码</p>
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

        </table>
        <table id="Table3" class="m_tab_ed" runat="server">
            <tr class="mem_index_cen">
                <td height="30">
                    <a href="WebStartWin.aspx?gt=<%=Request.QueryString["gt"] %>" target="main" title="庄家根据摇码结果为每位投注会员派发奖金、及退水金额">计算派奖</a>
                </td>
            </tr>
        </table>      
        
    </form>
</body>
</html>
