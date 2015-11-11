<%@ page language="c#" inherits="WebTm.ln_yxpl, App_Web_xt-ylzzg" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_TM.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../js/AutoRefreshShow.js"></script>

    <script language="JavaScript" type="text/javascript">
            if(self == top) location = '/';

            function onLoad()
            {
                lReftime ="<% =Request.QueryString["stoptime"] %>";
                AutoRefShow(lReftime,'');
            }
    </script>

    <%--

    oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;" ondragstart="return
    false" onselectstart ="return false" onselect="document.selection.empty()" oncopy="document.selection.empty()"
    onbeforecopy="return false"--%>
</head>
<body onload="onLoad();">
    <form id="Form1" method="post" runat="server">
        <div class="div_windows">
            <table id="Table3" class="table_windows" cellspacing="0" cellpadding="0">
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
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);"
                                                style="width: 600px; height: 16px">
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
                            <table id="TableKK" cellspacing="0" cellpadding="0" border="0" runat="server">
                                <tr>
                                    <td>
                                        <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>һФ.β��</strong></td>
                                                                <td style="width: 250px">
                                                                    (<b>���ʱ��:</b>
                                                                    <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                                <td align="left" style="text-align: right;">
                                                                    <span><b><a class="click_text" onclick="location='?stoptime=' + document.getElementById('retime').value; ">
                                                                        ˢ��</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label></b>&nbsp;
                                                                        <select id="retime" runat="server" name="retime" onchange="location='?stoptime=' + document.getElementById('retime').value; ">
                                                                            <option selected="selected" value="-1">��ˢ��</option>
                                                                            <option value="20">20 sec</option>
                                                                            <option value="40">40 sec</option>
                                                                            <option value="60">60 sec</option>
                                                                        </select>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipInfo" id="Table1" border="0" cellspacing="1" cellpadding="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>����:</strong>
                                                                    <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                                <td style="width: 250px">
                                                                    &nbsp;
                                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ln_yx.aspx">�л���עģʽ</asp:HyperLink></td>
                                                                <td style="text-align: right;">
                                                                    <b>��������: </b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td class="td_Head_set_cen" style="width: 75px">
                                                    <b>һФ</b></td>
                                                <td class="td_Head_set_cen" style="width: 160px">
                                                    <b>����</b></td>
                                                <td class="td_Head_set_cen" style="width: 75px">
                                                    <b>����</b></td>
                                                <td class="td_Head_set_cen" style="width: 75px">
                                                    <b>һФ</b></td>
                                                <td class="td_Head_set_cen">
                                                    <b>����</b></td>
                                                <td class="td_Head_set_cen" style="width: 75px">
                                                    <b>����</b></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx1" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx1" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx1" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx7" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx7" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx7" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx2" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx2" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx2" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx8" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx8" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx8" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx3" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx3" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx3" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx9" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx9" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx9" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx4" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx4" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx4" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx10" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx10" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx10" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx5" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx5" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx5" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx11" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx11" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx11" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx6" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx6" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx6" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCyx12" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVyx12" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labyx12" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                        </table>
                                        <table id="Table2" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td class="td_Head_set_cen" style="width: 75px">
                                                    <b>β��</b></td>
                                                <td class="td_Head_set_cen" style="width: 160px">
                                                    <b>����</b></td>
                                                <td class="td_Head_set_cen" style="width: 75px">
                                                    <b>����</b></td>
                                                <td class="td_Head_set_cen" style="width: 75px">
                                                    <b>β��</b></td>
                                                <td class="td_Head_set_cen">
                                                    <b>����</b></td>
                                                <td class="td_Head_set_cen" style="width: 75px">
                                                    <b>����</b></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws1" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws1" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws1" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws2" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws2" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws2" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws3" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws3" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws3" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws4" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws4" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws4" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws5" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws5" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws5" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws6" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws6" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws6" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws7" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws7" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws7" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws8" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws8" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws8" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws9" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws9" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws9" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    <asp:Label ID="LabCws0" runat="server"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="LabVws0" runat="server"></asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labws0" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
    </form>
</body>
</html>

