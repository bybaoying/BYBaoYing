<%@ page language="C#" autoeventwireup="true" inherits="member_app_today_wagers, App_Web_01izlwfu" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css"  />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>
    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>
    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        function PageLoad(){
            ReTimeShow();
        }
        function ShowPage()
        { 
	        location='?GameType=<% =Request.QueryString["GameType"] %>&Pageid=' + document.getElementById('DDPage').value;
	        
        } 
        function ReTimeShow()
        {
            var lReftime = 30; 
            AutoRefShow(lReftime,"");
        }
        function RefTimeBack(){

            var cw = document.getElementById("Frame_List");      
            cw.src= "today_wagers_List_Sub.aspx?ty=0&GameType=<% =Request.QueryString["GameType"] %>&Pageid=" + document.getElementById("DDPage").value + "&sa=50"; 
        }
         function ShowTableData(vDataRowArr,vDataType)
        {//显示会员列表
            if (vDataType == 1 )
            {
                var lObjTable =document.getElementById("TabTbody");
                ClearTableData(lObjTable); 
            }
//            for (var iRow=0 ; iRow < vDataRowArr.length; iRow++)
//            { 
//                ShowUserInfoRow(lObjTable,vDataRowArr[iRow],mTableRowCount);
//            } 
        }
        function ClearTableData(vObjTable){
            //把列表框中的数据清空
            var i = 0;
            var lRowCont = vObjTable.rows.length;
            for (i ; i < lRowCont; i++) {
	            vObjTable.deleteRow(0);

            }
	           document.getElementById("labXjCount").innerHTML="";
	           document.getElementById("labXjXzje").innerHTML="";
	           document.getElementById("labXjKyje").innerHTML="";
	           document.getElementById("labSumCount").innerHTML="";
	           document.getElementById("labSumXzje").innerHTML="";
	           document.getElementById("labSumKyje").innerHTML="";
        }
    </script>

    <style type="text/css">
        .td_Caption_set{
            width: 80px;
            
        }
    </style>
</head>
<%--oncontextmenu="window.event.returnValue=false"--%>
<body  onload="PageLoad();">
    <form id="Form1" method="post" runat="server">
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
                            <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table class="table_ChipTitle" cellspacing="1" cellpadding="0" border="0">
                                                <tr>
                                                    <td width="107" height="1">
                                                        <asp:TextBox ID="ContNowPage" runat="server" Visible="False" Width="8px">1</asp:TextBox></td>
                                                    <td align="left" style="text-align: right"><span id="LabReftime"></span>
                                                        (<b>香港时间:</b>
                                                        <asp:Label ID="LabNowDate" runat="server"></asp:Label>)
                                                        <select id="DDPage" runat="server" class="zaselect_ste" name="DDPage" onchange="ShowPage();">
                                                            <option selected="selected" value="1">1</option>
                                                        </select>
                                                        /<asp:Label ID="ContSumPage" runat="server"></asp:Label>页
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table id="TableA" class="Main_Table" cellspacing="1" cellpadding="0" >
                                <tr>
                                    <td class="td_title_set_cen" colspan="5">
                                        下注状况
                                        <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="td_Head_set_cen">
                                        下注单号</td>
                                    <td class="td_Head_set_cen">
                                        方式</td>
                                    <td class="td_Head_set_cen">
                                        内容</td>
                                    <td class="td_Head_set_cen">
                                        下注金额</td>
                                    <td class="td_Head_set_cen">
                                        可蠃金额</td>
                                </tr>
                                <tbody id="TabTbody" runat="server">
                                </tbody>
                                <tr class="list_cen">
                                    <td>
                                        小计</td>
                                    <td colspan="2" class="td_list_cen_right">
                                        <asp:Label ID="labXjCount" runat="server" Width="60px"></asp:Label></td>
                                    <td class="td_list_cen_right">
                                        <asp:Label ID="labXjXzje" runat="server" Width="60px"></asp:Label>
                                    </td>
                                    <td class="td_list_cen_right">
                                        <asp:Label ID="labXjKyje" runat="server" Width="60px"></asp:Label>
                                    </td>
                                </tr>
                                <tr class="list_cen">
                                    <td>
                                        总计</td>
                                    <td colspan="2" class="td_list_cen_right">
                                        <asp:Label ID="labSumCount" runat="server"></asp:Label></td>
                                    <td class="td_list_cen_right">
                                        <asp:Label ID="labSumXzje" runat="server" Width="60px"></asp:Label>
                                    </td>
                                    <td class="td_list_cen_right">
                                        <asp:Label ID="labSumKyje" runat="server" Width="60px"></asp:Label>
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
    <div id="line_window" style="display: none; visibility: hidden; position: absolute; z-index: 1; background-color: #99ccff;">
        <iframe id="Frame_List" name="Frame_List" frameborder="0" scrolling="no" src=""
            style="width: 200px; height: 50px"></iframe>
    </div>
</body>
</html>

