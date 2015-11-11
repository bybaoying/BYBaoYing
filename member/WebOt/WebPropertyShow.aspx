<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_WebPropertyShow, App_Web_h-elesbu" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript">
        function onLoad()
        {
            //document.write(window.parent.location.href.toString();)#h000"
 
            document.getElementById("CaptionTop").setAttribute("href",document.referrer + "#hTop");
            document.getElementById("Caption0").setAttribute("href",document.referrer + "#h000");
            document.getElementById("Caption1").setAttribute("href",document.referrer + "#h100");
            document.getElementById("Caption2").setAttribute("href",document.referrer + "#h200");
            document.getElementById("Caption3").setAttribute("href",document.referrer + "#h300");
            document.getElementById("Caption4").setAttribute("href",document.referrer + "#h400");
            document.getElementById("Caption5").setAttribute("href",document.referrer + "#h500");
            document.getElementById("Caption6").setAttribute("href",document.referrer + "#h600");
            document.getElementById("Caption7").setAttribute("href",document.referrer + "#h700");
            document.getElementById("Caption8").setAttribute("href",document.referrer + "#h800");
            document.getElementById("Caption9").setAttribute("href",document.referrer + "#h900");
        }
        //target="_parent" 在ie中点连接输入网页重新载入,ff只定位,不重新载入 换成  target="body" 都不得新载入
//        alert(document.referrer );
//        alert(window.parent.location.href.toString() );
    </script>

</head>
<body onload="onLoad();">
    <form id="form1" runat="server">
        <div>
            <div style="width: 120px">
                <table id="Table6" width="100%" class="table_ChipOther" cellspacing="1">
                    <tbody>
                        <tr>
                            <td class="td_Head_set_cen" colspan="2">
                                <b>快收</b></td>
                        </tr>
                        <tr class="Tr_Label">
                            <td align="center" class="td_Label" colspan="2">
                                <a id="CaptionTop" target="body">顶端</a></td>
                        </tr>
                        <tr class="Tr_Label">
                            <td align="center" class="td_Label">
                                <a id="Caption0" target="body">0头</a>
                            </td>
                            <td align="center" class="td_Label">
                                <a id="Caption1"    target="body">1头</a>
                            </td>
                        </tr>
                        <tr class="Tr_Label">
                            <td align="center" class="td_Label">
                                <a id="Caption2" target="body">2头</a>
                            </td>
                            <td   align="center" class="td_Label">
                                <a id="Caption3" target="body">3头</a>
                            </td>
                        </tr>
                        <tr class="Tr_Label">
                            <td align="center" class="td_Label">
                                <a id="Caption4" target="body">4头</a></td>
                            <td align="center" class="td_Label">
                                <a id="Caption5" target="body">5头</a></td>
                        </tr>
                        <tr class="Tr_Label">
                            <td align="center" class="td_Label">
                                <a id="Caption6" target="body">6头</a></td>
                            <td align="center" class="td_Label">
                                <a id="Caption7" target="body">7头</a></td>
                        </tr>
                        <tr class="Tr_Label">
                            <td align="center" class="td_Label">
                                <a id="Caption8" target="body">8头</a></td>
                            <td align="center" class="td_Label">
                                <a id="Caption9" target="body">9头</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
