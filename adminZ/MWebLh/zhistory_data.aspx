<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_zhistory_data, App_Web_ruumpoam" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <title>reports_all</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">

    <script language="JavaScript" src="../Scripts/JsTableRowLight.js"></script>

    <link href="../style/control_main.css" type="text/css" rel="stylesheet"/>

    <script language="JavaScript" type="text/javascript">
            function ShowPage()
            {
	            location='?Pageid=' + document.getElementById('DDPage').value;
            }
            function DataDelete()
            {
	            if(confirm('确定删除选定期数的数据吗!?'))
	            {
	                }
	            else
	            {
	                return false;
	                }
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
                    <td class="m_tline" style="height: 22px">
                        &nbsp;&nbsp;历史帐户数据管理—下注金额统计（按期数）-- 总页数:
                        <select id="DDPage" runat="server" class="zaselect_ste" name="page_f" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="ContSumPage" runat="server"></asp:Label>页-- <a href="javascript:history.go(-1);">回上一页</a> &nbsp;
                        <asp:Button ID="ButDelete" runat="server" OnClick="ButDelete_Click" Text="删除" OnClientClick="return DataDelete();" /></td>
                    <td style="height: 22px">
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
                    <td colspan="6">
                        <asp:Label ID="LabGameCaption" runat="server"></asp:Label>-帐户数据管理</td>
                </tr>
                <tr class="m_title_reall">
                    <td width="90">
                        <span style="font-family: 宋体">选择</span></td>
                    <td width="35">
                        日期</td>
                    <td width="90">
                        期数</td>
                    <td width="70">
                        下注金额</td>
                    <td width="60">
                        结果</td>
                    <td width="90">
                        馀额</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
