<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_admin_mmem_data, App_Web_i89w4dwr" enableEventValidation="false" %>


<html>
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/members.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">
    function FsValueCheck(){
     
 
        
        var lTabRow = Number( document.getElementById("TableA").rows.length) -3 ;
            var vAValue = 0 ;

            var VMValue = 0 ;
            
            
            for(i=0; i<lTabRow; i++) {

                vAValue = Number(document.getElementById("TmTypeFs" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeFs_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  ��ˮA����ֵ�������ֵ" );
		            return false;
	            }
	            vAValue = Number(document.getElementById("TmTypeFsB" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeFsB_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  ��ˮB����ֵ�������ֵ" );
		            return false;
	            }
                vAValue = Number(document.getElementById("TmTypeFsC" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeFsC_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  ��ˮC����ֵ�������ֵ" );
		            return false;
	            }
                vAValue = Number(document.getElementById("TmTypeFsD" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeFsD_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  ��ˮD����ֵ�������ֵ" );
		            return false;
	            }	
	            
	            
//	            vAValue = Number(document.getElementById("TmTypeFsE" + String( i)).value) ;
//                vMValue = Number(document.getElementById("TmTypeFsE_m" + String( i)).innerHTML) ;
//	            if (vAValue > vMValue) {
//		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  ��ˮE����ֵ�������ֵ" );
//		            return false;
//	            }
//                vAValue = Number(document.getElementById("TmTypeFsF" + String( i)).value) ;
//                vMValue = Number(document.getElementById("TmTypeFsF_m" + String( i)).innerHTML) ;
//	            if (vAValue > vMValue) {
//		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  ��ˮF����ֵ�������ֵ" );
//		            return false;
//	            }
//                vAValue = Number(document.getElementById("TmTypeFsG" + String( i)).value) ;
//                vMValue = Number(document.getElementById("TmTypeFsG_m" + String( i)).innerHTML) ;
//	            if (vAValue > vMValue) {
//		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  ��ˮG����ֵ�������ֵ" );
//		            return false;
//	            }	
	            
                vAValue = Number(document.getElementById("TmTypeDd" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeDd_m" + String( i)).innerHTML) ;
	            if (vAValue < vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  ����޶�����ֵ������Сֵ" );
		            return false;
	            }		            
                vAValue = Number(document.getElementById("TmTypeDx" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeDx_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  �����޶�����ֵ�������ֵ" );
		            return false;
	            }	

                vAValue = Number(document.getElementById("TmTypeDz" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeDz_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  �����޶�����ֵ�������ֵ" );
		            return false;
	            }	

                vAValue = Number(document.getElementById("TmTypeDc" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeDc_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +��vAValue + "  ��ע�޶�����ֵ�������ֵ" );
		            return false;
	            }	
            }

    }
            function ShowPage()
            {
                document.location= "<% Response.Write(PageId.NavigateUrl); %>"  ;
    //            location='WebSetup_PlZm.aspx?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=' + document.getElementById('retime').value; 
                return false;
            }
        function HrefType(UrlStr,vType)
        {
            var idstr ="<% =Request.QueryString["id"] %>";
            location= UrlStr + '?id=' + idstr + '&' + vType ;
           
        }
        
        var mSystype;
        function PageLoad(){
           
            mSystype = "<% = mSysType %>" ;
            switch (mSystype)
            {  
                case "":
                      document.getElementById("ClickTM").setAttribute("className", "m_ClickType_Open");
                      document.getElementById("ClickTM").setAttribute("class", "m_ClickType_Open");
                      break;
                case "TM":
                      document.getElementById("ClickTM").setAttribute("className", "m_ClickType_Open");
                      document.getElementById("ClickTM").setAttribute("class", "m_ClickType_Open");
                    break;
                case "D3":
                     document.getElementById("ClickD3").setAttribute("className", "m_ClickType_Open");
                     document.getElementById("ClickD3").setAttribute("class", "m_ClickType_Open");
                    break;
                case "P3": 
                     document.getElementById("ClickP3").setAttribute("className", "m_ClickType_Open");
                     document.getElementById("ClickP3").setAttribute("class", "m_ClickType_Open");
                    break;
            }
        }
        
        
        
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0" onload="PageLoad();">
    <form id="form1" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="td_banner_m">
                    <td>
                        &nbsp;&nbsp;��ϸ�趨&nbsp;&nbsp;&nbsp;�ʺ�:
                        <asp:Label ID="TxtUsername" runat="server"></asp:Label>-- ����:
                        <asp:Label ID="TxtAdminId" runat="server"></asp:Label>
                        <asp:Label ID="TxtUserId" runat="server"></asp:Label>--���ö��:
                        <asp:Label ID="xynd" runat="server"></asp:Label>-- <a href="admin_super.aspx?AdminLevel=1"></a>
                        <asp:HyperLink ID="PageId" runat="server">����һҳ</asp:HyperLink>
                        <asp:Label ID="TxtParentid" runat="server" Visible="False" Width="160px"></asp:Label><asp:Label ID="TxtClass_id" runat="server" Visible="False" Width="160px"></asp:Label></td>
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
        <br />
        <table id="TabSysType" runat="server">
            <tr>
                <td id="AdminHelperaA" style="width: 74px">
                </td>
                <td id="TdClickTM" runat="server">
                    <a id="ClickTM" class="m_ClickType_Close" href="javascript:HrefType('','SysType=TM')">[���P]</a>
                </td>
                <td id="AdminLevel1A">
                    |
                </td>
                <td id="TdClickD3" runat="server">
                    <a id="ClickD3" class="m_ClickType_Close" href="javascript:HrefType('','SysType=D3')">[����]</a>
                </td>
                <td id="AdminLevel2A">
                    |
                </td>
                <td id="TdClickP3" runat="server">
                    <a id="ClickP3" class="m_ClickType_Close" href="javascript:HrefType('','SysType=P3')">[�w��]</a>
                </td>
            </tr>
        </table>
        <table class="m_tab_ed" cellspacing="1" cellpadding="0" border="0" id="TableA" runat="server">
            <tbody>
                <tr class="m_title_edit2">
                    <td align="middle" rowspan="2">
                        ��Ŀ</td>
                    <td colspan="8">
                        ��ˮ�趨</td>
                    <td colspan="8">
                        �޶��趨</td>
                </tr>
                <tr class="m_title_edit2">
                    <td colspan="2">
                        ��A-���</td>
                    <td colspan="2">
                        ��B-���</td>
                    <td colspan="2">
                        ��C-���</td>
                    <td colspan="2">
                        ��D-���</td>
                    <td colspan="2">
                        ����-��С</td>
                    <td colspan="2" id="CapTmTypeDx" runat="server">
                        ����-���</td>
                    <td colspan="2" id="CapTmTypeDz" runat="server">
                        ����-���</td>
                    <td colspan="2" id="CapTmTypeDc" runat="server">
                        ��ע-���</td>
                </tr>
                <tr class="mem_index_cen">
                    <td align='middle' bgcolor='#ffffff' colspan='23' style="height: 20px">
                        <asp:Button ID="ButData" runat="server" OnClick="ButData_Click" Text="ȷ��" OnClientClick="return FsValueCheck();" />
                        &nbsp; &nbsp;&nbsp; &nbsp;
                        <asp:Button ID="ButValue" runat="server" OnClick="ButValue_Click" Text="�ָ�Ĭ��ֵ" />&nbsp; &nbsp;&nbsp; &nbsp;
                        <input class="za_button" id="Button1" onclick="ShowPage();" type="button" value="ȡ��" name="FormsButton2">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
