<%@ page language="C#" autoeventwireup="true" inherits="member_app_lt_header, App_Web_3mbbw7kj" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/mem_header.css" type="text/css" rel="stylesheet">

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
        function PageLoad(){
              document.getElementById('ClickChange').onmouseover=function(){light_bar(this,'ovr');}  
         }
        function Pageclick()
        {
            document.getElementById("line_window").style.visibility = "hidden";
        }      
               

    </script>

    <%--oncontextmenu="window.event.returnValue=false"--%>
</head>
<body onload="PageLoad();" onclick="Pageclick();">
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
                        <a class="m-dot" href="javascript:light_bar(this,'ovr');">���P��Ʊ - �л�</a>
                        <div id="line_window" class="bar3">
                            <table>
                                <tr>
                                    <td class="m-dot1">
                                    </td>
                                    <td>
                                        <a id='TmLine' runat='server' class="line_click" href="javascript:%20void(0);" target="Frame_rule" style="background-color: lime">���P��Ʊ</a>
                                    </td>
                                    <td class="m-dot1">
                                    </td>
                                    <td>
                                        <a id='D3Line' runat='server' class="line_click" href="../app/lt_index_Ot.aspx?GameType=D3" target="Frame_rule">������Ʊ</a>
                                    </td>
                                    <td class="m-dot1">
                                    </td>
                                    <td>
                                        <a id='P3Line' runat='server' class="line_click" href="../app/lt_index_Ot.aspx?GameType=P3" target="Frame_rule">�w����Ʊ</a>
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
                        <a class="m-dot" href="../app/WebMoneyOutInRecord.aspx" target="body">�ҵ�Ǯ��</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="../app/today_wagers.aspx?GameType=TM" target="body">��ע״��</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="../app/history_data.aspx?GameType=TM" target="body">�ʻ���ʷ</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="mem_data.aspx" target="body">��Ա����</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="roul_lt_tw.aspx" target="body">����˵��</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="LT_result.aspx" target="body">�������</a>
                    </td>
                    <td class="m-dot1">
                    </td>
                    <td>
                        <a class="m-dot" href="../app/logout.aspx" target="IB888_MAIN">�ǳ�</a>
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
                            <a class="g-dot" href="lg_Tmpl.aspx" target="body">����</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_dsdx.aspx" target="body">��˫<br />
                                ��С</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_zm.aspx" target="body">����</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_Zmtm.aspx" target="body">������</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_zm16.aspx" target="body">����<br />
                                1-6</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_lm.aspx" target="body">����<br />
                                ����</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_zmgg.aspx" target="body">����<br />
                                ����</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_sxsb.aspx" target="body">��Ф<br />
                                ɫ��</a>
                        </td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_yx.aspx" target="body">һФ<br />
                                β��</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_Yxlx.aspx?classid=A" target="body">��Ф</a><br />
                               <a class="g-dot" href="ln_Yxlx.aspx?classid=B" target="body"> ��β</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_Tsws.aspx" target="body">ͷβ<br />
                                ����</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_lx.aspx" target="body">��Ф</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="ln_bb.aspx" target="body">�벨</a></td>
                        <td class="m-dot2">
                        </td>
                        <td class="btt">
                            <a class="g-dot" href="randomball.aspx" target="body">��ʱ<br />
                                ҡ��</a>
                        </td>
                        <td class="m-dot2">
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>

