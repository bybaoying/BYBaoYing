<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WebMessagebox, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
		<script language="JavaScript" type="text/javascript" >
		    var lMessageStr ="<% =Request.QueryString["MessageStr"] %>";
		    switch (lMessageStr){
              case '':
                  lMessageStr = "用户名和密码不正确！";
                  break;
              case '0':
                  lMessageStr = "无此用户或密码错误！";
                  break;
              case '1':
                  lMessageStr = "用户名已登陆.请二分钟后重试！";
                  break;
              case '2':
                  lMessageStr = "帐号冻结不能进入管理！";
                  break;  
                  
          }
		    
            alert(lMessageStr);history.back();
            </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

