<%@ page language="C#" autoeventwireup="true" inherits="member_app_WebUpdateNet, App_Web_vwupdd6k" enableEventValidation="false" %>


<html >
<head runat="server">
    <title>網站更新啟示</title>
    <META http-equiv="Content-Type"  content="text/html" charset="gb2312">
    <%--//unescape(--%>
       <script  language="JavaScript"  >
            //则返回abc否则返回空字符 
            function getValue(arg,key){ 
                    if(arg.indexOf('=')!=-1){ 
                        
                        var kv=arg.split('='); 
                        if(kv[0]==key){ 
//                            alert(arg);
                            return kv[1]; 
                        } 
                    } 
                    return ''; 
            } 
            //从查询字符串中取得键为key的value 
            //eg. QueryString="?name=abc" key="name" 
            //则返回abc否则返回空字符 
            function getQueryStringValue(key){ 
                var gets =window.location.search; 
//                return get; 
                if(gets.charAt(0)=='?'){ 
                    gets=gets.substr(1); 
                }else{ 
                    return ""; 
                } 
                
                if(gets.indexOf('&')==-1){ 
                    return getValue(gets,key); 
                }else{ 
//                    gets="jjkkl&dkk&kkkk";

                    var argss= gets.split('&');
                
//                    for (var arg in argss){ 
//                        alert (argss[arg]);
//                        var v=getValue(argss[arg],key); 
//                        if(v.length>0){ 
//                            return v; 
//                        } 
                     for(var i=0;argss.length;i++) {
                        var v=getValue(argss[i],key); 
                        if(v.length>0){ 
                            return v; 
                        } 
                    }

                    return ""; 
 
                    
                } 
            } 
       </script>
    <STYLE type=text/css>HTML {
	    PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 14px; BACKGROUND-IMAGE: url(../images/updateNet_images/bg.gif); PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; TEXT-ALIGN: center
    }
    BODY {
	    PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 14px; BACKGROUND-IMAGE: url(../images/updateNet_images/bg.gif); PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; TEXT-ALIGN: center
    }
    #info {
	    BACKGROUND: url(../images/updateNet_images/center.jpg) repeat-y 0px 0px; MARGIN: 32px auto; FONT: 0.75em Verdana, Arial, Helvetica, sans-serif; WIDTH: 466px; COLOR: #30200a; TEXT-ALIGN: left
    }
    SPAN {
	    PADDING-RIGHT: 0px; DISPLAY: block; PADDING-LEFT: 0px; BACKGROUND: url(../images/updateNet_images/top.gif) no-repeat 0px 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 466px; PADDING-TOP: 0px; HEIGHT: 69px
    }
    #main {
	    BACKGROUND: url(../images/updateNet_images/head.jpg) no-repeat 0px 0px; PADDING-TOP: 25px
    }
    UL {
	    PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 13px 45px 10px 60px; PADDING-TOP: 0px
    }
    LI {
	    PADDING-RIGHT: 0px; PADDING-LEFT: 0px; LIST-STYLE-IMAGE: url(../images/updateNet_images/icon.gif); PADDING-BOTTOM: 0px; MARGIN: 10px 0px; PADDING-TOP: 0px
    }
    #show {
	    DISPLAY: block; BACKGROUND: url(../images/updateNet_images/foot.gif) no-repeat 0px bottom; PADDING-BOTTOM: 1px; COLOR: #30200a
    }
    #help {
	    PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px 45px; PADDING-TOP: 0px
    }
    P {
	    PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px
    }
    A {
	    PADDING-RIGHT: 45px; DISPLAY: block; PADDING-LEFT: 45px; BACKGROUND: url(../images/updateNet_images/help.jpg) no-repeat 0px 0px; PADDING-BOTTOM: 10px; MARGIN: 35px 0px 0px; PADDING-TOP: 10px; TEXT-DECORATION: none
    }
    A:link {
	    COLOR: #c00
    }
    A:visited {
	    COLOR: #c00
    }
    A:hover {
	    COLOR: #c60; TEXT-DECORATION: underline
    }
    MARQUEE {
	    BORDER-RIGHT: #694719 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #694719 1px solid; DISPLAY: block; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; MARGIN: 15px 45px 10px; BORDER-LEFT: #694719 1px solid; PADDING-TOP: 4px; BORDER-BOTTOM: #694719 1px solid; BACKGROUND-COLOR: #bdbdac
    }
    .ps {
	    FONT-SIZE: 12px; MARGIN-BOTTOM: 35px; MARGIN-RIGHT: 45px; TEXT-ALIGN: right
    }
    UNKNOWN {
	    MARGIN-TOP: 25px; PADDING-BOTTOM: 40px
    }
    UNKNOWN {
	    MARGIN: 10px 45px
    }
    UNKNOWN {
	    MARGIN: 15px 45px 5px
    }
    UNKNOWN {
	    MARGIN: 10px 45px 0px
    }
    </STYLE>
</head>
<body>
    <form id="form1" runat="server">
        <DIV id=info><SPAN></SPAN>
            <DIV id=main>
                <UL>
                  <LI>System is being renovated. Please forgive us if this make problems to you. </LI>

                  <LI>本網站進行系統更新中，如有不便之處，敬請見諒! </LI>
                  <LI>本网站进行系统更新中，如有不便之处，敬请见谅! </LI>
                  <LI>至 <script>document.write(getQueryStringValue("UpdateTime"));</script>点更新完成</LI></UL>
                <DIV id=show>
                    <P id=help><A>Cust.Service 服务中心</A></P>
                    <MARQUEE id=helpor_net onMouseOver=this.stop() onMouseOut=this.start()><% = Request.QueryString["Message"]%></MARQUEE>
                    <DIV class=ps>System is being renovated</DIV>
                </DIV>
            </DIV>
        </DIV>
    </form>
</body>
</html>

