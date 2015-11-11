<%@ page language="C#" autoeventwireup="true" inherits="member_app_WebMoneyOutInRecord, App_Web_01izlwfu" enableEventValidation="false" %>

<%@ Register Src="WebMoneyManToolMenu.ascx" TagName="WebMoneyManToolMenu" TagPrefix="uc1" %>
<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_Tm.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_TM.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_TM.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="javascript" type="text/javascript" charset="gb2312" src="../Scripts/Calendar30.js"> </script>

    <%--    <link href="../style/calendar.css" rel="stylesheet">

    <script language="JavaScript" src="../Scripts/simplecalendar.js"></script>--%>

    <script language="JavaScript" type="text/javascript">
        
        
//         onload = "loadShow();"
         
        function loadShow()
        {
//            alert("请输入结帐日期(YYYY-MM-DD)!!");
//            document.all['wagers_class'].value = "wagers_today";
//            onload_Calendar();
            
//            DateVale();
        }
         function DateVale()
         {
//            alert( Date("yyyy-MM-dd"));
//            var my_date=new Date();
//               document.FrmData.date_start.value=my_date.pattern("yyyy-MM-dd");
//               document.FrmData.date_end.value=my_date.getDate(); 
         }
        function select_tab()
        {
            
            lwagers_class = document.getElementById("wagers_class");
            r = lwagers_class.value;
            if(r== "wagers_history"){
                eval("date_ranges.style.display=\"block\";");
                
                
            }else if(r == "wagers_today"){
                 eval("date_ranges.style.display=\"none\";");
            }
        }
        function openQuerPage()
        {
            location="?" + "date_start=" + document.FrmData.date_start.value +
            "&date_end=" + document.FrmData.date_end.value +
            "&SelOutInType=" + document.FrmData.SelOutInType.value ;
        }
        
//         Select_TM_num
    </script>

</head>
<body onload="loadShow();">
    <form id="FrmData" name="FrmData" method="post" runat="server">
        <div class="div_windows">
            <table class="table_windows" cellspacing="0" cellpadding="0" border="0">
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
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" style="width: 600px; height: 16px">
                                                <% =Session["TmMessage"] %>
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
                        <td class="Td_Table">
                            <table id="Table1" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table class="table_ChipTitle" cellspacing="1" cellpadding="0" border="0">
                                                <tr>
                                                    <td style="width: 150px">
                                                        我的钱包->交易记录</td>
                                                    <td colspan="2" style="text-align: right">
                                                        <uc1:WebMoneyManToolMenu ID="WebMoneyManToolMenu2" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table id="Table2" runat="server" class="table_ChipHead" cellspacing="1" cellpadding="0">
                                <tr>
                                    <td class="td_Head_set_cen" style="width: 150px">
                                        日期区间</td>
                                    <td class="td_Text_set">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <input class="za_text" maxlength="11" value="2007-04-17" name="date_start" id="date_start" runat="server" style="width: 120px">
                                                    <a onclick="javascript:calendar(document.getElementById('date_start'),event);return false;" href="javascript:%20void(0);">
                                                        <img height="21" src="../images/calendar.gif" width="34" border="0" name="imgCalendar"></a> ~
                                                    <input class="za_text" maxlength="10" size="10" value="2007-04-17" name="date_end" id="date_end" runat="server" style="width: 120px">
                                                    <a onclick="javascript:calendar(document.getElementById('date_end'),event);return false;" href="javascript:%20void(0);">
                                                        <img height="21" src="../images/calendar.gif" width="34" border="0" name="imgCalendar"></a></td>
                                                <td>
                                                    &nbsp; &nbsp; &nbsp; &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td_Head_set_cen">
                                        记录类型</td>
                                    <td class="td_Text_set">
                                        <select id="SelOutInType" style="width: 120px" runat="server">
                                            <option selected="selected" value="0">支出和存入记录</option>
                                            <option value="1">支出记录</option>
                                            <option value="2">存入记录</option>
                                        </select>
                                        <input id="Button1" type="button" class="button_Ok" onclick="javascript:openQuerPage( );" value="确定" /></td>
                                </tr>
                            </table>
                            <table id="TableA"   border="0" cellpadding="0" cellspacing="1" class="Main_Table">
                                <tr>
                                    <td class="td_Head_set_cen">
                                        交易码</td>
                                    <td class="td_Head_set_cen">
                                        交易日期</td>
                                    <td class="td_Head_set_cen">
                                        状况</td>
                                    <td class="td_Head_set_cen">
                                        备注</td>
                                    <td class="td_Head_set_cen">
                                        支出(RMB)</td>
                                    <td class="td_Head_set_cen">
                                        存入(RMB)</td>
                                </tr>
                                <tbody id="MyTbody" runat="server">
                                </tbody>
                                <tr class="list_cen">
                                    <td>
                                        总计</td>
                                    <td class="td_list_cen_right" colspan="3">
                                        <asp:Label ID="labSumCount" runat="server"></asp:Label></td>
                                    <td class="td_list_cen_right">
                                        <asp:Label ID="labMoneyOut" runat="server" Width="60px"></asp:Label>
                                    </td>
                                    <td class="td_list_cen_right"">
                                        <asp:Label ID="labMoneyIn" runat="server" Width="60px"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
    </form>
</body>
</html>
