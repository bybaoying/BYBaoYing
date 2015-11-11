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
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  退水A设置值超过最大值" );
		            return false;
	            }
	            vAValue = Number(document.getElementById("TmTypeFsB" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeFsB_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  退水B设置值超过最大值" );
		            return false;
	            }
                vAValue = Number(document.getElementById("TmTypeFsC" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeFsC_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  退水C设置值超过最大值" );
		            return false;
	            }
                vAValue = Number(document.getElementById("TmTypeFsD" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeFsD_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  退水D设置值超过最大值" );
		            return false;
	            }	
	            
	            
//	            vAValue = Number(document.getElementById("TmTypeFsE" + String( i)).value) ;
//                vMValue = Number(document.getElementById("TmTypeFsE_m" + String( i)).innerHTML) ;
//	            if (vAValue > vMValue) {
//		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  退水E设置值超过最大值" );
//		            return false;
//	            }
//                vAValue = Number(document.getElementById("TmTypeFsF" + String( i)).value) ;
//                vMValue = Number(document.getElementById("TmTypeFsF_m" + String( i)).innerHTML) ;
//	            if (vAValue > vMValue) {
//		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  退水F设置值超过最大值" );
//		            return false;
//	            }
//                vAValue = Number(document.getElementById("TmTypeFsG" + String( i)).value) ;
//                vMValue = Number(document.getElementById("TmTypeFsG_m" + String( i)).innerHTML) ;
//	            if (vAValue > vMValue) {
//		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  退水G设置值超过最大值" );
//		            return false;
//	            }	
	            
                vAValue = Number(document.getElementById("TmTypeDd" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeDd_m" + String( i)).innerHTML) ;
	            if (vAValue < vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  最低限额设置值低于最小值" );
		            return false;
	            }		            
                vAValue = Number(document.getElementById("TmTypeDx" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeDx_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  单项限额设置值超过最大值" );
		            return false;
	            }	

                vAValue = Number(document.getElementById("TmTypeDz" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeDz_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  单号限额设置值超过最大值" );
		            return false;
	            }	

                vAValue = Number(document.getElementById("TmTypeDc" + String( i)).value) ;
                vMValue = Number(document.getElementById("TmTypeDc_m" + String( i)).innerHTML) ;
	            if (vAValue > vMValue) {
		            alert( "[" + document.getElementById("TmClassName" + String( i)).innerHTML  + "]=" +　vAValue + "  单注限额设置值超过最大值" );
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
                        &nbsp;&nbsp;详细设定&nbsp;&nbsp;&nbsp;帐号:
                        <asp:Label ID="TxtUsername" runat="server"></asp:Label>-- 名称:
                        <asp:Label ID="TxtAdminId" runat="server"></asp:Label>
                        <asp:Label ID="TxtUserId" runat="server"></asp:Label>--信用额度:
                        <asp:Label ID="xynd" runat="server"></asp:Label>-- <a href="admin_super.aspx?AdminLevel=1"></a>
                        <asp:HyperLink ID="PageId" runat="server">回上一页</asp:HyperLink>
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
                    <a id="ClickTM" class="m_ClickType_Close" href="javascript:HrefType('','SysType=TM')">[主盤]</a>
                </td>
                <td id="AdminLevel1A">
                    |
                </td>
                <td id="TdClickD3" runat="server">
                    <a id="ClickD3" class="m_ClickType_Close" href="javascript:HrefType('','SysType=D3')">[福彩]</a>
                </td>
                <td id="AdminLevel2A">
                    |
                </td>
                <td id="TdClickP3" runat="server">
                    <a id="ClickP3" class="m_ClickType_Close" href="javascript:HrefType('','SysType=P3')">[體彩]</a>
                </td>
            </tr>
        </table>
        <table class="m_tab_ed" cellspacing="1" cellpadding="0" border="0" id="TableA" runat="server">
            <tbody>
                <tr class="m_title_edit2">
                    <td align="middle" rowspan="2">
                        项目</td>
                    <td colspan="8">
                        退水设定</td>
                    <td colspan="8">
                        限额设定</td>
                </tr>
                <tr class="m_title_edit2">
                    <td colspan="2">
                        盘A-最大</td>
                    <td colspan="2">
                        盘B-最大</td>
                    <td colspan="2">
                        盘C-最大</td>
                    <td colspan="2">
                        盘D-最大</td>
                    <td colspan="2">
                        单项-最小</td>
                    <td colspan="2" id="CapTmTypeDx" runat="server">
                        单项-最大</td>
                    <td colspan="2" id="CapTmTypeDz" runat="server">
                        单号-最大</td>
                    <td colspan="2" id="CapTmTypeDc" runat="server">
                        单注-最大</td>
                </tr>
                <tr class="mem_index_cen">
                    <td align='middle' bgcolor='#ffffff' colspan='23' style="height: 20px">
                        <asp:Button ID="ButData" runat="server" OnClick="ButData_Click" Text="确定" OnClientClick="return FsValueCheck();" />
                        &nbsp; &nbsp;&nbsp; &nbsp;
                        <asp:Button ID="ButValue" runat="server" OnClick="ButValue_Click" Text="恢复默认值" />&nbsp; &nbsp;&nbsp; &nbsp;
                        <input class="za_button" id="Button1" onclick="ShowPage();" type="button" value="取消" name="FormsButton2">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
