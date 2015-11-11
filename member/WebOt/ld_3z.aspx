<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_ld_3z, App_Web_t2vtoice" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
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
            location="ld_3zEd.aspx?GameType=" + "<% =Request.QueryString["GameType"] %>" + "&Classid=" + "<% =Request.QueryString["Classid"] %>" ;
        }

        function openNewPage(vClassid)
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        }   
        function openchanagePage(vClassid)
        {
            location='ld_3dw.aspx?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        } 
        function openLink()
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=<% =Request.QueryString["Classid"] %>';
        }
        function loadShow()
        {

//            var obj = document.lt_form ;
//            var lquerstr = "";
//            
//           for(i=0; i<obj.Chktm.length; i++) {
////	            if (obj.Chktm[i].checked) {
//	                
//		            obj.Chktm[i].checked = true;
////	            }
//            } 
            
        }
        function SendData()
        {

            var obj = document.lt_form ;
            var lquerstr = "";
            var j =0;
           for(i=0; i<obj.Chktm.length; i++) {
	            if (obj.Chktm[i].checked) {
		            j =j+1;
	            }
            } 
            if (j>50)
            {
                alert("每次最多选择50号," + "请分开下单!");
                return;
            }
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
<body onload="loadShow();">
    <form id="lt_form" method="post" runat="server" enableviewstate="False">
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
                                    <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('03');">三字组合</a></li>
                                    <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openchanagePage('50');">佰拾个定位</a></li>
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
                                                        <table class="table_ChipTitle" id="Table1" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>三字</strong></td>
                                                                <td style="width: 250px">
                                                                    (香港时间:
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
                                        <table id="Table5" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
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
                                                    <asp:Label ID="LabDd03" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单注限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDz03" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单项限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDx03" runat="server"></asp:Label></td>
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
                                                        <font class="ballfont">000</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label0" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox0" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">001</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label1" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox1" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">002</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label2" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox2" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">003</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label3" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox3" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">004</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label4" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox4" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">005</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label5" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox5" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">006</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label6" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox6" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">007</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label7" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox7" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">008</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label8" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox8" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">009</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label9" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox9" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">011</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label10" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox10" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">012</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label11" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox11" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">013</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label12" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox12" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">014</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label13" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox13" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">015</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label14" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox14" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">016</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label15" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox15" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">017</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label16" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox16" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">018</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label17" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox17" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">019</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label18" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox18" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">022</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label19" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox19" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">023</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label20" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox20" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">024</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label21" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox21" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">025</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label22" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox22" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">026</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label23" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox23" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">027</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label24" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox24" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">028</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label25" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox25" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">029</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label26" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox26" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">033</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label27" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox27" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">034</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label28" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox28" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">035</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label29" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox29" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">036</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label30" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox30" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">037</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label31" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox31" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">038</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label32" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox32" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">039</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label33" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox33" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">044</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label34" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox34" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">045</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label35" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox35" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">046</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label36" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox36" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">047</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label37" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox37" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">048</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label38" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox38" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">049</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label39" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox39" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">055</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label40" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox40" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">056</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label41" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox41" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">057</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label42" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox42" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">058</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label43" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox43" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">059</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label44" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox44" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">066</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label45" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox45" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">067</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label46" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox46" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">068</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label47" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox47" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">069</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label48" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox48" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">077</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label49" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox49" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">078</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label50" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox50" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">079</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label51" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox51" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">088</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label52" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox52" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">089</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label53" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox53" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">099</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label54" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox54" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">111</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label55" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox55" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">112</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label56" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox56" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">113</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label57" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox57" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">114</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label58" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox58" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">115</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label59" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox59" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">116</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label60" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox60" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">117</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label61" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox61" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">118</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label62" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox62" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">119</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label63" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox63" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">122</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label64" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox64" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">123</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label65" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox65" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">124</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label66" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox66" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">125</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label67" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox67" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">126</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label68" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox68" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">127</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label69" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox69" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">128</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label70" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox70" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">129</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label71" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox71" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">133</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label72" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox72" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">134</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label73" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox73" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">135</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label74" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox74" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">136</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label75" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox75" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">137</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label76" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox76" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">138</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label77" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox77" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">139</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label78" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox78" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">144</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label79" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox79" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">145</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label80" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox80" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">146</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label81" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox81" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">147</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label82" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox82" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">148</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label83" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox83" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">149</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label84" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox84" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">155</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label85" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox85" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">156</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label86" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox86" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">157</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label87" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox87" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">158</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label88" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox88" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">159</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label89" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox89" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">166</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label90" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox90" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">167</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label91" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox91" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">168</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label92" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox92" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">169</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label93" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox93" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">177</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label94" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox94" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">178</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label95" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox95" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">179</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label96" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox96" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">188</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label97" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox97" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">189</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label98" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox98" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">199</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label99" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox99" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">222</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label100" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox100" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">223</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label101" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox101" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">224</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label102" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox102" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">225</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label103" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox103" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">226</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label104" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox104" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">227</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label105" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox105" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">228</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label106" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox106" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">229</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label107" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox107" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">233</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label108" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox108" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">234</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label109" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox109" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">235</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label110" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox110" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">236</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label111" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox111" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">237</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label112" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox112" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">238</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label113" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox113" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">239</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label114" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox114" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">244</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label115" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox115" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">245</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label116" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox116" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">246</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label117" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox117" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">247</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label118" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox118" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">248</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label119" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox119" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">249</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label120" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox120" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">255</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label121" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox121" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">256</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label122" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox122" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">257</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label123" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox123" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">258</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label124" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox124" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">259</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label125" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox125" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">266</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label126" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox126" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">267</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label127" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox127" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">268</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label128" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox128" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">269</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label129" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox129" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">277</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label130" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox130" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">278</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label131" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox131" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">279</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label132" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox132" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">288</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label133" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox133" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">289</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label134" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox134" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">299</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label135" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox135" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">333</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label136" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox136" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">334</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label137" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox137" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">335</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label138" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox138" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">336</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label139" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox139" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">337</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label140" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox140" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">338</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label141" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox141" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">339</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label142" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox142" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">344</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label143" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox143" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">345</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label144" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox144" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">346</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label145" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox145" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">347</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label146" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox146" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">348</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label147" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox147" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">349</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label148" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox148" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">355</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label149" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox149" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">356</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label150" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox150" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">357</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label151" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox151" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">358</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label152" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox152" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">359</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label153" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox153" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">366</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label154" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox154" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">367</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label155" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox155" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">368</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label156" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox156" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">369</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label157" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox157" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">377</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label158" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox158" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">378</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label159" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox159" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">379</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label160" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox160" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">388</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label161" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox161" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">389</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label162" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox162" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">399</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label163" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox163" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">444</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label164" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox164" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">445</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label165" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox165" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">446</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label166" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox166" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">447</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label167" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox167" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">448</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label168" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox168" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">449</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label169" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox169" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">455</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label170" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox170" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">456</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label171" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox171" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">457</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label172" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox172" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">458</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label173" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox173" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">459</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label174" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox174" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">466</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label175" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox175" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">467</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label176" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox176" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">468</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label177" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox177" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">469</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label178" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox178" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">477</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label179" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox179" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">478</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label180" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox180" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">479</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label181" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox181" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">488</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label182" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox182" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">489</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label183" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox183" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">499</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label184" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox184" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">555</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label185" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox185" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">556</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label186" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox186" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">557</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label187" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox187" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">558</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label188" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox188" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">559</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label189" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox189" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">566</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label190" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox190" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">567</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label191" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox191" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">568</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label192" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox192" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">569</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label193" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox193" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">577</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label194" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox194" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">578</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label195" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox195" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">579</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label196" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox196" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">588</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label197" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox197" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">589</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label198" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox198" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">599</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label199" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox199" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">666</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label200" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox200" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">667</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label201" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox201" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">668</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label202" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox202" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">669</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label203" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox203" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">677</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label204" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox204" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">678</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label205" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox205" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">679</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label206" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox206" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">688</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label207" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox207" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">689</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label208" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox208" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">699</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label209" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox209" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">777</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label210" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox210" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">778</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label211" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox211" type="checkbox" class="checkSy" name="Chktm" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">779</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label212" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <font>
                                                            <input id="Checkbox212" type="checkbox" class="checkSy" name="Chktm" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">788</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label213" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox213" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">789</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label214" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox214" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">799</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label215" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox215" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">888</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label216" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox216" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">889</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label217" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox217" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">899</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label218" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox218" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">999</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Label219" runat="server">00</asp:HyperLink></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox219" type="checkbox" class="checkSy" name="Chktm" /></td>
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
        <table id="Table10" width="668" class="table_banner" cellspacing="1" style="display: none; visibility: hidden" >
            <tr>
                <td class="ball_td" align="center">
                    最低限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label221" runat="server"></asp:Label>
                    <asp:Label ID="LabDd04" runat="server"></asp:Label>
                    <asp:Label ID="LabDd41" runat="server"></asp:Label>
                    <asp:Label ID="LabDd42" runat="server"></asp:Label>
                    <asp:Label ID="LabDd43" runat="server"></asp:Label>
                    <asp:Label ID="LabDd17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc03" runat="server"></asp:Label>
                    <asp:Label ID="Label222" runat="server"></asp:Label>
                    <asp:Label ID="LabDc04" runat="server"></asp:Label>
                    <asp:Label ID="LabDc41" runat="server"></asp:Label>
                    <asp:Label ID="LabDc42" runat="server"></asp:Label>
                    <asp:Label ID="LabDc43" runat="server"></asp:Label>
                    <asp:Label ID="LabDc17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label223" runat="server"></asp:Label>
                    <asp:Label ID="LabDz04" runat="server"></asp:Label>
                    <asp:Label ID="LabDz41" runat="server"></asp:Label>
                    <asp:Label ID="LabDz42" runat="server"></asp:Label>
                    <asp:Label ID="LabDz43" runat="server"></asp:Label>
                    <asp:Label ID="LabDz17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label224" runat="server"></asp:Label>
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

