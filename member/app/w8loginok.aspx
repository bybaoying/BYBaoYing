<%@ page language="c#" inherits="WebTm.w8loginok, App_Web_vwupdd6k" enableEventValidation="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>��ʾ��Ϣ</title>

    <script language="JavaScript" type="text/javascript">
		    var lMessageStr ="<% =Request.QueryString["MessageStr"] %>";
		    switch (lMessageStr){
              case '':
                  lMessageStr = "�û��������벻��ȷ��";
                  break;
              case '0':
                  lMessageStr = "�޴��û����������";
                  break;
              case '1':
                  lMessageStr = "�û����ѵ�½.������Ӻ����ԣ�";
                  break;
              case '2':
                  lMessageStr = "�ʺŶ��᲻�ܽ������";
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
