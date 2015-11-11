<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_WebWinResult, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>开奖结果</title>
 
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
                        <input id="CmdAddWinResul" type="button" onclick="AddWinResult();" value="添加" runat="server" visible="false" /><a>开奖结果</a> &nbsp;<select id="DDPage" runat="server" class="zaselect_ste"
                            name="DDPage" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>/<asp:Label ID="ContSumPage" runat="server" meta:resourcekey="ContSumPageResource1"></asp:Label>页</td>
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
                    期数</td>
                <td class="m_mem_ed" align="center" width="90" rowspan="2">
                    时间</td>
                <td class="m_title_edit" width="640" colspan="13" align="center">
                    彩球号码
                </td>
            </tr>
            <tr>
                <td align="center" width="48" class="m_mem_ed">
                    正码一</td>
                <td align="center" width="48" class="m_mem_ed">
                    正码二</td>
                <td align="center" width="48" class="m_mem_ed">
                    正码三</td>
                <td align="center" width="48" class="m_mem_ed">
                    正码四</td>
                <td align="center" width="48" class="m_mem_ed">
                    正码五</td>
                <td align="center" width="48" class="m_mem_ed">
                    正码六</td>
                <td align="center" width="48" class="m_mem_ed">
                    特别号</td>
                <td align="center" width="48" class="m_mem_ed">
                    总合</td>
                <td align="center" width="96" class="m_mem_ed" colspan="2">
                    特别码</td>
                <td align="center" width="48" class="m_mem_ed">
                    合数</td>
                <td align="center" width="96" class="m_mem_ed" colspan="2">
                    总和</td>
            </tr>
        </table>
    </form>
</body>
</html>
