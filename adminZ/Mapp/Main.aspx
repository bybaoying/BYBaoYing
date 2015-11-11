<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_Main, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>管理中心</title>
    <%--<META http-equiv=Content-Type content="text/html; charset=gb2312">--%>

    <script language="JavaScript" type="text/javascript">
//        window.parent.document.title ="<% = Session["SysTitle"] %>";
    </script>

</head>
<frameset id="frame" border="false" framespacing="0" rows="*" frameborder="1" cols="*" scrolling="yes">
    <FRAMESET border="false" frameSpacing="0" rows="87,*,0,0" frameBorder="0" scrolling="yes">
        <FRAME name="top" src="Left.aspx" scrolling="no">
        <FRAME name="main" src="about:blank">
        <frame name="main2"  src="about:blank" scrolling="no">
        <FRAME name="login_Refresh" src="WLoginRefreshShow.htm">
    </FRAMESET>
</frameset>
</html>
