<%@ page language="C#" autoeventwireup="true" inherits="member_app_logout, App_Web_vwupdd6k" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>logout</title>

    <script language="JavaScript" type="text/javascript">
            alert('请重新输入你的名字及密码进入!!!!!');
            window.open("<%= base.GetGlobalResourceObject("res_css_style", "user_weblogin") %>.aspx","IB888_MAIN");
            
    </script>

</head>
<body>
</body>
</html>

