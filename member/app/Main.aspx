<%@ page language="C#" autoeventwireup="true" inherits="Main, App_Web_vwupdd6k" enableEventValidation="false" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <script language="JavaScript" type="text/javascript">
  
            window.parent.document.title = "<% = Session["CoNameCaption"]  %>";
//            alert(document.Frame_rule);
//            alert(document.frames["Frame_rule"]);
            
//            alert(window.Frame_rule.location= "FT_order.aspx");
//            window.Frame_rule.location= "FT_order.aspx"
    </script>

</head>
<frameset id="frame" border="false" framespacing="0" rows="*" frameborder="1" cols="*" scrolling="yes">
    <FRAMESET border="false" frameSpacing="0" rows="*,0" frameBorder="0" scrolling="yes">
        <FRAME   id="Frame_rule"  name="Frame_rule" src="chk_rule.aspx?sysUser=<% = Request.QueryString["sysUser"]  %>" >
        <FRAME name="login_Refresh" <%--src="WebLoginRefreshShow.aspx"--%> scrolling="no">
    </FRAMESET>
</frameset>
</html>
