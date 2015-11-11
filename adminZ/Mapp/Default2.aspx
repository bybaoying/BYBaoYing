<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_Default2, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    
</head>
<script>
   function SaveGroupMessage()
       {
            var xh = new ActiveXObject("MSXML2.XMLHTTP");
            xh.open("POST","SaveGroupMessage.aspx?GroupID=",false);
            xh.send(document.getElementById('WebChat1_chatpanel').outerHTML);
            alert(xh.responseText); 
        }
    function ChatEnter()
        {
            oTxt = document.getElementById("WebChat1_chattextbox");
            oDiv = document.getElementById("WebChat1_chatpanel");

            oTxt.value = "<font color=#F68B4D>"+document.getElementById("hideEntered").value+"</font>";
            DoChatCallBack(oTxt);
            window.setTimeout("DoChatCallBack()", 2000);
        }
        //http://localhost/WebTm//Lc_TmGet.aspx?Username=n123456&UserPassword=123456&aUserNo=tm2008.v1.0&auserKey=1960214384&aUserlongin=1&tmclassid=01.
        
   function GetMessage()
       {
            var vUrl = "http://localhost/WebTm//Lc_TmGet.aspx?Username=n123456&UserPassword=123456&aUserNo=tm2008.v1.0&auserKey=1960214384&aUserlongin=1&tmclassid=01.";
            var xh = new ActiveXObject("MSXML2.XMLHTTP");
            xh.open("get", vUrl, false, "", "");
            xh.send("");
            alert(xh.responseText); 
            window.setTimeout("GetMessage()", 2000);
        }
</script>  
<body onload="GetMessage()">
    <form id="form1" runat="server">
    <div>

    </div>
    </form>
</body>
</html>

