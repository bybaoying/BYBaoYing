<%@ page language="c#" inherits="WebTm.ln_dsdxpl, App_Web_xt-ylzzg" enableEventValidation="false" %>

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

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
  ondragstart="return   false"     
      onselectstart   ="return   false"   onselect="document.selection.empty()"     
      oncopy="document.selection.empty()" onbeforecopy="return false"--%>
</head>
<body onload="onLoad();">
    <form id="Form1" method="post" runat="server">
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
                                                                    <strong>单双大小</strong></td>
                                                                <td style="width: 250px">
                                                                    (<b>香港时间:</b>
                                                                    <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                                <td style="text-align: right;">
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
                                                        <table class="table_ChipInfo" id="Table1" border="0" cellspacing="1" cellpadding="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>期数:</strong>
                                                                    <asp:Label ID="Labtmwinno" runat="server" Width="72px">Label</asp:Label></td>
                                                                <td style="width: 250px">
                                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ln_dsdx.aspx">切换下注模式</asp:HyperLink></td>
                                                                <td style="text-align: right">
                                                                    <b>开奖日期: </b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td class="td_Head_set_cen" width="49">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="91">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" width="51">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="70">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" width="88">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="81">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" width="88">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="95">
                                                    赔率</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="49">
                                                    特单</td>
                                                <td width="91" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labtmdr" runat="server">00</asp:HyperLink></td>
                                                <td class="TmLabfont" width="51">
                                                    特双</td>
                                                <td width="70" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labtmsa" runat="server">00</asp:HyperLink></td>
                                                <td class="TmLabfont" width="88">
                                                    特大</td>
                                                <td width="81" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labtmda" runat="server">00</asp:HyperLink></td>
                                                <td class="TmLabfont" width="88">
                                                    特小</td>
                                                <td width="95" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labtmxa" runat="server">00</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="49">
                                                    合单</td>
                                                <td width="91" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labtmhdr" runat="server">00</asp:HyperLink></td>
                                                <td class="TmLabfont" width="51">
                                                    合双</td>
                                                <td width="70" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labtmhsa" runat="server">00</asp:HyperLink></td>
                                                <td class="TmLabfont" width="88">
                                                </td>
                                                <td width="81" class="Td_TmPlfont">
                                                </td>
                                                <td class="TmLabfont" width="88">
                                                </td>
                                                <td width="95" class="Td_TmPlfont">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="49">
                                                    总单</td>
                                                <td width="91" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzhdr" runat="server">00</asp:HyperLink></td>
                                                <td class="TmLabfont" width="51">
                                                    总双</td>
                                                <td width="70" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzhsa" runat="server">00</asp:HyperLink></td>
                                                <td class="TmLabfont" width="88">
                                                    总大</td>
                                                <td width="81" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzhda" runat="server">00</asp:HyperLink></td>
                                                <td class="TmLabfont" width="88">
                                                    总小</td>
                                                <td width="95" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzhxa" runat="server">00</asp:HyperLink></td>
                                            </tr>
                                        </table>
                                        <table id="Table2" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td class="td_Head_set_cen" width="101" colspan="2">
                                                    正码一</td>
                                                <td class="td_Head_set_cen" width="102" colspan="2">
                                                    正码二</td>
                                                <td class="td_Head_set_cen" width="102" colspan="2">
                                                    正码三</td>
                                                <td class="td_Head_set_cen" width="102" colspan="2">
                                                    正码四</td>
                                                <td class="td_Head_set_cen" width="102" colspan="2">
                                                    正码五</td>
                                                <td class="td_Head_set_cen" width="114" colspan="2">
                                                    正码六</td>
                                            </tr>
                                            <tr>
                                                <td class="td_Head_set_cen" width="53">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" width="54">
                                                    号码</td>
                                                <td class="td_Head_set_cen" width="66">
                                                    赔率</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="53">
                                                    单</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmad" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    单</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbd" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    单</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmcd" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    单</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmdd" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    单</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmed" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    单</td>
                                                <td width="66" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfd" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="53">
                                                    双</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmas" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    双</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbs" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    双</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmcs" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    双</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmds" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    双</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmes" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    双</td>
                                                <td width="66" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfs" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="53">
                                                    大</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmaa" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    大</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmba" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    大</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmca" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    大</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmda" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    大</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmea" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    大</td>
                                                <td width="66" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfa" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="53">
                                                    小</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmab" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    小</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmbb" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    小</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmcb" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    小</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmdb" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    小</td>
                                                <td width="54" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmeb" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="54">
                                                    小</td>
                                                <td width="66" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzmfb" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                        </table>
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

