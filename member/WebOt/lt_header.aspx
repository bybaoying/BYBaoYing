<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_lt_header, App_Web_h-elesbu" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/mem_header.css" type="text/css" rel="stylesheet"/>

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        function light_bar(st,act){
          switch(act){
           case 'ovr':
                document.getElementById("line_window").style.visibility = "visible";
                document.getElementById("line_window").onmouseout=function(){light_bar(this,'out');}  
             break;
           
           case 'out':
             document.getElementById("line_window").style.visibility = "hidden";
             break;
            
           case 'clk':
             break;
          }
        }
        var mGameType ="<% Response.Write( mGameType ); %>";
        function PageLoad(){
              document.getElementById('ClickChange').onmouseover=function(){light_bar(this,'ovr');}  
              switch (mGameType){              
                case "D3":
                    document.getElementById("D3Line").style.backgroundColor="lime";
                    document.getElementById("mainCaption").innerHTML = "福利彩票";
                    break;
                case "P3":
                    document.getElementById("P3Line").style.backgroundColor="lime";
                    document.getElementById("mainCaption").innerHTML = "體育彩票";
                    break;
             }
         }
        function Pageclick()
        {
            document.getElementById("line_window").style.visibility = "hidden";
        }      
               

    </script>
</head>
<body onload="PageLoad();" onclick="Pageclick();"  oncontextmenu="window.event.returnValue=false"<%----%>>
    <div class="headbar">
        <div class="bar1">
        </div>
        <div class="bar2">
        </div>
        <div class="topbar">
            <table class="bt">
                <tr>
                    <td class="m-dot1">
                    </td>
                    <td class="Btt1" id="ClickChange">
                        <a class="m-dot" href="javascript:light_bar(this,'ovr');"><span id="mainCaption"></span> - 切换</a>
                        <div class="bar3" id="line_window" runat='server' >
                            <table>
                                <tr>
                                    <td class="m-dot1">
                                    </td>
                                    <td>
                                        <a id='TmLine' runat='server' class="line_click" href="../app/lt_index_tm.htm" target="Frame_rule">
                                            主盤彩票</a>
                                    </td>
                                    <td class="m-dot1">
                                    </td>
                                    <td>
                                        <a id='D3Line' runat='server' class="line_click" href="../app/lt_index_Ot.aspx?GameType=D3" target="Frame_rule"
                                            >福利彩票</a>
                                    </td>
                                    <td class="m-dot1">
                                    </td>
                                    <td>
                                        <a id='P3Line' runat='server' class="line_click" href="../app/lt_index_Ot.aspx?GameType=P3" target="Frame_rule">
                                            體育彩票</a>
                                    </td>
                                    <td class="m-dot1">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="../app/today_wagers.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">下注状况</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="../app/history_data.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">帐户历史</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="mem_data.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">会员资料</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="roul_lt_tw.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">规则说明</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="LT_result.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">开奖结果</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="../app/logout.aspx" target="IB888_MAIN">登出</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                </tr>
            </table>
 
            <table class="bt1">
                <tbody>
                    <tr>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_4DsEd.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">单双<br />大小</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_Fs.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">复式</a></td>
                        <td class="m-dot2">
                        </td>
                        
                        
                        
                        <td class="btt">
                            <a class="g-dot" href="ld_4Hs.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">合数</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_Kd.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">跨度</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_1z.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">一字</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_2z.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">二字</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_2dw.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">二定位</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_3z.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">三字</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_3dw.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">三定位</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_9z.aspx?GameType=<% Response.Write( mGameType ); %>&Classid=61" target="body">组三</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ld_9z.aspx?GameType=<% Response.Write( mGameType ); %>&Classid=62" target="body">
                                组六</a></td>
                        <td class="m-dot2">
                        </td>
                        
                        <td class="btt">
                            <a class="g-dot" href="ld_Hews.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">和数尾</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="randomball.aspx?GameType=<% Response.Write( mGameType ); %>" target="body">即时<br />
                                摇珠</a>
                        </td>
                        <td class="m-dot2"></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>

