<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_zhistory_data_Super, App_Web_ruumpoam" enableEventValidation="false" %>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>reports_all</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <link href="../style/control_main.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript">
                function ShowPage()
            {
	            location='zhistory_data_Super.aspx?Userid=' + "<% =Request.QueryString["Userid"] %>" +
	                '&AdminLevel=' + "<% =Request.QueryString["AdminLevel"] %>" +
	                '&date_start=' + "<% =Request.QueryString["date_start"] %>" +
	                '&date_end=' + "<% =Request.QueryString["date_end"] %>" +
	                '&ctype=' + "<% =Request.QueryString["ctype"] %>" +  
	                 '&wtype=' + "<% =Request.QueryString["wtype"] %>" +  
	                 '&Pageid=' + document.getElementById('DDPage').value;
            }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" border="0" class="m_tab_Head_Rp">
            <tbody>
                <tr>
                    <td colspan="2" height="4">
                    </td>
                </tr>
                <tr>
                    <td class="m_tline">
                        &nbsp;&nbsp;日期:<asp:Label ID="date_start" runat="server"></asp:Label>~<asp:Label ID="date_end" runat="server"></asp:Label>
                        -- 报表分类:总帐 -- 投注方式:全部 -- 投注种类:全部 -- 下注管道:全部 -- 帐户分类:<asp:Label ID="Label1" runat="server" Text="历史帐户"></asp:Label>-- 总页数:
                        <select id="DDPage" runat="server" class="zaselect_ste" name="page_f" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="ContSumPage" runat="server"></asp:Label>
                        页-- <a href="javascript:history.go(-1);">回上一页</a>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="4">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="m_tab" cellspacing="1" cellpadding="0" bgcolor="#000000" border="0" id="TableA" runat="server">
            <tbody>
                <tr class="m_title_reall">
                    <td colspan="11">
                        信用额度--<asp:Label ID="TableTit" runat="server"></asp:Label></td>
                </tr>
                <tr class="m_title_reall">
                    <td width="90">
                        <span style="font-family: 宋体">帐户</span></td>
                    <td width="35">
                        户名</td>
                    <td width="90">
                        上级户</td>
                    <td width="90">
                        笔数</td>
                    <td width="70">
                        下注金额</td>
                    <td width="90">
                        奖金</td>
                    <td width="70">
                        退水</td>
                    <td width="60">
                        结果</td>
                    <td width="90">
                        成数</td>
                    <td>
                        股金</td>
                    <td id="TDMxData" runat="server">
                        号码</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
