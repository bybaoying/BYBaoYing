<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_admin_EditChip, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta name="CODE_LANGUAGE" content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link href="../style/control_main.css" rel="stylesheet" type="text/css">

    <script>
        //检查信用额度字元限制
        function Tmchange(){
            
            
            var TmPlStr ;

            TmPlStr = document.getElementById('TxtItemValue').value ;
            var arrTmPl = TmPlStr.split(".");     
            
            document.getElementById('TxttmnoValue').value = arrTmPl[document.getElementById('SelectTm').options.selectedIndex];
        }

        function Fun_EChip(){
            this.parent.Frm_EChipHid();

        }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0"
    topmargin="0">
    <form id="Form2" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0" style="width: 233px">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line">
                    </td>
                    <td class="mem_index_ctrl_line">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_bg">
                        &nbsp;&nbsp;即时注单管理 --下注单号<asp:Label ID="TableTit" runat="server"></asp:Label>
                        
                    </td>
                    <td class="mem_index_ctrl_bg" style="text-align: right">
                        <input class="close" onclick="Fun_EChip();" type="button" value="&nbsp;X&nbsp;">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line">
                    </td>
                    <td class="mem_index_ctrl_line">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table1" class="m_tab_ed" cellspacing="1" cellpadding="0" border="0" style="width: 233px">
            <tr class="m_title_edit">
                <td colspan="4">
                    <b>会员帐户：</b>
                    <asp:Label ID="DLParentAdminId" runat="server"></asp:Label></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    注单项目：</td>
                <td class="tdbg 样式3" colspan="3">
                    <select id="SelectTm" runat="server" onchange="Tmchange();" style="width: 152px">
                        <option selected="selected"></option>
                    </select>
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        注单名称：</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="样式3">
                        <asp:TextBox ID="TxttmnoMemo" runat="server"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        注单值：</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="样式3">
                        <asp:TextBox ID="TxttmnoValue" runat="server" MaxLength="12"></asp:TextBox></span></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    赔率：
                </td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="TxttmplValue" runat="server" MaxLength="12"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    注单金额：</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="Txttmwinje" runat="server" MaxLength="6"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                </td>
                <td>
                    <asp:Button ID="ButData" runat="server" Height="20px" OnClick="ButData_Click" Text="保存"
                        OnClientClick="return SubChk('Edd');" />&nbsp;
                    <input id="CmdCancel" class="za_button" name="FormsButton2" onclick="Fun_EChip();" type="button"
                        value="取消" />
                    <input id="TxtItemValue" runat="server" type="text" style="visibility: hidden; width: 1px" /></td>
            </tr>
        </table>
    </form>
</body>
</html>

