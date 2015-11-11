<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_ld_4Hs, App_Web_t2vtoice" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css"  />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    
    <script language="JavaScript" type="text/javascript" src="../Scripts/but_chip_Check.js"></script>
    <script language="JavaScript" type="text/javascript">
            if(self == top) location = '/';
            //检查帐号,名称,密码 字元限制

            
        function chanagePage()
        {
            location="ld_4HsEd.aspx?GameType=" + "<% =Request.QueryString["GameType"] %>" + "&Classid=" + "<% =Request.QueryString["Classid"] %>" ;
        }

        function openNewPage(vClassid)
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        }   
        function openchanagePage(vClassid)
        {
            location='ld_2z.aspx?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        } 
        function openLink()
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=<% =Request.QueryString["Classid"] %>';
        }
        function SendData()
        {

            var obj = document.lt_form ;
            var lquerstr = "";
            
           for(i=0; i<obj.Chktm.length; i++) {
	            if (obj.Chktm[i].checked) {
	                var  lPl ="Label" + i.toString() ;
//		            lquerstr = lquerstr + i.toString() + "@" + document.getElementById(lPl).innerHTML+ ";";
		            lquerstr = lquerstr + i.toString() + ";";
		            obj.Chktm[i].checked = false;
	            }
            } 

            
            window.open("FT_order_Lm.aspx?GameType=<% =Request.QueryString["GameType"] %>&TmClassId="  + document.getElementById("TxtClassid").value +  
                '&TmNo=' + lquerstr + 
                '&TmJe=' + document.getElementById("Txtbutje").value,'bbnet_mem_order');
        }   
    </script>

    <%--oncontextmenu="self.event.returnvalue=false;window.event.returnvalue=false;"
      ondragstart="return   false" 
      onselectstart   ="return   false"   onselect="document.selection.empty()"     
      oncopy="document.selection.empty()"   onbeforecopy="return false"--%>
