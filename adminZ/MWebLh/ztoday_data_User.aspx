<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_ztoday_data_User, App_Web_wtmgu-sw" enableEventValidation="false" %>

<html>
<head id="Head1" runat="server">
    <title>reports_all</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <link href="../style/control_main.css" type="text/css" rel="stylesheet">

    <script language="JavaScript" type="text/javascript">
                function ShowPage()
            {
	            location='ztoday_data_User.aspx?Userid=' + "<% =Request.QueryString["Userid"] %>" +
	                '&AdminLevel=' + "<% =Request.QueryString["AdminLevel"] %>" +
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
                        &nbsp;&nbsp; 报表分类:总帐 -- 投注方式:全部 -- 投注种类:全部 -- 下注管道:全部 -- 帐户分类:<asp:Label ID="Label1" runat="server" Text="帐户即时注单"></asp:Label>-- 总页数:
                        <select id="DDPage" runat="server" class="zaselect_ste" name="page_f" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="ContSumPage" runat="server" Width="11px"></asp:Label>
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
                    <td colspan="8">
                        即时注单--<asp:Label ID="TableTit" runat="server">会员</asp:Label></td>
                    <td colspan="6">
                        <asp:Label ID="LabAdminLevel" runat="server">管理名</asp:Label></td>
                </tr>
                <tr class="m_title_reall">
                    <td width="90">
                        帐户</td>
                    <td width="35">
                        户名</td>
                    <td width="70">
                        上级户</td>
                    <td width="40">
                        笔数</td>
                    <td width="60">
                        下注金额</td>
                    <td width="60">
                        奖金</td>
                    <td width="70">
                        退水</td>
                    <td width="60">
                        结果</td>
                    <td width="50">
                        成数</td>
                    <td width="60">
                        股金</td>
                    <td width="60">
                        退金</td>
                    <td width="60">
                        结果</td>
                    <td width="60">
                        上缴</td>
                    <td width="60">
                        盈余</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
