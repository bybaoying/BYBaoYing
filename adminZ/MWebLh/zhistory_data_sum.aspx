<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_zhistory_data_sum, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>reports_member</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/control_main.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript" src="../Scripts/AutoRefreshShow.js"></script>

    <script language="JavaScript" type="text/javascript">
	    if(self == top) location = '/';
        function onLoad()
        {

        }

        function ShowPage()
        {
        
	        location='?UserId=' + "<% =Request.QueryString["UserId"] %>" + 
	            '&AdminLevel=' + "<% =Request.QueryString["AdminLevel"] %>" + 
	            '&ctype=' + "<% =Request.QueryString["ctype"] %>" + 
	            '&date_start=' + "<% =Request.QueryString["date_start"] %>" + 
	            '&date_end=' + "<% =Request.QueryString["date_end"] %>" + 
	            '&wtype=' + "<% =Request.QueryString["wtype"] %>" + 
	            '&Select_Tj=' + document.getElementById('Select_Tj').value + 
	            '&Select_Order=' + document.getElementById('Select_Order').value + 
	            '&Pageid=' + document.getElementById('DDPage').value ;
        }

    </script>

</head>
<body onload="onLoad();" text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <table class="m_tab_Head_Rp" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line" colspan="2">
                    </td>
                </tr>
                <tr class="mem_index_ctrl_bg">
                    <td class="mem_index_ctrl_bg" style="height: 22px">
                        &nbsp;&nbsp; ����:
                        <select class="za_select" onchange="ShowPage();" name="Select_Tj" id="Select_Tj" runat="server">
                            <option value="1" selected>�����</option>
                            <option value="2">�����</option>
                        </select>
                        <select class="za_select" onchange="ShowPage();" name="Select_Order" id="Select_Order" runat="server">
                            <option value="1" selected>����(��С����)</option>
                            <option value="2">����(�ɴ�С)</option>
                        </select>
                        -- ��ҳ��:
                        <select class="zaselect_ste" onchange="ShowPage();" name="page_f" id="DDPage" runat="server">
                            <option value="1" selected>1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="ContSumPage" runat="server"></asp:Label>
                        ҳ&nbsp; <font color="#ff0000"></font>
                    </td>
                    <td style="text-align: right">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line" colspan="2">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="rp_m_tab" cellspacing="1" cellpadding="0" width="780" border="0" id="TableA" runat="server">
            <tbody>
                <tr class="m_title_reall">
                    <td colspan="11">
                        ��ʷע���ϼ���ϸ</td>
                </tr>
                <tr class="m_title_reall">
                    <td>
                        ���</td>
                    <td style="width: 50px">
                        ����</td>
                    <td style="width: 25px">
                        ����</td>
                    <td width="60px">
                        ���</td>
                    <td width="60px">
                        ����</td>
                    <td width="60">
                        ����</td>
                    <td width="25px">
                        ��ˮ</td>
                    <td width="60px">
                        ����</td>
                    <td width="60px">
                        ���</td>
                    <td width="25">
                        ����</td>
                    <td width="60px">
                        �������</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
