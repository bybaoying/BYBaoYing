<%@ page language="c#" inherits="WebTm.ln_zm16pl, App_Web_xt-ylzzg" enableEventValidation="false" %>

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

</head>
<%--
oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
  ondragstart="return   false"     
      onselectstart   ="return   false"   onselect="document.selection.empty()"     
      oncopy="document.selection.empty()"   onbeforecopy="return false" --%>
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
                        <td>
                            <table id="TableKK" cellspacing="0" cellpadding="0" border="0" runat="server">
                                <tr>
                                    <td>
                                        <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td>
                                                    <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>正码1-6</strong>
                                                            </td>
                                                            <td style="width: 250px">
                                                                (<b>香港时间:</b>
                                                                <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                            <td align="left" style="text-align: right;">
                                                                <span><b><a class="click_text" onclick="location='?stoptime=' + document.getElementById('retime').value; ">
                                                                    刷新</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label></b>&nbsp;
                                                                    <select id="retime" runat="server" name="retime" onchange="location='?stoptime=' + document.getElementById('retime').value; ">
                                                                        <option selected="selected" value="-1">不刷新</option>
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
                                                    <table class="table_ChipInfo" id="Table2" border="0" cellspacing="1" cellpadding="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>期数:</strong>
                                                                <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                            <td style="width: 250px">
                                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ln_zm16.aspx">切换下注模式</asp:HyperLink></td>
                                                            <td style="text-align: right">
                                                                <b>开奖日期: </b>
                                                                <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table id="Table4" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td class="td_Head_set_cen" colspan="2">
                                                    正码一</td>
                                                <td class="td_Head_set_cen" colspan="2">
                                                    正码二</td>
                                                <td class="td_Head_set_cen" colspan="2">
                                                    正码三</td>
                                                <td class="td_Head_set_cen" colspan="2">
                                                    正码四</td>
                                                <td class="td_Head_set_cen" colspan="2">
                                                    正码五</td>
                                                <td class="td_Head_set_cen" colspan="2">
                                                    正码六</td>
                                            </tr>
                                            <tr>
                                                <td class="td_Head_set_cen" style="width: 54px">
                                                    号码</td>
                                                <td class="td_Head_set_cen">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" style="width: 54px">
                                                    号码</td>
                                                <td class="td_Head_set_cen">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" style="width: 54px">
                                                    号码</td>
                                                <td class="td_Head_set_cen">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" style="width: 54px">
                                                    号码</td>
                                                <td class="td_Head_set_cen">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" style="width: 54px">
                                                    号码</td>
                                                <td class="td_Head_set_cen">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" style="width: 54px">
                                                    号码</td>
                                                <td class="td_Head_set_cen">
                                                    赔率</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmad" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbd" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmcd" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmdd" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmed" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfd" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmas" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbs" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmcs" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmds" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmes" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfs" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    大</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmaa" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    大</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmba" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    大</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmca" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    大</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmda" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    大</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmea" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    大</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfa" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    小</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmab" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    小</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbb" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    小</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmcb" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    小</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmdb" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    小</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmeb" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    小</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfb" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    合单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmadh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbdh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmcdh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmddh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmedh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfdh" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    合双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmash" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbsh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmcsh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmdsh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmesh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    合双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfsh" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    红波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmah" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    红波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    红波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmch" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    红波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmdh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    红波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmeh" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    红波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfh" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    绿波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmal" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    绿波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbl" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    绿波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmcl" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    绿波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmdl" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    绿波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmel" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    绿波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfl" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    蓝波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmak" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    蓝波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbk" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    蓝波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmck" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    蓝波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmdk" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    蓝波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmek" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont">
                                                    蓝波</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfk" runat="server">0</asp:HyperLink></td>
                                            </tr>
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
    </form>
</body>
</html>

