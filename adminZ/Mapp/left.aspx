<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_left, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <link href="../style/Mapp_header.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript" >
        if(self == top) location = '/';
        window.parent.parent.document.title = "<% = Session["CoNameCaption"]  %>";
        function showsubmenu(sid)
        {
            whichEl = eval("submenu" + sid);
            if (whichEl.style.display == "none")
            {
                eval("submenu" + sid + ".style.display=\"\";");
            }
            else
            {
                eval("submenu" + sid + ".style.display=\"none\";");
            }

        }
        var AdminLevel;
        var AdminHelper;

        function countdown()
        {
//        return;
            lonload();
            AdminLevel =" <% =Session["AdminLevel"] %>  ";//session 必需在ASPX中执行,不能在HTM中执行
            AdminHelper=" <% =Session["AdminHelper"] %>  ";
        //    AdminHelper=AdminHelper-0;
            
        ////    AdminLevel ='2';
        //    alert(AdminLevel- 1);
        //    if (AdminLevel != 0)//不是管理员不能显示有开奖等系统设置权限
        //        {eval("menuTitle1.style.display=\"none\";");}
        //    if (AdminLevel != 0)//不是管理员不能显示有删除历史数据权限
        //        {eval("zhistory_data.style.display=\"none\";");}
            if (AdminLevel- '1'>=0)
                {
                document.getElementById("AdminLevel1").style.display="none";
                 document.getElementById("AdminLevel1A").style.display="none";
                 }

            if (AdminLevel -2 >= 0)
                {document.getElementById("AdminLevel2").style.display="none";
                 document.getElementById("AdminLevel2A").style.display="none";
                 }
                 
            if (AdminLevel -3>= 0)
                {document.getElementById("AdminLevel3").style.display="none";
                 document.getElementById("AdminLevel3A").style.display="none";
                 }
           if(String(AdminLevel)=='3')
           { 
           }

             switch (Number(AdminLevel))
             {
              case 0:
                  document.getElementById("admin_pasword").innerHTML="[资料管理]";

                  break;
              case 1:
                  document.getElementById("admin_pasword").innerHTML="[股东资料]";
                  break;
              case 2:
                  document.getElementById("admin_pasword").innerHTML="[总代理资料]";
                  break;

              case 3:
                  document.getElementById("admin_pasword").innerHTML="[代理资料]";
                  break; 

                           
              }
            if (AdminHelper  == 1)
                {//助手管理员，没有下面的权限
                document.getElementById("AdminLevel1").style.display="none";
                document.getElementById("AdminLevel2").style.display="none";
                document.getElementById("AdminLevel3").style.display="none";

                
                document.getElementById("AdminUser").style.display="none";
                document.getElementById("AdminUserA").style.display="none";
              
                document.getElementById("AdminHelper").style.display="none";
                
                document.getElementById("AdminLevel1A").style.display="none";
                document.getElementById("AdminLevel2A").style.display="none";
                document.getElementById("AdminLevel3A").style.display="none";
                document.getElementById("AdminHelper").style.display="none";
                
                document.getElementById("AdminHelperaA").style.display="none";
                


                }
                        
        }


            

        function light_bar(st,act){
//          switch(act){
//           case 'ovr':
//                document.getElementById("line_window").style.visibility = "visible";
//                document.getElementById("line_window").onmouseout=function(){light_bar(this,'out');}  
//             break;
//           
//           case 'out':
//             document.getElementById("line_window").style.visibility = "hidden";
//             break;
//            
//           case 'clk':
//             break;
//          }
        }
        function lonload()
        {
//              document.getElementById("ClickChange").onmouseover=function(){light_bar(this,'ovr');}  
         }
        function lonclick()
        {
//            document.getElementById("line_window").style.visibility = "hidden";
        }      
               

    </script>

