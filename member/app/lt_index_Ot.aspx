<%@ page language="C#" autoeventwireup="true" inherits="member_app_lt_index_Ot, App_Web_vwupdd6k" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<frameset border="0" framespacing="0" rows="0,82,*" frameborder="0">
    <FRAME name="login_Refresh" src="WebLoginRefreshShow.aspx?GameType=<% =Request.QueryString["GameType"] %>" scrolling="no">
    <frame name="header" src="../WebOt/lt_header.aspx?GameType=<% =Request.QueryString["GameType"] %>" noresize scrolling="no">
    <frameset border="0" framespacing="0" frameborder="0" cols="242,*">
        <frame name="bbnet_mem_order" src="../App/select_lt.aspx?GameType=<% =Request.QueryString["GameType"] %>" noresize scrolling="auto">
        <frame name="body" src="../WebOt/ld_1z.aspx?GameType=<% =Request.QueryString["GameType"] %>">
    </frameset>
</frameset>
</html>

