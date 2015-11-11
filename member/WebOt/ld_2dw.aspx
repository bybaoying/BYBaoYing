<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_ld_2dw, App_Web_t2vtoice" enableEventValidation="false" %>

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
    <script language="javascript" type="text/javascript" src="../Scripts/JS_Page_tab.js"></script>
    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        //检查帐号,名称,密码 字元限制


        function chanagePage()
        {
            location="ld_2dwEd.aspx?GameType=" + "<% =Request.QueryString["GameType"] %>" + "&Classid=" + "<% =Request.QueryString["Classid"] %>" ;
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

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
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
                        <td class="Td_TabPage"  >
                            <div id="tab">
                                <ul >
                                    <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openchanagePage('02');">二字组合</a></li>
                                    <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('30');">佰拾位</a></li>
                                    <li id="linkZm3" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('31');">佰个位</a></li>
                                    <li id="linkZm4" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('32');">拾个位</a></li>
                                    <li id="space" ><span></span></li>
                                </ul>
                            </div>
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
                                                                    <strong>二字</strong></td>
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
                                                        <table id="Table3" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_Chipsend">
                                                                <td style="width: 60px" class="td_Chipsend">
                                                                    提交金额:
                                                                </td>
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
                                                    <asp:Label ID="LabDd02" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd30" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd31" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd32" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单注限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDz02" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz30" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz31" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz32" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单项限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDx02" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx30" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx31" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx32" runat="server"></asp:Label></td>
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
                                                        <font class="ballfont">28</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label28" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox28" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">29</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label29" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox29" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">30</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label30" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox30" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">31</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label31" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox31" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">32</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label32" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox32" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">33</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label33" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox33" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">34</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label34" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox34" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">35</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label35" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox35" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">36</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label36" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox36" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">37</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label37" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox37" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">38</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label38" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox38" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">39</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label39" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox39" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">40</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label40" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox40" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">41</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label41" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox41" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">42</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label42" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox42" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">43</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label43" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox43" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">44</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label44" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox44" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">45</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label45" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox45" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">46</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label46" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox46" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">47</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label47" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox47" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">48</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label48" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox48" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">49</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label49" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox49" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">50</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label50" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox50" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">51</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label51" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox51" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">52</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label52" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox52" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">53</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label53" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox53" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">54</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label54" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox54" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">55</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label55" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox55" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">56</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label56" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox56" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">57</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label57" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox57" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">58</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label58" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox58" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">59</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label59" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox59" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">60</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label60" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox60" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">61</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label61" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox61" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">62</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label62" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox62" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">63</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label63" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox63" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">64</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label64" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox64" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">65</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label65" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox65" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">66</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label66" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox66" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">67</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label67" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox67" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">68</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label68" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox68" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">69</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label69" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox69" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">70</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label70" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox70" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">71</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label71" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox71" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">72</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label72" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox72" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">73</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label73" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox73" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">74</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label74" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox74" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">75</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label75" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox75" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">76</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label76" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox76" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">77</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label77" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox77" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">78</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label78" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox78" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">79</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label79" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox79" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">80</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label80" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox80" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">81</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label81" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox81" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">82</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label82" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox82" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">83</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label83" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox83" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">84</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label84" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox84" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">85</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label85" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox85" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">86</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label86" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox86" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">87</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label87" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox87" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">88</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label88" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox88" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">89</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label89" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox89" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">90</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label90" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox90" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">91</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label91" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox91" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">92</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label92" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox92" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">93</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label93" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox93" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">94</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label94" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox94" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">95</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label95" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox95" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">96</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label96" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox96" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">97</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label97" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox97" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">98</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label98" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox98" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">99</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label99" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox99" type="checkbox" class="checkSy" name="Chktm" /></td>
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
        <table id="Table7" width="668" class="table_banner" cellspacing="1" style="visibility: hidden; display: none;">
            <tr>
                <td style="width: 65px;" class="ball_td" align="center">
                    信用额度</td>
                <td class="list_cen">
                    <asp:Label ID="Label220" runat="server" Text="人民币(RMB)"></asp:Label>&nbsp;
                </td>
                <td style="width: 65px;" class="ball_td" align="center">
                    下注金额</td>
                <td class="list_cen">
                </td>
            </tr>
        </table>
        <table id="Table10" width="668" class="table_banner" cellspacing="1" style="display: none; visibility: hidden">
            <tr>
                <td class="ball_td" align="center">
                    最低限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label221" runat="server"></asp:Label>
                    <asp:Label ID="LabDd43" runat="server"></asp:Label>
                    <asp:Label ID="LabDd17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc02" runat="server"></asp:Label>
                    <asp:Label ID="Label222" runat="server"></asp:Label>
                    <asp:Label ID="LabDc30" runat="server"></asp:Label>
                    <asp:Label ID="LabDc31" runat="server"></asp:Label>
                    <asp:Label ID="LabDc32" runat="server"></asp:Label>
                    <asp:Label ID="LabDc43" runat="server"></asp:Label>
                    <asp:Label ID="LabDc17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label223" runat="server"></asp:Label>
                    <asp:Label ID="LabDz43" runat="server"></asp:Label>
                    <asp:Label ID="LabDz17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label224" runat="server"></asp:Label>
                    <asp:Label ID="LabDx43" runat="server"></asp:Label>
                    <asp:Label ID="LabDx17" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