</head>
<body>
    <form id="lt_form" method="post" runat="server">
        <div class="div_windows">
            <table id="Table4" class="table_windows" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td>
                            <table id="Table9" class="Page_Head" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td class="Page_HeadL">
                                    </td>
                                    <td class="Page_HeadM">
                                        <span class="img_message"> </span> 
                                        <span id="Msg">
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);"
                                                style="width: 600px; height: 16px">
                                                <% =mOtMessage %>
                                            </marquee>
                                        </span>
                                    </td>
                                    <td class="Page_HeadR">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td id="Td_Cont" class="Td_Table" runat="server">
                            <table id="TableKK" border="0" cellspacing="1" cellpadding="0" runat="server">
                                <tr>
                                    <td>
                                        <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>合数</strong></td>
                                                                <td style="width: 250px">
                                                                    (<b>香港时间:</b>
                                                                    <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                                <td style="text-align: right;">
                                                                    <strong><a class="click_text" onclick="openLink();">刷新</a></strong>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                         <table class="table_ChipInfo" id="Table2" border="0" cellspacing="1" cellpadding="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>期数:</strong>
                                                                    <asp:Label ID="Labtmwinno" runat="server"></asp:Label>
                                                                </td>
                                                                <td style="width: 250px">
                                                                    <asp:HyperLink ID="linkZmGo" runat="server" NavigateUrl="javascript:chanagePage();">切换下注模式</asp:HyperLink></td>
                                                                <td style="text-align: right">
                                                                    <b>开奖日期:</b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table id="Table20" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_Chipsend">
                                                                <td style="width: 40px" class="td_Chipsend">
                                                                   金额: </td>
                                                                <td style="width: 80px">
                                                                    <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtbutje" runat="server" MaxLength="7"
                                                                         CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                                                <td>
                                                                    <input id="ButSend" onclick="SendData();" type="button" class="button_Ok" value="发送" />
                                                                    <input onmouseup="return reset();" type="reset" class="button_Reset" value="取消" />
                                                                    <input id="TxtClassid" runat="server" type="text" style="visibility: hidden; width: 3px" /></td>
                                                                <td align="center">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table id="Table1" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td style="width: 65px;" class="td_Caption_set">
                                                    帐户名称</td>
                                                <td style="width: 146px;" class="td_Center_set">
                                                    <asp:Label ID="LabUsername" runat="server"></asp:Label></td>
                                                <td style="width: 65px;" class="td_Caption_set">
                                                    信用额度</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabBzname" runat="server" Text="人民币(RMB)"></asp:Label>
                                                    <asp:Label ID="Labxynd" runat="server"></asp:Label>
                                                </td>
                                                <td style="width: 65px;" class="td_Caption_set">
                                                    下注金额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="td_Caption_set">
                                                    最低限额</td>
                                                <td style="width: 146px;" class="td_Center_set">
                                                    <asp:Label ID="LabDje" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd20" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单注限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabTje" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz20" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单项限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabCTje" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx20" runat="server"></asp:Label></td>
                                            </tr>
                                        </table>
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        选号</td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">00</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label0" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox0" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">01</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label1" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox1" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">02</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label2" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox2" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">03</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label3" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox3" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">04</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label4" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox4" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">05</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label5" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox5" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">06</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label6" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox6" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">07</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label7" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox7" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">08</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label8" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox8" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">09</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label9" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox9" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">10</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label10" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox10" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">11</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label11" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox11" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">12</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label12" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox12" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">13</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label13" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox13" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">14</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label14" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox14" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">15</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label15" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox15" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">16</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label16" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox16" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">17</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label17" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox17" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">18</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label18" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox18" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">19</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label19" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox19" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">20</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label20" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox20" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">21</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label21" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox21" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">22</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label22" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox22" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">23</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label23" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox23" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">24</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label24" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox24" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">25</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label25" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox25" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">26</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label26" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox26" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">27</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label27" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox27" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                    </td>
                                                    <td class="Td_TmPlfont">
                                                    </td>
                                                    <td class="Show_Pl">
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                    </td>
                                                    <td class="Td_TmPlfont">
                                                    </td>
                                                    <td class="Show_Pl">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
        <table id="Table3" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
            <tr>
                <td style="width: 65px;" class="ball_td" align="center">
                    信用额度</td>
                <td class="list_cen">
                    <asp:Label ID="Label28" runat="server" Text="人民币(RMB)"></asp:Label>&nbsp;
                </td>
                <td style="width: 65px;" class="ball_td" align="center">
                    下注金额</td>
                <td class="list_cen">
                </td>
            </tr>
        </table>
        <table id="Table5" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
            <tr>
                <td class="ball_td" align="center">
                    最低限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="LabDd03" runat="server"></asp:Label>
                    <asp:Label ID="LabDd04" runat="server"></asp:Label>
                    <asp:Label ID="LabDd41" runat="server"></asp:Label>
                    <asp:Label ID="LabDd42" runat="server"></asp:Label>
                    <asp:Label ID="LabDd43" runat="server"></asp:Label>
                    <asp:Label ID="LabDd17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc20" runat="server"></asp:Label>
                    <asp:Label ID="LabDc03" runat="server"></asp:Label>
                    <asp:Label ID="LabDc04" runat="server"></asp:Label>
                    <asp:Label ID="LabDc41" runat="server"></asp:Label>
                    <asp:Label ID="LabDc42" runat="server"></asp:Label>
                    <asp:Label ID="LabDc43" runat="server"></asp:Label>
                    <asp:Label ID="LabDc17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="LabDz03" runat="server"></asp:Label>
                    <asp:Label ID="LabDz04" runat="server"></asp:Label>
                    <asp:Label ID="LabDz41" runat="server"></asp:Label>
                    <asp:Label ID="LabDz42" runat="server"></asp:Label>
                    <asp:Label ID="LabDz43" runat="server"></asp:Label>
                    <asp:Label ID="LabDz17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="LabDx03" runat="server"></asp:Label>
                    <asp:Label ID="LabDx04" runat="server"></asp:Label>
                    <asp:Label ID="LabDx41" runat="server"></asp:Label>
                    <asp:Label ID="LabDx42" runat="server"></asp:Label>
                    <asp:Label ID="LabDx43" runat="server"></asp:Label>
                    <asp:Label ID="LabDx17" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
