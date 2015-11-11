<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WebPlAutoSetup, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <link href="../style/members.css" rel="stylesheet" type="text/css"/>

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">
     function new_win(html_name,winname,w,h){
          if(winname=='') winname='WINDOWS';
          if(w=='') w=640;
          if(h=='') h=480;
          //undefined
          winformat="width="+w+",height="+h;
//         toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=no,
            winformat= "";
          winid = window.open(html_name,winname ,winformat)
    }
        function HrefType(UrlStr,vType)
        {
            
            location= UrlStr + '?' + vType ;
           
        }
        
        
        var mSystype;
        function PageLoad(){
            mSystype = "<% = mSysType %>" ;

            switch (mSystype)
            {  
                case "":
                      document.getElementById("ClickTM").setAttribute("class", "m_ClickType_Open");
                      
                      break;
                case "TM":
//                      document.getElementById("ClickTM").setAttribute("className", "m_ClickType_Open");
                      document.getElementById("ClickTM").setAttribute("class", "m_ClickType_Open");
                    break;
                case "D3":
                     document.getElementById("ClickD3").setAttribute("class", "m_ClickType_Open");
                    break;
                case "P3":
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
                        &nbsp;&nbsp;全自动赔率设置:
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
                <tr class="m_title_edit" align="center">
                    <td>
                        <div align="center">
                            项目</div>
                    </td>
                    <td>
                        <div align="center">
                            开/停</div>
                    </td>
                    <td>
                        <div align="center">
                            启动金额</div>
                    </td>
                    <td>
                        <div align="center">
                            级差金额</div>
                    </td>
                    <td>
                        <div align="center">
                            级差赔率</div>
                    </td>
                    <td>
                        <div align="center">
                            最低赔率</div>
                    </td>
                    <td>
                        <div align="center">
                            自动封号</div>
                    </td>
                    <td>
                        <div align="center">
                            盘差B</div>
                    </td>
                    <td>
                        <div align="center">
                            盘差C</div>
                    </td>
                    <td>
                        <div align="center">
                            盘差D</div>
                    </td>
                </tr>
                <tr align="center" class="mem_index_cen">
                    <td colspan="13">
                        <asp:Button ID="ButData" runat="server" Width="85px" Text="修改提交" OnClick="ButData_Click"></asp:Button></td>
                </tr>
                <tr align="center" class="mem_index_cen">
                    <td align="left" colspan="13">
                        启动金额：当每号注单下注金额大于或等于启动金额后，赔率开始调整!<br />
                        级差金额:每一次调整赔率的下注金额差值!<br />
                        级差赔率:每一次调整赔率的幅度.<br />
                        最低赔率:赔率调整到最低的点位.<br />
                        自动封号:在自动封号打开时,当前的赔率等于或小于最低赔率后,将自动关闭当前的号码!</td>
                </tr>
                <tr align="center" class="mem_index_cen">
                    <td align="left" colspan="13">
                        盘差：为A盘与B盘、C盘、D盘之间的差。A盘赔率变更时，BCD盘以A盘为基础随着变动。如盘差B(为A盘与B盘之间差)=-0.5 如A盘赔率=41时 &nbsp;则B盘赔率=40.5</td>
                </tr>
                <tr align="center" class="mem_index_cen">
                    <td align="left" colspan="13">
                        启动自动赔率:<br />
                        1.在'开/停'项目中,必须设为'开启'.<br />
                        2.设置启动金额。只有‘下注金额’大于等于‘启动金额’才会按设置的赔率自动变更.<br />
                        3.在会员每一次投注后,赔率将按当时的投注金额自动变更赔率.<br />
                        最新赔率= 当前赔率-级差赔率*(当前注单金额-启动金额)/级差金额</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
