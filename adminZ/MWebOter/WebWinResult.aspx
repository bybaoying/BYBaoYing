<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_WebWinResult, App_Web_hmaezzcm" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title> 
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" /> 
    <link href="../style/control_main.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript">
        function ShowPage()
        {
	        location='?gt=' + "<% =Request.QueryString["gt"] %>" +
	        '&PageRow=' + "<% =Request.QueryString["PageRow"] %>" +
	        '&Pageid=' + document.getElementById('DDPage').value;
        }
        function AddWinResult()
        {
             document.location='webAwardRecordAdd_D3.aspx?gt=' + "<% =Request.QueryString["gt"] %>"   ;
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
                        <input id="CmdAddWinResul" runat="server" onclick="AddWinResult();" type="button" value="���" visible="false" /><a>�������</a> &nbsp;<select id="DDPage" runat="server" class="zaselect_ste"
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
                <td class="m_mem_ed" align="center" style="width: 50px" rowspan="2">
                    ����</td>
                <td class="m_mem_ed" align="center" style="width: 90px" rowspan="2">
                    ʱ��</td>
                <td class="m_title_edit" colspan="7" align="center">
                    <asp:Label ID="LabGameCaption" runat="server"></asp:Label>-�������
                </td>
            </tr>
            <tr class="m_title_edit">
                <td align="center" style="width: 80px">
                    ��</td>
                <td align="center" style="width: 80px">
                    ʰ</td>
                <td align="center" style="width: 80px">
                    ��</td>
                <td align="center">
                    �ܺ�</td>
                <td align="center">
                    ��ʰ</td>
                <td align="center">
                    ʰ��</td>
                <td align="center">
                    �۸�</td>
            </tr>
        </table>
    </form>
</body>
</html>
