<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_zhistory_data_user, App_Web_ruumpoam" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>reports_member</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <link href="../style/control_main.css" type="text/css" rel="stylesheet"/>

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        function ShowPage()
        {
	        location='zhistory_data_user_mx.aspx?Userid=' + "<% =Request.QueryString["Userid"] %>" +
	        '&ctype=' + "<% =Request.QueryString["ctype"] %>" + 
	        '&date_start=' + "<% =Request.QueryString["date_start"] %>" +
	        '&date_end=' + "<% =Request.QueryString["date_end"] %>" +
	         '&wtype=' + "<% =Request.QueryString["wtype"] %>" +  
	         '&Pageid=' + document.getElementById('DDPage').value;
        }

    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td colspan="2" height="4">
                    </td>
                </tr>
                <tr>
                    <td class="m_tline">
                        &nbsp;&nbsp;日期:<asp:Label ID="date_start" runat="server"></asp:Label>~<asp:Label ID="date_end" runat="server"></asp:Label>
                        -- 下注管道:全部 -- 总页数:
                        <select id="DDPage" runat="server" class="zaselect_ste" name="DDPage" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="ContSumPage" runat="server" Width="11px"></asp:Label>
                        页 -- <a href="javascript:history.go(-1);">回上一页</a> -- <a href="..\Mapp\zhistory_Report.aspx">回报表查询</a></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="4">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="rp_m_tab" cellspacing="1" cellpadding="0" width="780" border="0" id="TableA" runat="server">
            <tbody>
                <tr class="rp_m_title">
                    <td colspan="9">
                        报表管理-历史会员注单明细: &nbsp;
                        <asp:Label ID="TxtUserId" runat="server"></asp:Label>&nbsp; &nbsp; &nbsp;</td>
                    <td colspan="6">
                        <asp:Label ID="LabAdminLevel" runat="server">管理名</asp:Label></td>
                </tr>
                <tr class="rp_m_title">
                    <td style="width: 60px">
                        下注单号</td>
                    <td style="width: 80px">
                        种类</td>
                    <td style="width: 25px">
                        盘别</td>
                    <td>
                        内容</td>
                    <td width="50">
                        下注金额</td>
                    <td style="width: 50px">
                        金额</td>
                    <td width="25">
                        返水</td>
                    <td width="25">
                        返金</td>
                    <td style="width: 50px">
                        结果</td>
                    <td width="30">
                        成数</td>
                    <td width="50">
                        股金</td>
                    <td width="50">
                        退金</td>
                    <td width="50">
                        结果</td>
                    <td width="50">
                        上缴</td>
                    <td width="50">
                        盈余</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
