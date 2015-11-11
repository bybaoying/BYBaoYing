<%@ page language="c#" inherits="WebTm.chk_rule, App_Web_3mbbw7kj" enableEventValidation="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>未命名文件</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../style/mem_ok.css" type="text/css" rel="stylesheet">

    <script language="javascript">
    	     alert(" <% =Session["TmMessage"] %>  ");

         function new_win(html_name,winname,w,h){
            if(winname=='') winname='WINDOWS';
            if(w=='') w=640;
            if(h=='') h=480;
            //undefined
            winformat="toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=no,width="+w+",height="+h;
            winid = window.open(html_name,winname,winformat)
        }
    </script>

    <meta content="MSHTML 6.00.2800.1498" name="GENERATOR">
</head>
<body oncontextmenu="window.event.returnValue=false" text="#000000" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <table class="border-line" cellspacing="0" cellpadding="0" width="770" align="center" border="0">
        <tbody>
            <tr>
                <td>
                    <table cellspacing="0" cellpadding="0" width="770" border="0">
                        <tbody>
                            <tr>
                                <td>
                                    <img height="122" src="../images/iagree_ph11.jpg" width="135"></td>
                                <td>
                                    <img height="122" src="../images/iagree_ph12.jpg" width="202"></td>
                                <td>
                                    <img height="122" src="../images/iagree_ph13.jpg" width="217"></td>
                                <td>
                                    <img height="122" src="../images/iagree_ph14.jpg" width="216"></td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <table class="ok-tab" cellspacing="0" cellpadding="0" width="650" align="center" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    致会员：
                                                    <ol>
                                                        <li>当您在下注之后，请等待显示“<font color="#ff0000">下注成功</font>”信息。
                                                            <li>为了避免出现争论，您必须在下注之后检查“<font color="#ff0000">下注状况</font>”。
                                                                <li>任何的投诉必须在开彩之前提出，本公司不会受理任何开彩之后的投诉。
                                                                    <li>所有投注项目，公布赔率时出现的任何打字错误或非故意人为失误，本公司保留改正错误和按正确赔率结算投注的权力。
                                                                        <li>开彩後的投注，将被视为「<font color="#ff0000">无效</font>」。所有赔率将不时浮动，派彩时的赔率将以确认投注时之赔率为准。 </li>
                                                    </ol>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font color="#103359"><strong>本公司管理层</strong></font> 敬启<br>
                                                    <font color="#cc0000">我了解以及同意贵公司列明的协议和规则。</font></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <input class="za-button" style="width: 80px" onclick="location.href='logout.aspx';" type="submit" value="我不同意" name="submit">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input class="za-button" style="width: 80px" onclick="location.href='lt_index.htm';" type="submit" value="我同意" name="submit2"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    &nbsp;</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
    <p class="foot">
        &nbsp;</p>
</body>
</html>
