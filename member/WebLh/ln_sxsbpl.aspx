<%@ page language="c#" inherits="WebTm.ln_sxsbpl, App_Web_xt-ylzzg" enableEventValidation="false" %>

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
      oncopy="document.selection.empty()"   onbeforecopy="return false"--%>
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
                                                                <td style="width: 150px;">
                                                                    <strong>生肖(十二生肖).色波</strong></td>
                                                                <td style="width: 250px;">
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
                                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ln_sxsb.aspx">切换下注模式</asp:HyperLink></td>
                                                                <td style="text-align: right">
                                                                    <b>开奖日期: </b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
 
                                        <table id="Table1" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr >
                                                <td style="width: 71px" class="td_Head_set_cen" >
                                                    <b>十二生肖</b></td>
                                                <td class="td_Head_set_cen" width="111">
                                                    <b>号码</b></td>
                                                <td class="td_Head_set_cen" width="111">
                                                    <b>赔率</b></td>
                                                <td style="width: 76px" class="td_Head_set_cen">
                                                    <b>十二生肖</b></td>
                                                <td class="td_Head_set_cen" width="111">
                                                    <b>号码</b></td>
                                                <td class="td_Head_set_cen" width="111">
                                                    <b>赔率</b></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx1" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx1" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx121" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx2" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx2" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx122" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx3" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx3" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx123" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx4" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx4" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx124" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx5" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx5" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx125" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx6" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx6" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx126" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx7" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx7" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx127" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx8" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx8" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx128" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx9" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx9" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx129" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx10" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx10" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx1210" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx11" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx11" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx1211" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" style="width: 76px" >
                                                    <asp:Label ID="Lyx12" runat="server" Width="64px"></asp:Label></td>
                                                <td class="TmLabValuefont">
                                                    <asp:Label ID="Layx12" runat="server" ></asp:Label></td>
                                                <td class="Td_TmPlfont" Width="80px">
                                                    
                                                        <asp:HyperLink ID="Labsx1212" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                        </table>
       
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                       
                                            <tr class="Tr_TmShow">
                                                <td width="17%" class="TmLabfont">
                                                    红波</td>
                                                <td class="Td_TmPlfont" width="17%">
                                                    
                                                        <asp:HyperLink ID="Labtmr" runat="server">0</asp:HyperLink></td>
                                                <td width="17%" class="TmLabfont">
                                                    绿波</td>
                                                <td class="Td_TmPlfont" width="17%">
                                                    
                                                        <asp:HyperLink ID="Labtmg" runat="server">0</asp:HyperLink></td>
                                                <td width="16%" class="TmLabfont">
                                                    蓝波</td>
                                                <td class="Td_TmPlfont" width="16%">
                                                    
                                                        <asp:HyperLink ID="Labtmb" runat="server">0</asp:HyperLink></td>
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

