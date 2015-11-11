<%@ page language="c#" inherits="WebTm.history_data, App_Web_01izlwfu" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <%--    <link href="../style/Style_PageNo_Split.css" rel="stylesheet" type="text/css" />--%>
    <%-- <script language="javascript" type="text/javascript" src="../Scripts/JS_PageNoShow.js" ></script>--%>

    <script language="JavaScript" type="text/javascript" >
//if(self == top) location = '/';

        function ShowPage()
        {
       
	        location='?GameType=<% =Request.QueryString["GameType"] %>&Pageid=' + document.getElementById('DDPage').value  ;
	            
        }
    </script>
    <style type="text/css">
        .td_Caption_set{
            width: 80px;
            
        }
    </style>
</head>
<body>
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
                            <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table class="table_ChipTitle" cellspacing="1" cellpadding="0" border="0">
                                                <tr>
                                                    <td width="107" height="1">
                                                        <asp:TextBox ID="ContNowPage" runat="server" Visible="False" Width="8px">1</asp:TextBox></td>
                                                    <td align="left" style="text-align: right">
                                                        (<b>香港时间:</b>
                                                        <asp:Label ID="LabNowDate" runat="server"></asp:Label>)
                                                        <select id="DDPage" runat="server" class="zaselect_ste" name="page_f" onchange="ShowPage();">
                                                            <option selected="selected" value="1">1</option>
                                                        </select>
                                                        /<asp:Label ID="ContSumPage" runat="server"></asp:Label>页
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table id="TableA" class="Main_Table" cellspacing="1" cellpadding="0" runat="server">
                                <tr>
                                    <td class="td_title_set_cen" colspan="5">
                                        历史帐户</td>
                                </tr>
                                <tr  >
                                   <td class="td_Head_set_cen" style="width: 140px;">
                                        日期</td>
                                    <td class="td_Head_set_cen" style="width: 80px;">
                                        期数</td>
                                    <td class="td_Head_set_cen" style="width: 80px;">
                                        下注金额</td>
                                    <td class="td_Head_set_cen">
                                        结果</td>
                                    <td class="td_Head_set_cen">
                                        馀额</td>
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

