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
                	            if(confirm('会员已用信用额度清零!?' + '\r' + '请在会员结帐后使用!'))
	            {
                    var lSrc = "admin_UserXyndql.aspx";
    //                document.getElementById('UserlineOut').src =  lSrc ;//点过的页，不在请求服务。
                    
                    window.UserlineOut.location.href =  lSrc ;//点过的页，可以再次请求服务器。名用name 不能用ID
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
                    alert("已用信用额度清零完成!")
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
                        <strong>操作导航</strong></td>
                </tr>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                    </td>
                    <td align="center" class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" align="center" width="20%" id="tm1" runat="server">
                        主盤</td>
                    <td class="tdbg" align="center" width="20%" id="d31" runat="server">
                        福彩</td>
                    <td class="tdbg" align="center" width="20%" id="p31" runat="server">
                        體彩</td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                        开奖记录</td>
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
                        <a href="../MwebLh/WebWinResult.aspx" target="main">主盤:开奖记录</a>
                    </td>
                    <td class="tdbg" align="center" id="d32" runat="server">
                        <a href="../MWebOter/WebWinResult.aspx?gt=D3" target="main">福彩:开奖记录</a>
                    </td>
                    <td class="tdbg" align="center" id="p32" runat="server">
                        <a href="../MWebOter/WebWinResult.aspx?gt=P3" target="main">體彩:开奖记录</a>
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="border" cellspacing="1" cellpadding="2" width="750" border="0" id="TableSelect" runat="server">
            <tbody>
                <tr>
                    <td class="tdbg" width="19%" align="center">
                        系统设置</td>
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
                        <a href="../MwebLh/WebAwardNext.aspx" target="main" title="设置开奖期数、开奖时间、注单投放区间及公告信息">下期公告</a>
                    </td>
                    <td align="center" class="tdbg" style="height: 19px" id="d33" runat="server">
                        <a href="../MWebOter/WebAwardNext.aspx?gt=D3" target="main" title="设置开奖期数、开奖时间、注单投放区间及公告信息">下期公告</a>
                    </td>
                    <td align="center" class="tdbg" style="height: 19px" id="p33" runat="server">
                        <a href="../MWebOter/WebAwardNext.aspx?gt=P3" target="main">下期公告</a>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg" id="tm4" runat="server">
                        <a href="../Mapp/WebPlAutoSetup.aspx?SysType=TM" target="main" title="（赔率自动调 节参数设置）">赔率参数设置</a></td>
                    <td align="center" class="tdbg" id="d34" runat="server">
                        <a href="../Mapp/WebPlAutoSetup.aspx?SysType=D3" target="main" title="（赔率自动调 节参数设置）">赔率参数设置</a>
                    </td>
                    <td align="center" class="tdbg" id="p34" runat="server">
                        <a href="../Mapp/WebPlAutoSetup.aspx?SysType=P3" target="main" title="（赔率自动调 节参数设置）">赔率参数设置</a>
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
                        <a id="A1" href="../Mapp/admin_Class.aspx?SysType=TM" target="main">项目开关管理</a>
                    </td>
                    <td align="center" class="tdbg" id="d35" runat="server">
                        <a id="A4" href="../Mapp/admin_Class.aspx?SysType=D3" target="main">项目开关管理</a>
                    </td>
                    <td align="center" class="tdbg" id="p35" runat="server">
                        <a id="A5" href="../Mapp/admin_Class.aspx?SysType=P3" target="main">项目开关管理</a>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg" id="tm6" runat="server">
                        <a id="TmPropertyId" runat="server" href="../MwebLh/WebTmProperty_Edit.aspx" target="main">系统生肖设置</a>
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
                        <a id="TmAdminSetup" runat="server" href="admin_Setup.aspx" target="main">系统参数设置</a>
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
                        开奖管理</td>
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
                        <a onclick='javascript:UserXyndqlAll();' href="javascript:%20void(0);">已用信用清零</a></td>
                    <td class="tdbg" align="center" id="tm7" runat="server">
                        <a href="../MwebLh/WebStartAward.aspx" target="main" title="庄家可以在封盘后，开出自己的摇码结果">开奖摇码</a>
                    </td>
                    <td align="center" class="tdbg" id="d37" runat="server">
                        <a href="../MWebOter/WebStartAward.aspx?gt=D3" target="main" title="庄家可以在封盘后，开出自己的摇码结果">开奖摇码</a>
                    </td>
                    <td align="center" class="tdbg" id="p37" runat="server">
                        <a href="../MWebOter/WebStartAward.aspx?gt=P3" target="main" title="庄家可以在封盘后，开出自己的摇码结果">开奖摇码</a>
                    </td>
                </tr>
                <tr>
                    <td class="tdbg" align="center">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td class="tdbg" align="center" id="tm8" runat="server">
                        <a href="../MwebLh/WebStartWin.aspx" target="main" title="庄家根据摇码结果为每位投注会员派发奖金、及退水金额">计算派奖</a>
                    </td>
                    <td align="center" class="tdbg" id="d38" runat="server">
                        <a href="../MWebOter/WebStartWin.aspx?gt=D3" target="main" title="庄家根据摇码结果为每位投注会员派发奖金、及退水金额">计算派奖</a>
                    </td>
                    <td align="center" class="tdbg" id="p38" runat="server">
                        <a href="../MWebOter/WebStartWin.aspx?gt=P3" target="main" title="庄家根据摇码结果为每位投注会员派发奖金、及退水金额">计算派奖</a>
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="border" cellspacing="1" cellpadding="2" width="750" border="0" id="TabChipStart" runat="server">
            <tbody>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                        下注状况</td>
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
                    
                    
                        <a href="../Mapp/ztoday_chip_Download_XmlData.aspx?xml=0" target="main" id="HLink_Xml_Chip_Download" runat="server">注单下载</a>
                    </td>
                    <td class="tdbg" align="center" width="20%" id="tm9" runat="server">
                        <asp:HyperLink ID="HLink_chip_list" runat="server" NavigateUrl="../MwebLh/ztoday_chip_list.aspx">注单流水</asp:HyperLink></td>
                    <td class="tdbg" align="center" width="20%" id="d39" runat="server">
                        <asp:HyperLink ID="HLink_chip_listD3" runat="server" NavigateUrl="../MWebOter/ztoday_chip_list.aspx?gt=D3">注单流水</asp:HyperLink></td>
                    <td class="tdbg" align="center" width="20%" id="p39" runat="server">
                        <asp:HyperLink ID="HLink_chip_listP3" runat="server" NavigateUrl="../MWebOter/ztoday_chip_list.aspx?gt=P3">注单流水</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg">
                    </td>
                    <td align="center" class="tdbg">
                    </td>
                    <td class="tdbg" align="center" id="tm10" runat="server">
                        <asp:LinkButton ID="HLink_chip_Download" OnClientClick="BrowseOpen('../MwebLh/ztoday_chip_Download.aspx','perLogin');" runat="server">注单即时下载</asp:LinkButton></td>
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
                        <asp:HyperLink ID="HLink_chip_hotspot" runat="server" NavigateUrl="../MwebLh/ztoday_chip_hotspot.aspx?tmItem=2&tmOrder=2&tmclassid=all&stoptime=-1">注单统计(走单)</asp:HyperLink></td>
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
                        管理走单</td>
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
                        <asp:HyperLink ID="HLink_Chip_Go" runat="server" NavigateUrl="../MwebLh/ztoday_chip_go.aspx" Visible="False">管理注单(走单)</asp:HyperLink>
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
                        历史数据</td>
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
                        <a href="Web_DataCopy.aspx" target="main" id="LinkDataCopy" runat="server">数据库备份</a>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                    </td>
                    <td align="center" class="tdbg" width="20%">
                    </td>
                    <td class="tdbg" align="center" width="20%" id="tm13" runat="server">
                        <a href="../MwebLh/zhistory_data.aspx?gt=TM" target="main" id="LinkDataManage" runat="server">数据管理</a>
                    </td>
                    <td class="tdbg" align="center" width="20%" id="d313" runat="server">
                        <a href="../MwebLh/zhistory_data.aspx?gt=D3" target="main" id="A2" runat="server">数据管理</a>
                    </td>
                    <td class="tdbg" align="center" width="20%" id="p313" runat="server">
                        <a href="../MwebLh/zhistory_data.aspx?gt=P3" target="main" id="A3" runat="server">数据管理</a>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="tdbg" width="19%">
                    </td>
                    <td class="tdbg" colspan="1" style="text-align: center">
                        <a id="LinkMoneyManage" runat="server" href="WMoneyManage.aspx" target="main" class="top_font_menu">钱包管理</a>
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
                        在线管理
                    </td>
                    <td align="center" class="tdbg" colspan="1">
                        <a href="admin_Userline.aspx" target="main">在线人员</a>
                    </td>
                </tr>
            </tbody>
        </table>
        <iframe id="UserlineOut" frameborder="0" height="200" name="UserlineOut" scrolling="no" src="about:blank" style="visibility: hidden; width: 172px; height: 13px" width="200"></iframe>
    </form>
</body>
</html>
