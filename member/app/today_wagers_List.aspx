<%@ page language="C#" autoeventwireup="true" inherits="member_app_today_wagers_List, App_Web_vwupdd6k" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Main_left_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />

    <script language="JavaScript" type="text/javascript">
			if(self == top) location = '/';


                function ShowPage()
                {
	                location='?GameType=' + "<% =Request.QueryString["GameType"] %>" +
	                '&PageRow=' + "<% =Request.QueryString["PageRow"] %>" +
	                '&Pageid=' + document.getElementById('DDPage').value;
                }
    </script>

</head>
<%-- oncontextmenu="window.event.returnValue=false" leftmargin="0" topmargin="0"
    document.btype.value="parent.body.document.btype.value" --%>
<body>
    <div class="div_Class">
        <div class="div_Head_a">
            <div id="countdown_num_title" class="m-title" runat="server">
            </div>
        </div>
        <div class="div_Head_b">
            <div class="m-title">
                ��ȷ�������ʻ�</div>
        </div>
        <div class="div_Head_d">
            <div class="div_table">
                <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                    <tbody>
                        <tr>
                            <td class="td_Caption_set">
                                ����:
                            </td>
                            <td>
                                <span id="Labtmwinno" class="span_set" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_Caption_set">
                                �ʻ�����:
                            </td>
                            <td>
                                <span id="TxtUsername" class="span_set" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_Caption_set">
                                ���ö��:
                            </td>
                            <td>
                                <span id="xynd" class="span_set" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_Caption_set">
                                ʹ�Îńe:
                            </td>
                            <td>
                                <span id="LabBzname" class="span_set" runat="server">�����(RMB)</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="div_table">
            <table id="TableA" class="Main_Table" cellspacing="1" cellpadding="0" border="0">
                <thead>
                    <tr>
                        <td class="td_Head_set_cen">
                            ����</td>
                        <td class="td_Head_set_cen">
                            ����/����</td>
                        <td class="td_Head_set_cen">
                            ���</td>
                    </tr>
                </thead>
                <tbody id="TabTbody" runat="server">
                </tbody>
                <tr>
                    <td class="td_Head_set_cen">
                        �ϼ�
                    </td>
                    <td class="td_Head_set_cen">
                    </td>
                    <td class="td_Head_set_cen">
                        <asp:Label ID="LabTje" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="td_Head_set_cen">
                        <input id="btnCancel" runat="server" class="no" name="btnCancel" type="button" value="�ر�" />
                    </td>
                    <td class="td_Head_set_cen" colspan="2">
                        <select id="DDPage" runat="server" class="zaselect_ste" name="DDPage" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>
                        /<asp:Label ID="ContSumPage" runat="server">0000</asp:Label>ҳ
                    </td>
                </tr>
            </table>
        </div>
        <div style="height: 117px;">
        </div>
    </div>
</body>
</html>
