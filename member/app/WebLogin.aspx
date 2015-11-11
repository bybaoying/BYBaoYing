<%@ page language="C#" autoeventwireup="true" inherits="member_app_WebLogin, App_Web_vwupdd6k" culture="auto" uiculture="auto" meta:resourcekey="PageResource1" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="height: 100%; width: 100%;">
<head id="Head1" runat="server" >
    <title></title>
    <link href="../style/login.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

    </style>

    <script language="JavaScript" type="text/javascript">
  
    function MM_swapImgRestore() { //v3.0
      var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
    }

    function MM_preloadImages() { //v3.0
      var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
        var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
        if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
    }

    function MM_findObj(n, d) { //v4.0
      var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
        d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
      if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
      for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
      if(!x && document.getElementById) x=document.getElementById(n); return x;
    }

    function MM_swapImage() { //v3.0
      var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
       if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
    }
    var strChk_Number="";
    function show(){
//	document.getElementById("show_flash").style.position='absolute';
//	document.getElementById("show_flash").style.visibility='visible';
//	window.setTimeout("close_flash()", 7000);
//        alert(window.document.title);
//        window.parent.document.title ="DKFJ";
//        alert(window.parent.document.title);
//	     window.parent.parent.document.title = 'DKFJ';
//	     
	   
	     var mSysTitle= "<% Response.Write(mCoName);%>" + "<% Response.Write(base.GetGlobalResourceObject("Resource", "SysTitle"));%>";

        if (mSysTitle != '')
        {
            window.parent.document.title = mSysTitle
        }
	    document.getElementById("TxtUsername").focus();
	    set_img();
    } 
    function close_flash(){
	    document.getElementById("show_flash").style.visibility='hidden';
    }
    function chk_acc(){
	    if(document.getElementById("TxtUsername").value==""){
//		    document.getElementById("hr_info").innerHTML="请输入帐号!!";
		    document.getElementById("hr_info").innerHTML=document.getElementById("TxtUsername").title;

		    document.getElementById("TxtUsername").focus();
		    return false;
	    }
	    if(document.getElementById("TxtPassword").value==""){
//		    document.getElementById("hr_info").innerHTML="请输入密码!!";
		    document.getElementById("hr_info").innerHTML=document.getElementById("TxtPassword").title;
		    document.getElementById("TxtPassword").focus();
		    return false;
	    }
	    if(document.getElementById("number").value==""){
//		    document.getElementById("hr_info").innerHTML="请输入检查码!!";
		    document.getElementById("hr_info").innerHTML=document.getElementById("number").title;
		    document.getElementById("number").focus();
		    return false;
	    }
	    if(document.getElementById("number").value!=strChk_Number.replace(" ","")){
//		    document.getElementById("hr_info").innerHTML="检查码输入错误请重新输入!!";
//		    document.getElementById("hr_info").innerHTML=document.getElementById("Labhr_info").value;
//            document.getElementById("hr_info").innerHTML="<% Response.Write(base.GetGlobalResourceObject("Resource", "CoName").ToString ());%>";
            document.getElementById("hr_info").innerHTML="<% Response.Write(base.GetLocalResourceObject("Labhr_infoResource1.title").ToString());%>";
            
		    document.getElementById("number").focus();
		    return false;
	    }
	    return true;
    }

    function set_img(){
	    strChk_Number = (""+Math.random()).substr(2,4);
	    document.getElementById("intImg").innerHTML=strChk_Number;
	    var intDa= (1*strChk_Number) % 3 + 1;

//	    eval("document.getElementById('img_pic').background='../images/chk_img01.gif'");

//	    document.getElementById('img_pic').style.backgroundImage ="url(../images/chk_img0"+intDa+".gif)";
	    document.getElementById('img_pic').className ="img_pic"+intDa;
//	    eval("document.getElementById('img_pic').background ='../images/chk_img0"+intDa+".gif'");

//	    eval("document.getElementById('img_pic').style.backgroundImage ='../images/chk_img0"+intDa+".gif'");	    
	    //	    background-image: url(../images/chk_img01.gif); 
    }


    </script>

    <%----%>
