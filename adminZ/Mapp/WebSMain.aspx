<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WebSMain, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../style/control_main.css" type="text/css" rel="stylesheet">

    <script language="JavaScript" type="text/javascript">
    function BrowseOpen(ur,winName){
	    var s='perLogin';	
	    if(winName==s) 
	     window.open(ur,winName);
	    
 	    else window.open(ur,winName,'width=350,height=450,resizable=yes,menubar=no,toolbar=no,scrollbars=no,status=yes') ;	
    }

             function UserXyndqlAll()
            {
                	            if(confirm('��Ա�������ö������!?' + '\r' + '���ڻ�Ա���ʺ�ʹ��!'))
	            {
                    var lSrc = "admin_UserXyndql.aspx";
    //                document.getElementById('UserlineOut').src =  lSrc ;//�����ҳ�������������
                    
                    window.UserlineOut.location.href =  lSrc ;//�����ҳ�������ٴ����������������name ������ID
	                }
	            else
	            {
	                return false;
	                }
            }   
            
            function UserXyndqlMsg(vBalveStr)
            {
                if (vBalveStr == "ok")
                {
                    alert("�������ö���������!")
                }
            }          
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <table class="border" cellspacing="1" cellpadding="2" width="750" border="0">
            <tbody>
                <tr align="center" bgcolor="#39867b">
                    <td class="mem_index_title" colspan="5">
                        <strong>��������</strong></td>
                </tr>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                    </td>
                    <td align="center" class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" align="center" width="20%" id="tm1" runat="server">
                        ���P</td>
                    <td class="tdbg" align="center" width="20%" id="d31" runat="server">
                        ����</td>
                    <td class="tdbg" align="center" width="20%" id="p31" runat="server">
                        �w��</td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                        ������¼</td>
                    <td class="tdbg">
                    </td>
                    <td class="tdbg" style="visibility: hidden">
                    </td>
                    <td class="tdbg">
                    </td>
                    <td class="tdbg">
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td class="tdbg" align="center" id="tm2" runat="server">
                        <a href="../MwebLh/WebWinResult.aspx" target="main">���P:������¼</a>
                    </td>
                    <td class="tdbg" align="center" id="d32" runat="server">
                        <a href="../MWebOter/WebWinResult.aspx?gt=D3" target="main">����:������¼</a>
                    </td>
                    <td class="tdbg" align="center" id="p32" runat="server">
                        <a href="../MWebOter/WebWinResult.aspx?gt=P3" target="main">�w��:������¼</a>
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="border" cellspacing="1" cellpadding="2" width="750" border="0" id="TableSelect" runat="server">
            <tbody>
                <tr>
                    <td class="tdbg" width="19%" align="center">
                        ϵͳ����</td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                </tr>
                <tr>
                    <td class="tdbg" align="center" style="height: 19px">
                    </td>
                    <td align="center" class="tdbg" style="height: 19px">
                    </td>
                    <td class="tdbg" align="center" id="tm3" runat="server">
                        <a href="../MwebLh/WebAwardNext.aspx" target="main" title="���ÿ�������������ʱ�䡢ע��Ͷ�����估������Ϣ">���ڹ���</a>
                    </td>
                    <td align="center" class="tdbg" style="height: 19px" id="d33" runat="server">
                        <a href="../MWebOter/WebAwardNext.aspx?gt=D3" target="main" title="���ÿ�������������ʱ�䡢ע��Ͷ�����估������Ϣ">���ڹ���</a>
                    </td>
                    <td align="center" class="tdbg" style="height: 19px" id="p33" runat="server">
                        <a href="../MWebOter/WebAwardNext.aspx?gt=P3" target="main">���ڹ���</a>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg" id="tm4" runat="server">
                        <a href="../Mapp/WebPlAutoSetup.aspx?SysType=TM" target="main" title="�������Զ��� �ڲ������ã�">���ʲ�������</a></td>
                    <td align="center" class="tdbg" id="d34" runat="server">
                        <a href="../Mapp/WebPlAutoSetup.aspx?SysType=D3" target="main" title="�������Զ��� �ڲ������ã�">���ʲ�������</a>
                    </td>
                    <td align="center" class="tdbg" id="p34" runat="server">
                        <a href="../Mapp/WebPlAutoSetup.aspx?SysType=P3" target="main" title="�������Զ��� �ڲ������ã�">���ʲ�������</a>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg" colspan="1">
                    </td>
                    <td align="center" class="tdbg" colspan="3">
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td class="tdbg" align="center" id="tm5" runat="server">
                        <a id="A1" href="../Mapp/admin_Class.aspx?SysType=TM" target="main">��Ŀ���ع���</a>
                    </td>
                    <td align="center" class="tdbg" id="d35" runat="server">
                        <a id="A4" href="../Mapp/admin_Class.aspx?SysType=D3" target="main">��Ŀ���ع���</a>
                    </td>
                    <td align="center" class="tdbg" id="p35" runat="server">
                        <a id="A5" href="../Mapp/admin_Class.aspx?SysType=P3" target="main">��Ŀ���ع���</a>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg" id="tm6" runat="server">
                        <a id="TmPropertyId" runat="server" href="../MwebLh/WebTmProperty_Edit.aspx" target="main">ϵͳ��Ф����</a>
                    </td>
                    <td align="center" class="tdbg" id="d36" runat="server">
                    </td>
                    <td align="center" class="tdbg" id="p36" runat="server">
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg" colspan="1">
                        <a id="TmAdminSetup" runat="server" href="admin_Setup.aspx" target="main">ϵͳ��������</a>
                    </td>
                    <td align="center" class="tdbg" colspan="3">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="border" cellspacing="1" cellpadding="2" width="750" border="0" id="TabAward" runat="server">
            <tbody>
                <tr>
                    <td class="tdbg" width="19%" align="center">
                        ��������</td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                </tr>
                <tr>
                    <td class="tdbg" align="center">
                    </td>
                    <td align="center" class="tdbg">
                        <a onclick='javascript:UserXyndqlAll();' href="javascript:%20void(0);">������������</a></td>
                    <td class="tdbg" align="center" id="tm7" runat="server">
                        <a href="../MwebLh/WebStartAward.aspx" target="main" title="ׯ�ҿ����ڷ��̺󣬿����Լ���ҡ����">����ҡ��</a>
                    </td>
                    <td align="center" class="tdbg" id="d37" runat="server">
                        <a href="../MWebOter/WebStartAward.aspx?gt=D3" target="main" title="ׯ�ҿ����ڷ��̺󣬿����Լ���ҡ����">����ҡ��</a>
                    </td>
                    <td align="center" class="tdbg" id="p37" runat="server">
                        <a href="../MWebOter/WebStartAward.aspx?gt=P3" target="main" title="ׯ�ҿ����ڷ��̺󣬿����Լ���ҡ����">����ҡ��</a>
                    </td>
                </tr>
                <tr>
                    <td class="tdbg" align="center">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td class="tdbg" align="center" id="tm8" runat="server">
                        <a href="../MwebLh/WebStartWin.aspx" target="main" title="ׯ�Ҹ���ҡ����ΪÿλͶע��Ա�ɷ����𡢼���ˮ���">�����ɽ�</a>
                    </td>
                    <td align="center" class="tdbg" id="d38" runat="server">
                        <a href="../MWebOter/WebStartWin.aspx?gt=D3" target="main" title="ׯ�Ҹ���ҡ����ΪÿλͶע��Ա�ɷ����𡢼���ˮ���">�����ɽ�</a>
                    </td>
                    <td align="center" class="tdbg" id="p38" runat="server">
                        <a href="../MWebOter/WebStartWin.aspx?gt=P3" target="main" title="ׯ�Ҹ���ҡ����ΪÿλͶע��Ա�ɷ����𡢼���ˮ���">�����ɽ�</a>
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="border" cellspacing="1" cellpadding="2" width="750" border="0" id="TabChipStart" runat="server">
            <tbody>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                        ��ע״��</td>
                    <td class="tdbg" colspan="1">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                    </td>
                    <td align="center" class="tdbg" width="20%">
                    
                    
                        <a href="../Mapp/ztoday_chip_Download_XmlData.aspx?xml=0" target="main" id="HLink_Xml_Chip_Download" runat="server">ע������</a>
                    </td>
                    <td class="tdbg" align="center" width="20%" id="tm9" runat="server">
                        <asp:HyperLink ID="HLink_chip_list" runat="server" NavigateUrl="../MwebLh/ztoday_chip_list.aspx">ע����ˮ</asp:HyperLink></td>
                    <td class="tdbg" align="center" width="20%" id="d39" runat="server">
                        <asp:HyperLink ID="HLink_chip_listD3" runat="server" NavigateUrl="../MWebOter/ztoday_chip_list.aspx?gt=D3">ע����ˮ</asp:HyperLink></td>
                    <td class="tdbg" align="center" width="20%" id="p39" runat="server">
                        <asp:HyperLink ID="HLink_chip_listP3" runat="server" NavigateUrl="../MWebOter/ztoday_chip_list.aspx?gt=P3">ע����ˮ</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td class="tdbg" align="center" id="tm10" runat="server">
                        <asp:LinkButton ID="HLink_chip_Download" OnClientClick="BrowseOpen('../MwebLh/ztoday_chip_Download.aspx','perLogin');" runat="server">ע����ʱ����</asp:LinkButton></td>
                    <td class="tdbg" align="center" id="d310" runat="server">
                    </td>
                    <td class="tdbg" align="center" id="p310" runat="server">
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td class="tdbg" align="center" id="tm11" runat="server">
                        <asp:HyperLink ID="HLink_chip_hotspot" runat="server" NavigateUrl="../MwebLh/ztoday_chip_hotspot.aspx?tmItem=2&tmOrder=2&tmclassid=all&stoptime=-1">ע��ͳ��(�ߵ�)</asp:HyperLink></td>
                    <td class="tdbg" align="center" id="d311" runat="server">
                    </td>
                    <td class="tdbg" align="center" id="p311" runat="server">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="border" cellspacing="1" cellpadding="2" width="750" border="0" id="TabChipGo" runat="server" visible="false">
            <tbody>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                        �����ߵ�</td>
                    <td align="center" class="tdbg">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                    </td>
                    <td align="center" class="tdbg" width="20%">
                    </td>
                    <td align="center" class="tdbg" width="20%" id="tm12" runat="server">
                        <asp:HyperLink ID="HLink_Chip_Go" runat="server" NavigateUrl="../MwebLh/ztoday_chip_go.aspx" Visible="False">����ע��(�ߵ�)</asp:HyperLink>
                    </td>
                    <td align="center" class="tdbg" width="20%" id="d312" runat="server">
                    </td>
                    <td align="center" class="tdbg" width="20%" id="p312" runat="server">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="border" cellspacing="1" cellpadding="2" width="750" border="0" id="TabAdmin" runat="server">
            <tbody>
                <tr>
                    <td align="center" class="tdbg">
                        ��ʷ����</td>
                    <td class="tdbg" colspan="1">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" width="20%">
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                    </td>
                    <td class="tdbg" colspan="1" style="text-align: center" id="SYDataCopy" runat="server">
                        <a href="Web_DataCopy.aspx" target="main" id="LinkDataCopy" runat="server">���ݿⱸ��</a>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                    </td>
                    <td align="center" class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" align="center" width="20%" id="tm13" runat="server">
                        <a href="../MwebLh/zhistory_data.aspx?gt=TM" target="main" id="LinkDataManage" runat="server">���ݹ���</a>
                    </td>
                    <td class="tdbg" align="center" width="20%" id="d313" runat="server">
                        <a href="../MwebLh/zhistory_data.aspx?gt=D3" target="main" id="A2" runat="server">���ݹ���</a>
                    </td>
                    <td class="tdbg" align="center" width="20%" id="p313" runat="server">
                        <a href="../MwebLh/zhistory_data.aspx?gt=P3" target="main" id="A3" runat="server">���ݹ���</a>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                    </td>
                    <td class="tdbg" colspan="1" style="text-align: center">
                        <a id="LinkMoneyManage" runat="server" href="WMoneyManage.aspx" target="main" class="top_font_menu">Ǯ������</a>
                    </td>
                    <td runat="server" align="center" class="tdbg" width="20%">
                    </td>
                    <td runat="server" align="center" class="tdbg" width="20%">
                    </td>
                    <td runat="server" align="center" class="tdbg" width="20%">
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                        ���߹���
                    </td>
                    <td align="center" class="tdbg" colspan="1">
                        <a href="admin_Userline.aspx" target="main">������Ա</a>
                    </td>
                </tr>
            </tbody>
        </table>
        <iframe id="UserlineOut" frameborder="0" height="200" name="UserlineOut" scrolling="no" src="about:blank" style="visibility: hidden; width: 172px; height: 13px" width="200"></iframe>
    </form>
</body>
</html>
