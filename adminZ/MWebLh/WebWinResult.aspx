<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_WebWinResult, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�������</title>
 
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <link href="../style/control_main.css" rel="stylesheet" type="text/css"/>

    <script language="JavaScript" type="text/javascript">
        function ShowPage()
        {
	        location='?PageRow=' + "<% =Request.QueryString["PageRow"] %>" +
	        '&Pageid=' + document.getElementById('DDPage').value;
        }
        function AddWinResult()
        {
             document.location='webAwardRecordAdd.aspx'   ;
        }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_bg" style="text-align: right">
                        <input id="CmdAddWinResul" type="button" onclick="AddWinResult();" value="���" runat="server" visible="false" /><a>�������</a> &nbsp;<select id="DDPage" runat="server" class="zaselect_ste"
                            name="DDPage" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>/<asp:Label ID="ContSumPage" runat="server" meta:resourcekey="ContSumPageResource1"></asp:Label>ҳ</td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="TableA" runat="server" class="m_tab_ed" cellspacing="1" cellpadding="0" border="0">
            <tr>
                <td class="m_mem_ed" align="center" width="50" rowspan="2">
                    ����</td>
                <td class="m_mem_ed" align="center" width="90" rowspan="2">
                    ʱ��</td>
                <td class="m_title_edit" width="640" colspan="13" align="center">
                    �������
                </td>
            </tr>
            <tr>
                <td align="center" width="48" class="m_mem_ed">
                    ����һ</td>
                <td align="center" width="48" class="m_mem_ed">
                    �����</td>
                <td align="center" width="48" class="m_mem_ed">
                    ������</td>
                <td align="center" width="48" class="m_mem_ed">
                    ������</td>
                <td align="center" width="48" class="m_mem_ed">
                    ������</td>
                <td align="center" width="48" class="m_mem_ed">
                    ������</td>
                <td align="center" width="48" class="m_mem_ed">
                    �ر��</td>
                <td align="center" width="48" class="m_mem_ed">
                    �ܺ�</td>
                <td align="center" width="96" class="m_mem_ed" colspan="2">
                    �ر���</td>
                <td align="center" width="48" class="m_mem_ed">
                    ����</td>
                <td align="center" width="96" class="m_mem_ed" colspan="2">
                    �ܺ�</td>
            </tr>
        </table>
    </form>
</body>
</html>
