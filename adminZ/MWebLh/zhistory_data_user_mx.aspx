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
                        &nbsp;&nbsp;����:<asp:Label ID="date_start" runat="server"></asp:Label>~<asp:Label ID="date_end" runat="server"></asp:Label>
                        -- ��ע�ܵ�:ȫ�� -- ��ҳ��:
                        <select id="DDPage" runat="server" class="zaselect_ste" name="DDPage" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="ContSumPage" runat="server" Width="11px"></asp:Label>
                        ҳ -- <a href="javascript:history.go(-1);">����һҳ</a> -- <a href="..\Mapp\zhistory_Report.aspx">�ر����ѯ</a></td>
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
                        �������-��ʷ��Աע����ϸ: &nbsp;
                        <asp:Label ID="TxtUserId" runat="server"></asp:Label>&nbsp; &nbsp; &nbsp;</td>
                    <td colspan="6">
                        <asp:Label ID="LabAdminLevel" runat="server">������</asp:Label></td>
                </tr>
                <tr class="rp_m_title">
                    <td style="width: 60px">
                        ��ע����</td>
                    <td style="width: 80px">
                        ����</td>
                    <td style="width: 25px">
                        �̱�</td>
                    <td>
                        ����</td>
                    <td width="50">
                        ��ע���</td>
                    <td style="width: 50px">
                        ���</td>
                    <td width="25">
                        ��ˮ</td>
                    <td width="25">
                        ����</td>
                    <td style="width: 50px">
                        ���</td>
                    <td width="30">
                        ����</td>
                    <td width="50">
                        �ɽ�</td>
                    <td width="50">
                        �˽�</td>
                    <td width="50">
                        ���</td>
                    <td width="50">
                        �Ͻ�</td>
                    <td width="50">
                        ӯ��</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
