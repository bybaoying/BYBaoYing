<%@ page language="C#" autoeventwireup="true" inherits="member_app_WebLoginRefreshShow, App_Web_vwupdd6k" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>

    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>

    <script language="JavaScript" type="text/javascript" >
        function PageLoad()
        {
            ReTimeShow();
            
        }
        function ReTimeShow()
        {
            var lReftime = 100; 
            AutoRefShow(lReftime,"LabReftime");
        }
  
        function RefTimeBack(){
            var cw = document.getElementById("LoginRefresh");      
            cw.src= "WebLoginRefresh.aspx?GameType=<% =Request.QueryString["GameType"] %>"; 
        }
    </script>
</head>
<body onload="PageLoad();" >
    <form id="form1" runat="server">
        <div>
            <label id="LabReftime">
            </label>
            <a href="logout.aspx">GO</a>
            <br />
            <iframe id="LoginRefresh" name="LoginRefresh" src="about:blank" width="140" height="140" style="display: none; visibility: hidden"></iframe>
        </div>
    </form>
 
</body>
</html>
