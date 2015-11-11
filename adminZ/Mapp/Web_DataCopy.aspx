<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_Web_DataCopy, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../style/members.css" rel="stylesheet" type="text/css">

    <script language="JavaScript" type="text/javascript" >

        function Data_Delete(){
	            if(confirm('确定删除账号吗?如选择删除,此帐户下的所有帐户及注单一并删除!'))
	            {
	                }
	            else
	            {
	                return false;
	                }
        }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0"
    topmargin="0">
    <form id="form1" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="td_banner_m">
                    <td>
                        &nbsp;&nbsp;数据备份:
                    </td>
                </tr>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="m_tab_ed" cellspacing="1" cellpadding="0" border="0" id="TableA" >
            
                <tr class="m_title_edit" align="center">
                    <td>
                        <div align="center">
                            数据备份日期</div>
                    </td>
                    <td>
                        <div align="center">
                            管理员ID</div>
                    </td>
                    <td>
                        <div align="center">
                            管理员IP</div>
                    </td>
                    <td colspan="2">
                        <div align="center">
                            功能</div>
                    </td>
                </tr>
                <tbody  id="TBData" runat="server"></tbody>
                <tr align="center" class="mem_index_cen">
                    <td colspan="5">
                        <asp:Button ID="ButData" runat="server" Width="85px" Text="提交备份" OnClick="ButData_Click">
                        </asp:Button>
                    </td>
                </tr>
            <tr align="center" class="mem_index_cen">
                <td colspan="5"><span >数据库同步:</span>
                    <asp:CheckBox ID="ChkAllowSend" runat="server" Text="发送允许" />
                    <asp:CheckBox ID="ChkAllowGet" runat="server" Text="接收允许" />
                    <asp:Button ID="ButAllowSave" runat="server" Height="22px" OnClick="ButAllowSave_Click" Text="保存" Width="53px" /></td>
            </tr>
            
        </table>
    </form>
</body>
</html>