</head>
<body onload="countdown();">
    <div class="top_bg">
        <div class="top_left_logo">
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="260" height="87">
                <param name="movie" value="../images/head_star.swf" />
                <param name="quality" value="high" />
                <param name="wmode" value="transparent" />
                <embed src="../images/head_star.swf" width="260px" height="87px" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
            </object>
        </div>
        <div class="top_left_c">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="19" height="25">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="90px" class="message_gd">
                                    <img src="../images/message.gif" width="15" height="12" /><span class="message_gd_1">最新公告：</span></td>
                                <td class="message_gd">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="80%">
                                                <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" scrollamount="2" scrolldelay="20" direction="left" width="100%" height="100%">
                                                    <span ID="ShowMessage"  class="message_gd_2"  runat="server">
                                                        
                                                    </span>
                                                </marquee>
                                                

                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="120px" class="message_gd">
                                    <a href="#" class="message_gd_1">【历史讯息】</a></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td class="top_c_menu">
                    </td>
                    <td>
                    </td>
                    <td class="top_c_menu">
                    </td>
                    <td>
                    </td>
                    <td class="top_c_menu">
                    </td>
                    <td>
                    </td>
                    <td class="top_c_menu">
                    </td>
                    <td>
                    </td>
                    <td class="top_c_menu">
                    </td>
                    <td>
                    </td>
                    <td class="top_c_menu">
                    </td>
                    <td>
                    </td>
                    <td class="top_c_menu">
                    </td>
                    <td>
                    </td>
                    <td class="top_c_menu">
                    </td>
                    <td>
                    </td>
                    <td class="top_c_menu">
                    </td>
                    <td class="top_c_menu">
                    </td>
                </tr>
                <tr>
                    <td align="center" id="ClickChange">
                        <a href="javascript:light_bar(this,'ovr');" class="top_font_menu">[操盘]</a>
                    </td>
                    <td class="top_font_menu">
                        |
                    </td>
                    <td id="AdminHelper">
                        <a href="admin_helper.aspx?User_Start=0" target="main" class="top_font_menu">[子帳號]</a>
                    </td>
                    <td id="AdminHelperaA" class="top_font_menu">
                        |
                    </td>
                    <td id="AdminLevel1">
                        <a href="admin_super.aspx?AdminLevel=1&User_Start=0" target="main" class="top_font_menu">[股東]</a>
                    </td>
                    <td id="AdminLevel1A" class="top_font_menu">
                        |
                    </td>
                    <td id="AdminLevel2">
                        <a href="admin_super.aspx?AdminLevel=2&User_Start=0" target="main" class="top_font_menu">[總代理]</a>
                    </td>
                    <td id="AdminLevel2A" class="top_font_menu">
                        |
                    </td>
                    <td id="AdminLevel3">
                        <a href="admin_super.aspx?AdminLevel=3&User_Start=0" target="main" class="top_font_menu">[代理商]</a>
                    </td>
                    <td id="AdminLevel3A" class="top_font_menu">
                        |
                    </td>
                    <td id="AdminUser">
                        <a href="WebUser.aspx?User_Start=0" target="main" class="top_font_menu">[會員]</a>
                    </td>
                    <td id="AdminUserA" class="top_font_menu">
                        |
                    </td>
                    <td>
                        <a href="admin_pasword.aspx" target="main" class="top_font_menu" id="admin_pasword">[股東資料]</a>
                    </td>
                    <td class="top_font_menu" id="admin_paswordA">
                        |
                    </td>
                    <td id="SetupMain">
                        <a href="WebSMain.aspx" target="main" class="top_font_menu">[设置]</a>
                    </td>
  
                    <td id="SetupMainA" class="top_font_menu">
                        |
                    </td>
                    <td id="zhistory_Report">
                        <a href="zhistory_Report.aspx" target="main" class="top_font_menu">[報表]</a>
                    </td>
                    <td id="zhistory_ReportA" class="top_font_menu">
                        |
                    </td>
                    <td class="top_font_menu">
                        <a href="../Mapp/MainLogout.aspx" target="IB888_MAIN" class="top_font_menu">[登出]</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="bar3" id="line_window">
                            <table id="tableType" runat="server">
                            </table>
                        </div>
                    </td>
                    <td align="left" colspan="18">
                    </td>

                </tr>
            </table>
        </div>
    </div>
    <div class="top_right_bg">
    </div>
</body>
</html>
