<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_ztoday_chip_sum, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>reports_member</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <link href="../style/control_main.css" type="text/css" rel="stylesheet"/>

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript" src="../Scripts/AutoRefreshShow.js"></script>

    <script language="JavaScript" type="text/javascript">
        function onLoad()
        {
            lReftime ="<% =Request.QueryString["stoptime"] %>";
            AutoRefShow(lReftime,'UserId=' + "<% =Request.QueryString["UserId"] %>" + 
            '&AdminLevel=' + "<% =Request.QueryString["AdminLevel"] %>" + 
	            '&Select_Tj=' + document.getElementById('Select_Tj').value + 
	            '&Select_Order=' + document.getElementById('Select_Order').value + 
	            '&Pageid=' + document.getElementById('DDPage').value  + '&');
	         

        }

        function ShowPage()
        {
        
	        location='?UserId=' + "<% =Request.QueryString["UserId"] %>" + 
	            '&AdminLevel=' + "<% =Request.QueryString["AdminLevel"] %>" + 
	            '&ctype=' + "<% =Request.QueryString["ctype"] %>" + 
	            '&Select_Tj=' + document.getElementById('Select_Tj').value + 
	            '&Select_Order=' + document.getElementById('Select_Order').value + 
	            '&Pageid=' + document.getElementById('DDPage').value + 
	            '&stoptime=' + document.getElementById('retime').value; 
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
                    <td class="mem_index_ctrl_bg" style="height: 22px;">
                        &nbsp;&nbsp; 排序:
                        <select class="za_select" onchange="ShowPage();" name="Select_Tj" id="Select_Tj" runat="server">
                            <option value="1" selected>按球号</option>
                            <option value="2">按金额</option>
                        </select>
                        <select class="za_select" onchange="ShowPage();" name="Select_Order" id="Select_Order" runat="server">
                            <option value="1" selected>升幂(由小到大)</option>
                            <option value="2">降幂(由大到小)</option>
                        </select>
                        -- 总页数:
                        <select class="zaselect_ste" onchange="ShowPage();" name="page_f" id="DDPage" runat="server">
                            <option value="1" selected>1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="ContSumPage" runat="server"></asp:Label>
                        页&nbsp; <font color="#ff0000"></font>
                    </td>
                    <td style="text-align: right">
                        <strong><a class="click_text" onclick="ShowPage();">刷新</a>:</strong>
                        <asp:Label ID="LabReftime" runat="server"></asp:Label>&nbsp;
                        <select id="retime" runat="server" name="retime" onchange="ShowPage();">
                            <option selected="selected" value="-1">不刷新</option>
                            <option value="20">20 sec</option>
                            <option value="40">40 sec</option>
                            <option value="60">60 sec</option>
                            <option value="120">120 sec</option>
                            <option value="180">180 sec</option>
                        </select>
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
                    <td colspan="10">
                        即时注单合计明细</td>
                </tr>
                <tr class="m_title_reall">
                    <td>
                        球号</td>
                    <td style="width: 70px">
                        种类</td>
                    <td style="width: 40px">
                        笔数</td>
                    <td width="80">
                        金额</td>
                    <td width="80px">
                        赔率</td>
                    <td width="80">
                        可蠃金额</td>
                    <td style="width: 40px">
                        退水</td>
                    <td style="width: 80px">
                        退金</td>
                    <td width="30">
                        成数</td>
                    <td width="50">
                        股金</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
