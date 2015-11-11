<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_ld_4Ds, App_Web_t2vtoice" enableEventValidation="false" %>

<%@ Register Src="WebPageFoot.ascx" TagName="WebPageFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    <link href="../style/client_LT_game.css" type="text/css" rel="stylesheet">

    <script language="JavaScript" type="text/javascript">
            if(self == top) location = '/';
            //检查帐号,名称,密码 字元限制

            

            function CheckKey()
            {
                if(event.keyCode == 13) return true;
                if(!((event.keyCode > 47 && event.keyCode < 58 ) || event.keyCode == 46 ))
                {
                  alert("金额不可使用特殊字符!!"); return false;
                }
            }

            function chanagePage()
            {
                location='ld_4DsEd.aspx' ;
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

            
            window.open('FT_order_Lm.aspx?TmClassId='  + document.getElementById("TxtClassid").value +  
                '&TmNo=' + lquerstr + 
                '&TmJe=' + document.getElementById("Txtbutje").value,'bbnet_mem_order');
        }   
    </script>

</head>
<body <%--oncontextmenu="self.event.returnvalue=false;window.event.returnvalue=false;"
      ondragstart="return   false" 
      onselectstart   ="return   false"   onselect="document.selection.empty()"     
      oncopy="document.selection.empty()"   onbeforecopy="return false"--%>>
    <form id="lt_form" method="post" runat="server">
        <table class="table_title_line" id="Table4" cellspacing="0" cellpadding="0" style="width: 668px" border="0">
            <tbody>
                <tr>
                    <td>
                        <table id="Table9" style="width: 100%" cellspacing="0" cellpadding="0" align="left" border="0">
                            <tr>
                                <td class="message_1">
                                </td>
                                <td bgcolor="#cccccc" class="message_2">
                                    <div id="Msg">
                                        <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" style="width: 600px; height: 16px" height="16"><% =mOtMessage %>
											</marquee>
                                    </div>
                                </td>
                                <td class="message_3">
                                    <img border="0" src="../images/message.gif" width="15" height="12"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="banner_set" id="Table12" style="width: 100%" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td style="width: 150px">
                                    <strong>单双</strong></td>
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
                    <td id="Td_Cont" class="Td_Table" runat="server">
                        <table id="TableKK" cellspacing="0" cellpadding="0" style="width: 100%" border="0" runat="server">
                            <tr>
                                <td>
                                    <table class="list_rig" id="Table2" cellspacing="0" cellpadding="0" style="width: 100%" border="0">
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
                                    <table id="Table13" cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <!--id="game_table1">-->
                                        <tr class="banner_set">
                                            <td style="width: 40px">
                                                <strong>金额:</strong></td>
                                            <td style="width: 80px">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtbutje" runat="server" MaxLength="7" Width="80px"></asp:TextBox></td>
                                            <td>
                                                <input id="ButSend" onclick="SendData();" type="button" value="发送" />
                                                <input onmouseup="return reset();" type="reset" value="取消" />
                                                <input id="TxtClassid" runat="server" type="text" style="visibility: hidden; width: 3px" /></td>
                                            <td align="center">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table id="Table6" width="100%" class="table_banner" cellspacing="1">
                                        <tbody>
                                            <tr class="tr_title_set_cen">
                                                <td align="center" style="width: 120px">
                                                    <b>号码</b></td>
                                                <td align="center" style="width: 40px">
                                                    <b>赔率</b></td>
                                                <td align="center">
                                                    <b>选号</b></td>
                                                <td align="center" style="width: 120px">
                                                    <b>号码</b></td>
                                                <td align="center" style="width: 40px">
                                                    <b>赔率</b></td>
                                                <td align="center">
                                                    <b>选号</b></td>
                                            </tr>
                                            <tr>
                                                <td class="ball_td" align="center">
                                                    <font class="ballfont">拾个位单</font></td>
                                                <td align="center" class="Show_Pl">
                                                    <b>
                                                        <asp:HyperLink ID="Label0" runat="server">00</asp:HyperLink></b></td>
                                                <td align="center" class="Show_Pl">
                                                    <input id="Checkbox0" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                <td class="ball_td" align="center">
                                                    <font class="ballfont">拾个位双</font></td>
                                                <td align="center" class="Show_Pl">
                                                    <b>
                                                        <asp:HyperLink ID="Label1" runat="server">00</asp:HyperLink></b></td>
                                                <td align="center" class="Show_Pl">
                                                    <input id="Checkbox1" type="checkbox" class="checkSy" name="Chktm" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="ball_td" align="center">
                                                    <font class="ballfont">佰个位单</font></td>
                                                <td align="center" class="Show_Pl">
                                                    <b>
                                                        <asp:HyperLink ID="Label2" runat="server">00</asp:HyperLink></b></td>
                                                <td align="center" class="Show_Pl">
                                                    <input id="Checkbox2" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                <td class="ball_td" align="center">
                                                    <font class="ballfont">佰个位双</font></td>
                                                <td align="center" class="Show_Pl">
                                                    <b>
                                                        <asp:HyperLink ID="Label3" runat="server">00</asp:HyperLink></b></td>
                                                <td align="center" class="Show_Pl">
                                                    <input id="Checkbox3" type="checkbox" class="checkSy" name="Chktm" /></td>
                                            </tr>
                                            <tr>
                                                <td class="ball_td" align="center">
                                                    <font class="ballfont">佰拾位单</font></td>
                                                <td align="center" class="Show_Pl">
                                                    <b>
                                                        <asp:HyperLink ID="Label4" runat="server">00</asp:HyperLink></b></td>
                                                <td align="center" class="Show_Pl">
                                                    <input id="Checkbox4" type="checkbox" class="checkSy" name="Chktm" /></td>
                                                <td class="ball_td" align="center">
                                                    <font class="ballfont">佰拾位双</font></td>
                                                <td align="center" class="Show_Pl">
                                                    <b>
                                                        <asp:HyperLink ID="Label5" runat="server">00</asp:HyperLink></b></td>
                                                <td align="center" class="Show_Pl">
                                                    <input id="Checkbox5" type="checkbox" class="checkSy" name="Chktm" />
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
        <uc1:WebPageFoot ID="WebPageFoot1" runat="server" />
    </form>
</body>
</html>
