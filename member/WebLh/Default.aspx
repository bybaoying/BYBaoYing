<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_Default, App_Web_3mbbw7kj" async="true" enableEventValidation="false" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <title>诚际网在线聊天 </title>
    <meta content="text/html;charset=upf-8" http-equiv="Content-Type" />
</head>
<body>
    <asp:Label ID="Headingmsg" Text="Enter Your Email Address:" runat="server" />
    <form id="FORM1" method="post" runat="server">
        Email Recipient:
        <input type="text" name="to"/>
        <br/>
        Email Sender:
        <input type="text" name="from"/>
        <input id="Submit1" type="submit" name="Submit" value="Send Mail" runat="server" onserverclick="SendMail"/>
        <br />
        <br />
        HttpUrl:
        <input type="text" name="HttpUrl" id="HttpUrlA" runat="server" value="http://www.lottery.gov.cn/lottery/draws/Global.aspx"/>&nbsp;<br/>
        Http Post Text:
        <input type="text" name="HttpText" id="Text2" runat="server" value="lottery=4&cmd=1"/>
        <input id="HttpGet" type="submit" name="HttpGet" value="Http Get" runat="server" onserverclick="HttpGet_ServerClick" />
        <br />
        Get Http Text
        <textarea id="TxtGetHttpA" runat="server" cols="20" rows="2"></textarea>
        <br />
        <br />
        <br />
        HttpUrl:
        <input type="text" name="HttpUrl" id="HttpUrl" runat="server" value="http://data.shishicai.cn/handler/kuaikai/data.ashx"/>&nbsp;<br/>
        Http Post Text:
        <input type="text" name="HttpText" id="HttpText" runat="server" value="lottery=4&cmd=1"/>
        <input id="HttpPost" type="submit" name="HttpPost" value="Http Post" runat="server" onserverclick="HttpPost_ServerClick"/>
        <br />
        Get Http Text
        <textarea id="TxtGetHttp" runat="server" cols="20" rows="2"></textarea>
    </form>
</body>
</html>
