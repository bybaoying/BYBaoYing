<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WMoneyRecord, App_Web_mywy7g8u" enableEventValidation="false" %>

<%@ Register Src="WMoneyManToolMenu.ascx" TagName="WMoneyManToolMenu" TagPrefix="uc1" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../style/control_main.css" rel="stylesheet" type="text/css"/>
   

    <script language="javascript" type="text/javascript" charset="gb2312" src="../Scripts/Calendar30.js"> </script>

 
    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>
    <script language="JavaScript" type="text/javascript" >

        function Data_Delete(){
        
            var obj = document.FrmData ;
            var myTable= document.getElementById ("MyTbody");
            var myRows= myTable.rows;
//            alert (obj["SelButY" + String( 0) ].checked);
            var mylength = myRows.length ;
            var lquerstr ="";
            for(i=0; i<mylength; i++) {
	            if (obj["SelBut" + String(i) ].checked) {
 
		            lquerstr = lquerstr + obj["SelBut" + String(i) ].value + "&";
	            }
            }
            document.getElementById ("TxtButData").value=lquerstr;
             
            if(confirm('请对交易记录是否删除确认!'))
            {
                }
            else
            {
                return false;
            }
 
        }
    </script>


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
            "&SelOutInType=" + document.FrmData.SelOutInType.value +  
            '&Pageid=' + document.all['DDPage'].value  +  
            '&SelState=' + document.all['SelState'].value ;
            
            
            
        }
        
//         Select_TM_num
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0" onload="loadShow();">
    <form id="FrmData" runat="server"  onsubmit="return Data_Delete();" enableviewstate="False">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line" colspan="2">
                    </td>
                </tr>
                <tr class="mem_index_ctrl_bg">
                    <td>
                        交易记录:页数:
                        <select id="DDPage" runat="server" class="zaselect_ste" name="DDPage" onchange="openQuerPage();">
                            <option selected="selected" value="1">1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="LabPageCont" runat="server" Width="11px"></asp:Label>
                        页
                    </td>
                    <td align="right">
                        <uc1:WMoneyManToolMenu ID="WMoneyManToolMenu2" runat="server" />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line" colspan="2">
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table8" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
            <tr>
                <td class="list_lef">
                    日期区间</td>
                <td class="list_cen" style="text-align: left">
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
                <td class="list_lef">
                    记录类型</td>
                <td class="list_cen" style="text-align: left">
                    <select id="SelOutInType" style="width: 120px" runat="server">
                        <option selected="selected" value="0">支出和存入记录</option>
                        <option value="1">支出记录</option>
                        <option value="2">存入记录</option>
                    </select>
                </td>
                <td class="list_cen" style="text-align: left">
                    状况</td>
                <td class="list_cen" style="text-align: left">
                    <select id="SelState" runat="server">
                        <option selected="selected" value="0">全部</option>
                        <option value="1">批准</option>
                        <option value="2">拒绝</option>
                        <option value="3">待批</option>
                    </select>
       
                        <input id="Button1" type="button" class="button_Ok" onclick="javascript:openQuerPage( );" value="确定" />
                </td>
                <td class="list_cen" style="text-align: left">
                </td>
            </tr>
        </table>
        <table  border="0" cellpadding="0" cellspacing="1" class="rp_m_tab">
            <tr class="m_title_edit">
                <td align="center" width="65">
                    交易码</td>
                <td align="center" width="100">
                    交易日期</td>
                <td align="center" width="80">
                    会员</td>
                <td align="center" width="80">
                    银行</td>
                <td align="center" width="70">
                    管理员</td>
                <td align="center" width="81">
                    管理日期</td>
                <td align="center" width="40">
                    状况</td>
                <td align="center">
                    备注</td>
                <td align="center" width="80">
                    支出(RMB)</td>
                <td align="center" width="80">
                    存入(RMB)</td>
                <td align="center" width="80">
                    操作</td>
            </tr>
                        <tbody id="MyTbody" runat="server">
            </tbody>
            
            <tr class="m_rig_re">
                <td align="center" class="ball_td">
                    总计</td>
                <td align="right" class="list_cen" colspan="7">
                    <input id="TxtButData" runat="server" readonly="readonly" style="visibility: hidden" type="text" />
                    <asp:Label ID="labSumCount" runat="server"></asp:Label></td>
                <td align="center" class="list_cen">
                    <p align="right">
                        <asp:Label ID="labMoneyOut" runat="server" Width="60px"></asp:Label></p>
                </td>
                <td align="center" class="list_cen">
                    <p align="right">
                        <asp:Label ID="labMoneyIn" runat="server" Width="60px"></asp:Label></p>
                </td>
                <td align="center" class="list_cen">
                    <input id="ButData" runat="server" onserverclick="ButDelete_Click" type="submit" value="删除" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
