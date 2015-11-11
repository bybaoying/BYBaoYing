<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_admin_Reprint, App_Web_i89w4dwr" enableEventValidation="false" %>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>reports</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/control_main.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript">
        function ExpandIO(flg,DivName){
          if(!(document.all || document.getElementById)){return false;}
          if(flg == null){var flg = "close";}
          if(flg == "small"){
            document.getElementById("expandOpen").style.visibility = "hidden"; 
            document.getElementById("expandClose").style.visibility = "visible";
          }else if (flg=="open"){
            document.getElementById("expandOpen").style.right = "0px"; 
            document.getElementById("expandOpen").style.visibility = "visible"; 
            document.getElementById("expandClose").style.visibility = "hidden";
          }else{
            document.getElementById("expandOpen").style.visibility = "hidden"; 
            document.getElementById("expandClose").style.visibility = "hidden";
          }
        }
        function KB_keepItInDOM(theName,theWantTop,theWantLeft) {
          theRealTop=parseInt(document.body.scrollTop);
          theTrueTop=theWantTop+theRealTop;
          document.getElementById(theName).style.top=theTrueTop + 'px';
          //theRealLeft=parseInt(document.body.scrollLeft);
	        //theTrueLeft=theWantLeft+theRealLeft;
	        //document.getElementById(theName).style.left=theTrueLeft + 'px';
        }

//        function window_open() {
//        win = window.open('../../../../28agent.html','','height=484, width=468, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');
//        }
    </script>

    <script language="JavaScript" type="text/javascript">
        

        function loadShow()
        {
//            alert("请输入结帐日期(YYYY-MM-DD)!!");
            onload_Calendar();
            select_tab();
        }
        function select_tab()
        {
            
            lwagers_class = document.getElementById("wagers_class");
            r = lwagers_class.value;
            if ( r == "wagers_history"){
//                eval("date_ranges.style.display=\"block\";");
                
                 document.getElementById("date_ranges").style.display="block";
//                 document.getElementById("date_rangesa").style.display="block";
 
                game_change();
                
            } else if(r == "wagers_today"){
//                 eval("date_ranges.style.display=\"none\";");
                 document.getElementById("date_ranges").style.display="none";
//                 document.getElementById("date_rangesa").style.display="none";
            }
        }
         function onSubmit()
         {
//          kind_obj = document.getElementById("report_kind");
//          form_obj = document.getElementById("FrmData");
          switch (kind_obj.value){
              case 'A':
//                  form_obj.action = "report_all.php";
                  break;
              case 'C':
//                  form_obj.action = "report_class.php";
                  break;
              case 'M':
//                  form_obj.action = "report_more_sp_all.php";
                  break;
          }
          return true;
         }
         

         function game_change()
         {
              var lgame_type = document.getElementById("game_type");
    //          form_obj = document.getElementById("FrmData");
              switch (lgame_type.value){
                   case 'ZH':
                    document.getElementById("Select_TM_num").style.display = "none";
                    document.getElementById("Select_D3_num").style.display = "none";
                    document.getElementById("Select_P3_num").style.display = "none";
                      break;
                  case 'TM':
                    document.getElementById("Select_TM_num").style.display = "block"; 
                    document.getElementById("Select_D3_num").style.display = "none";
                    document.getElementById("Select_P3_num").style.display = "none";
                      break;
                  case 'D3':
                    document.getElementById("Select_TM_num").style.display = "none"; 
                    document.getElementById("Select_D3_num").style.display =  "block"; 
                    document.getElementById("Select_P3_num").style.display = "none";
                      break;
                  case 'P3':
                    document.getElementById("Select_TM_num").style.display ="none";
                    document.getElementById("Select_D3_num").style.display = "none";
                    document.getElementById("Select_P3_num").style.display = "block"; 
                      break;
              }
              return true;
         }
         function DateVale(vthis)
         {
               document.FrmData.date_start.value=vthis.value;
               document.FrmData.date_end.value=vthis.value; 
         }
         function ShowReport()
         {
//         wagers_class  ztoday_chip_sum.aspx
              var lgame_type = document.getElementById("game_type");
              var kind_obj = document.getElementById("wagers_class");//选择的是注单流水与注单历史
          
              switch (kind_obj.value){
                  case 'wagers_today':
                        location='../MwebLh/ztoday_data_Super.aspx'+ 
                            '?ctype=' + lgame_type.value +
                            '&wtype=' + document.getElementById('Select_TM_type').value ;
                        break;
                  case 'wagers_history':
                       location='../MwebLh/zhistory_data_Super.aspx?date_start=' + document.getElementById('date_start').value + 
                            '&date_end=' + document.getElementById('date_end').value + 
                            '&ctype=' + lgame_type.value +
                            '&wtype=' + document.getElementById('Select_TM_type').value +
                            '&ReportType=' + document.getElementById('Select_Report_type').value;
                            
                      break;
              }
                  
         }
//         Select_TM_num
    </script>

    <link href="../style/calendar.css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/simplecalendar.js"></script>

