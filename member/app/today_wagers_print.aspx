<%@ page language="C#" autoeventwireup="true" inherits="member_app_today_wagers_print, App_Web_vwupdd6k" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    
    <link href="../../member/style/Page_Print.css" rel="stylesheet" type="text/css" media="print" />
    <link href="../../member/<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/today_wagers_print_noprint_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css"  media="print"/>
    
    <link href="../../member/<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/today_wagers_print_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript" src="../../member/Scripts/JS_Page_Print.js"></script>

    <script language="javascript" type="text/javascript">

    </script>


</head>
<%-- oncontextmenu="window.event.returnValue=false" leftmargin="0" topmargin="0"
    document.btype.value="parent.body.document.btype.value" --%>
<body>
    <div class="div_Class">


 
            <div class="div_table">
                <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                    <tbody>
                        <tr>
                            <td class="td_Caption_set">
                                期数:
                            </td>
                            <td>
                                <span id="Labtmwinno" class="span_set" runat="server"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
  
        <div class="div_table">
            <table id="TableA" class="Main_Table" cellspacing="1" cellpadding="0" border="0">
                <thead>
                    <tr>

                        <td class="td_Head_set_cen">
                            号码/赔率</td>
                        <td class="td_Head_set_cen">
                            金额</td>
                    </tr>
                </thead>
                <tbody id="TabTbody" runat="server">
                </tbody>
            </table>
        </div>
        <div class="noprint div_cmd">
            <span>
                <input id="btnCancel" runat="server" class="no" name="btnCancel" type="button" value="关闭" />
            </span><span>
                <input id="cmdPagePrint" type="button" onclick="javascript:printit();" value="打印" />
            </span>
        </div>
    </div>
</body>
</html>
