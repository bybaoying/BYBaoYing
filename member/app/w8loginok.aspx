<%@ page language="c#" inherits="WebTm.w8loginok, App_Web_vwupdd6k" enableEventValidation="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>提示信息</title>

    <script language="JavaScript" type="text/javascript">
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

    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
</head>
<body>
</body>
</html>
