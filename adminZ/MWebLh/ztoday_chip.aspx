<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_ztoday_chip, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>������ϸ</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/control_main.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">
        function ShowPage()
        { 
//            var lUserid = "";
//            alert(lUserid=="");
//            if 
	        location='ztoday_chip.aspx?TmTypeId=' + "<% =Request.QueryString["TmTypeId"] %>" +
	         '&Userid=' + "<% =Request.QueryString["Userid"] %>" + 
	         '&AdminLevel=' + "<% =Request.QueryString["AdminLevel"] %>"  +
	         '&Class_id=' + "<% =Request.QueryString["Class_id"] %>" +
	         '&ctype=' + "<% =Request.QueryString["ctype"] %>" + 
	         '&ltype=' + "<% =Request.QueryString["ltype"] %>" +  
	         '&Pageid=' + document.getElementById('DDPage').value;
        }
        function chip_delete(Type,ChipId)
        {        
                   
            var lSrc = "../Mapp/admin_Chip_delete.aspx?ChipType=" + Type + "&ChipId=" + ChipId;
 
            this.window.frames['Frm_EChip'].location.href =  lSrc ;
        }
        function chip_delete_success(Type,ChipId)
        {
            
            var lRowId = "Row_" + ChipId; 
//            var lObjRow = document.getElementById("TableA").rows[lRowId ].rowIndex;
//            alert(document.getElementById(lRowId).parentNode.id);
//            document.getElementById(lRowId).parentNode.id;
//             document.getElementById('lineState' + Type + "-" + User ).setAttribute("className", "");
//             document.getElementById("TableA").deleteRow(lObjRow );
             document.getElementById(lRowId).parentNode.removeChild( document.getElementById(lRowId) );
        }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="780" border="0">
            <tbody>
                <tr>
                    <td colspan="2" height="4">
                    </td>
                </tr>
                <tr>
                    <td class="m_tline" width="750">
                        &nbsp;&nbsp;�������:��ʱע����ϸ &nbsp;&nbsp;&nbsp; ��ҳ��:
                        <select id="DDPage" runat="server" class="zaselect_ste" name="DDPage" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="ContSumPage" runat="server" Width="11px"></asp:Label>
                        ҳ -- <a href="javascript:history.go(-1);">����һҳ</a>
                    </td>
                    <td width="30">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="4">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="rp_m_tab" cellspacing="1" cellpadding="0"  border="0" id="TableA" runat="server">
            <tbody>
                <tr class="rp_m_title">
                    <td colspan="9">
                        ��ʱע����ϸ</td>
                    <td colspan="6">
                        <asp:Label ID="LabAdminLevel" runat="server">������</asp:Label>
                    </td>
                </tr>
                <tr class="rp_m_title">
                    <td width="70">
                        ��Ա</td>
                    <td style="width: 50px">
                        ��ע����</td>
                    <td style="width: 70px">
                        ����</td>
                    <td style="width: 30px">
                        �̱�</td>
                    <td>
                        ����</td>
                    <td width="50">
                        ���</td>
                    <td style="width: 30px">
                        ��ˮ</td>
                    <td width="50">
                        �˽�</td>
                    <td width="60">
                        ����</td>
                    <td width="30">
                        ����</td>
                    <td width="50">
                        �ɽ�</td>
                    <td width="40">
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
    <div class="divPropertyBar" id="line_window" style="visibility: hidden; position: absolute">
        <iframe id="Frm_EChip" name="Frm_EChip" src="about:blank" width="233" height="241" frameborder="0" scrolling="no"></iframe>
    </div>
</body>
</html>