</head>
<body text="#000000" bgcolor="#ffffff" leftmargin="0" topmargin="0" onload="loadShow();">
    <form id="FrmData" name="FrmData" onsubmit="return onSubmit();" action="" method="post" runat="server">
        <table class="title_manag_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_bg">
                        <table cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                                <tr>
                                    <td>
                                        &nbsp;&nbsp;查询 --报表管理</td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0" width="780" border="0">
            <tbody>
                <tr>
                    <td class="m_tline">
                        <table class="mem_index_tab" cellspacing="1" cellpadding="0" border="0" id="TableA" runat="server">
                            <tbody>
                                <tr>
                                    <td class="rp_title_l">
                                        种类:
                                    </td>
                                    <td class="rp_title_r">
                                        <select class="za_select" name="game_type" id="game_type" runat="server" style="width: 120px" onchange="game_change();">
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="rp_title_l">
                                        帐户分类:
                                    </td>
                                    <td class="rp_title_r">
                                        <select class="za_select" onchange="select_tab();" name="wagers_class" id="wagers_class" runat="server" enableviewstate="false" style="width: 120px">
                                            <option value="wagers_today" selected>即时注单</option>
                                            <option value="wagers_history">历史帐户</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="background-color: #cccccc;">
                                        <div id="date_ranges" style="width: 100%; display: block; background-color: #cccccc;">
                                            <span class="rp_title_date" style="display: block; float: left; height: 22px">日期区间:</span> <span style="width: 351px; height: 10px; display: block; float: left; vertical-align: super;">
                                                <input class="za_text" maxlength="11" value="2007-04-17" name="date_start" id="date_start" runat="server" style="width: 120px; display: block; float: left;" />
                                                <a onmouseover="if (timeoutId) clearTimeout(timeoutId);window.status='Show Calendar';return true;" onclick="g_Calendar.show(event,'FrmData.date_start',true,'yyyy-mm-dd'); return false;"
                                                    onmouseout="if (timeoutDelay) calendarTimeout();window.status='';" href="javascript:%20void(0);"><img height="21" src="../images/calendar.gif" width="34" border="0" name="imgCalendar"
                                                        style="display: block; float: left" /></a> <span style="display: block; float: left">~</span>
                                                <input class="za_text" maxlength="10" size="10" value="2007-04-17" name="date_end" id="date_end" runat="server" style="width: 120px; display: block; float: left;" />
                                                <a href="javascript: void(0);" onmouseover="if (timeoutId) clearTimeout(timeoutId);window.status='Show Calendar';return true;" onmouseout="if (timeoutDelay) calendarTimeout();window.status='';"
                                                    onclick="g_Calendar.show(event,'FrmData.date_end',true,'yyyy-mm-dd'); return false;"><img height="21" src="../images/calendar.gif" width="34" border="0" name="imgCalendar"
                                                        style="display: block; float: left" /></a></span><span style="width: 199px; height: 14px; display: block; float: left;"><select class="za_select" onchange="DateVale(this);" name="Select_TM_num"
                                                            id="Select_TM_num" runat="server" style="display: block; float: left; height: 22px">
                                                            <option value="2007-04-17" selected>请选取期数</option>
                                                        </select>
                                                            <select class="za_select" onchange="DateVale(this);" name="Select_D3_num" id="Select_D3_num" runat="server" style="display: block; float: left; height: 22px">
                                                                <option value="2007-04-17" selected>请选取期数</option>
                                                            </select>
                                                            <select class="za_select" onchange="DateVale(this);" name="Select_P3_num" id="Select_P3_num" runat="server" style="display: block; float: left; height: 22px">
                                                                <option value="2007-04-17" selected>请选取期数</option>
                                                            </select>
                                                        </span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="rp_title_l">
                                        报表分类:
                                    </td>
                                    <td class="rp_title_r">
                                        <select class="za_select" name="report_kind" id="report_kind" runat="server" style="width: 120px">
                                            <option value="A" selected>总帐</option>
                                            <option value="C">分类帐</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="rp_title_l">
                                        投注方式:
                                    </td>
                                    <td class="rp_title_r">
                                        <select class="za_select" name="pay_type" id="pay_type" runat="server" style="width: 120px">
                                            <option value="" selected>全部</option>
                                            <option value="0">信用额度</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="rp_title_l">
                                        下注管道:
                                    </td>
                                    <td class="rp_title_r">
                                        <select class="za_select" name="bet_type" id="bet_type" runat="server" style="width: 120px">
                                            <option value="" selected>全部</option>
                                            <option value="N">网路下注</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="rp_title_l">
                                        投注种类:
                                    </td>
                                    <td class="rp_title_r">
                                        <select class="za_select" name="Select_TM_type" id="Select_TM_type" runat="server" style="width: 120px">
                                            <option value="" selected>全部</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="rp_title_l">
                                        报表类型:
                                    </td>
                                    <td class="rp_title_r">
                                        <select class="za_select" name="Select_Report_type" id="Select_Report_type" runat="server" style="width: 120px">
                                            <option value="sum" selected>总和</option>
                                            <option value="fq">分期</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="rp_bg_bt" cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                                <tr align="middle">
                                    <td height="30" align="center">
                                        <input class="za_button" onclick="ShowReport();" type="button" value="查询" name="SUBMIT" id="Button1">
                                        &nbsp;&nbsp;&nbsp;
                                        <input class="za_button" onclick="javascript:history.go(-1)" type="button" value="取消" name="CANCEL">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