</head>
<body vlink="#000000" alink="#000000" onload="show();" oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false" style="height: 100%; width: 100%;">
    <table style="height: 100%; width: 100%;">
        <tr>
            <td style="text-align: center; width: 100%;">
            <center >
                <div class="top_div_1">
                    <table width="600" height="121px" border="0" cellpadding="0" cellspacing="0" background="../images/top_2.gif"
                        align="center">
                        <tr>
                            <td width="280px" class="top_left_logo">
                                <table width="172" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="left" style="width: 10px">
                                            <img src="../images/login_6.gif" width="9" /></td>
                                        <td width="46" align="left" valign="bottom">
                                            <a href="#" class="font_yuyan">简体版</a></td>
                                        <td align="left" style="width: 10px">
                                            <img src="../images/login_6.gif" width="9" /></td>
                                        <td width="46" align="left" valign="bottom">
                                            <a href="#" class="font_yuyan">繁体版</a></td>
                                        <td width="10" align="left">
                                            <img src="../images/login_6.gif" width="9" /></td>
                                        <td width="50" align="left" valign="bottom">
                                            <a href="#" class="font_yuyan">英文版</a></td>
                                    </tr>
                                </table>
                                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                    width="270" height="66">
                                    <param name="movie" value="../images/star.swf" />
                                    <param name="quality" value="high" />
                                    <param name="wmode" value="transparent" />
                                    <embed src="../images/star.swf" width="270" height="66" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                                        type="application/x-shockwave-flash" wmode="transparent"></embed>
                                </object>
                            </td>
                            <td>
                                <form id="form1" onsubmit="return chk_acc(this);" method="post" runat="server">
                                    <table border="0" cellpadding="0" cellspacing="1">
                                        <tr>
                                            <td style="width: 80px">
                                            </td>
                                            <td style="width: 80px">
                                                <br />
                                            </td>
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td id="TD1" style="text-align: left; color: #ffffff;">
                                                <asp:Label ID="Label2" runat="server" meta:resourcekey="Label2Resource1" Text="帐    号:"></asp:Label></td>
                                            <td style="text-align: left;color: #ffffff;">
                                                <asp:Label ID="Label1" runat="server" meta:resourcekey="Label1Resource1" Text="密    码:"></asp:Label></td>
                                            <td colspan="3" style="text-align: left;color: #ffffff;">
                                                <asp:Label ID="Label3" runat="server" meta:resourcekey="Label3Resource1" Text="验证码"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td id="TD2">
                                                <input type="text" name="TxtUsername" class="za_text" id="TxtUsername" maxlength="20"
                                                    runat="server" meta:resourcekey="usernameResource1" title="请输入帐号!!" style="width: 65px;
                                                    height: 25px;" /></td>
                                            <td>
                                                <input type="password" name="TxtPassword" class="za_text" style="width: 60px; height: 25px;"
                                                    id="TxtPassword" maxlength="20" runat="server" meta:resourcekey="passwdResource1"
                                                    title="请输入密码!!" />
                                            </td>
                                            <td style="width: 60px;">
                                                <table style="width: 60px; height: 100%">
                                                    <tr>
                                                        <td align="center" id="img_pic" style="width: 50px; height: 25px;">
                                                            <span id="intImg" class="number"></span>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 60px;">
                                                <input type="text" id="number" style="width: 42px; height: 25px;" maxlength="20"
                                                    runat="server" meta:resourcekey="numberResource1" title="请输入检查码!!" />
                                            </td>
                                            <td style="width: 60px;">
                                                <asp:Button ID="CmdLongin" runat="server" Style="height: 25px;" Text="确定" meta:resourcekey="CmdLonginResource1"
                                                    OnClick="CmdLongin_Click" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" align="center">
                                                <font color="#ffffff">
                                                    <label id="hr_info" style="color: red">
                                                    </label>
                                                    <br />
                                                    You must sign in to use our service.</font>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </td>
                        </tr>
                    </table>
                    <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <img src="../images/login/logo.jpg" />
                            </td>
                        </tr>
                        <tr>
                            <td class="font_yuyan">
                                <asp:Label ID="Labela" runat="server" Text='<%$ resources:Resource, Label1Msg %>'
                                    meta:resourcekey="LabelaResource1"></asp:Label>
                                <tt>
                                    <% Response.Write(mCoName); %>
                                </tt>
                                <asp:Label ID="Labelc" runat="server" Text='<%$ resources:Resource, Label3Msg %>'
                                    meta:resourcekey="LabelcResource1"></asp:Label>
                                <img src="../images/mail.gif" border="0" align="absmiddle" />
                                <asp:Label ID="Label5" runat="server" meta:resourcekey="Label5Resource1" Text="顾客意见"></asp:Label>
                                : <a href="mailto:crown888888@yahoo.com.tw">E-Mail<% Response.Write(mCoName);%></a>
                                <a class="joinNowLink" tabindex="7" href="VipRegAcc.htm"><span>马上加入</span></a>
                                </td>
                        </tr>
                    </table>
                </div>
                </center>
            </td>
        </tr>
    </table>
</body>
</html>

