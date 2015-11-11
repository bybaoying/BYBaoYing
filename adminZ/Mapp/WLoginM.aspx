<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WLoginM, App_Web_i89w4dwr" culture="auto" uiculture="auto" meta:resourcekey="PageResource1" enableEventValidation="false" %>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
xmlns="http://www.w3.org/1999/xhtml"--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <link href="../style/login.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

<%--        body {
	        background-image: url(../imagesloginz/login_bg.gif);
        }--%>

    </style>

    <script language="JavaScript" type="text/javascript" >
    
    var strChk_Number="";
    function show(){


	     var mSysTitle= "<% Response.Write(mCoName);%>" + "<% Response.Write(base.GetGlobalResourceObject("Resource", "SysTitle"));%>";

        if (mSysTitle != '')
        {
            window.parent.document.title = mSysTitle
        }
        
	    document.getElementById('TxtUsername').focus();
	    set_img();
    } 

    function chk_acc(){
	    if(document.getElementById('TxtUsername').value==""){
//		    hr_info.innerHTML="请输入帐号!!";
		    hr_info.innerHTML=document.getElementById('TxtUsername').title;

		    document.getElementById('TxtUsername').focus();
		    return false;
	    }
	    if(document.getElementById('TxtPassword').value==""){
//		    hr_info.innerHTML="请输入密码!!";
		    hr_info.innerHTML=document.getElementById('TxtPassword').title;
		    document.getElementById('TxtPassword').focus();
		    return false;
	    }
	    if(document.getElementById('number').value==""){
//		    hr_info.innerHTML="请输入检查码!!";
		    hr_info.innerHTML=document.getElementById('number').title;
		    document.getElementById('number').focus();
		    return false;
	    }
	    if(document.getElementById('number').value!=strChk_Number.replace(" ","")){
//		    hr_info.innerHTML="检查码输入错误请重新输入!!";
            hr_info.innerHTML="<% Response.Write(base.GetLocalResourceObject("Labhr_infoResource1.title").ToString());%>";
            
		    document.getElementById('number').focus();
		    return false;
	    }
	    return true;
    }

    function set_img(){
	    strChk_Number = (""+Math.random()).substr(2,4);
	    intImg.innerHTML=strChk_Number;
	    intDa= (1*strChk_Number) % 3 + 1;
//	    document.getElementById('img_pic').background ='../images/chk_img0"+intDa+".gif';
	    eval("document.getElementById('img_pic').background ='../images/chk_img0"+intDa+".gif'");
    }


    </script>

</head>
<body vlink="#000000" alink="#000000" onload="show();" oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false">
    <form id="form1" onsubmit="return chk_acc();" runat="server">
        <div class="lang">
            <div class="link">
                <ul>
                    <li>
                        <img name="link_tw" src="../imagesLoginZ/link_tw.gif" alt="" border="0" /></li>
                    <li><a>
                        <img name="link_cn" src="../imagesLoginZ/link_cn.gif" border="0" /></a></li>
                    <li><a>
                        <img name="link_us" src="../imagesLoginZ/link_us.gif" border="0" /></a></li>
                    <li><a>
                        <img name="link_jp" src="../imagesLoginZ/link_jp.gif" border="0" /></a></li>
                    <li>
                        <img src="../imagesLoginZ/index_top1.gif" height="25" width="33" /></li>
                </ul>
            </div>
        </div>
        <div class="main_bg">
            <div class="main">
                <h2>
                    <br />
                    You must sign in to use our service.
                </h2>
                <div left="200" style="" class="code">
                    <table border="0" cellpadding="1" cellspacing="1">
                        <tr>
                            <td colspan="2" nowrap="nowrap">
                                <table width="100%">
                                    <tr>
                                        <td>
                                            <h1>
                                                &nbsp;</h1>
                                        </td>
                                        <td align="center" class="font_1" id="hr_info">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td colspan="2" nowrap="nowrap" class="font_1">
                                <asp:Label ID="Label3" runat="server" meta:resourcekey="Label3Resource1" Text="请输入下图片数字"></asp:Label></td>
                        </tr>
                        <tr>
                            <td >
                                <p>
                                    <asp:Label ID="Label2" runat="server" meta:resourcekey="Label2Resource1" Text="帐    号:"
                                        Width="40px"></asp:Label>
                                </p>
                            </td>
                            <td  >
                                &nbsp;<input id="TxtUsername" runat="server" class="input_1" maxlength="20" meta:resourcekey="usernameResource1"
                                    name="TxtUsername" size="15" style="width: 90px" title="请输入帐号!!" type="text"
                                    tabindex="1" /></td>
                            <td colspan="2">
                                <table style="width: 70px; height: 100%">
                                    <tr>
                                        <td align="center" id="img_pic">
                                            <span class="number" id="intImg"></span>
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    <asp:Label ID="Label1" runat="server" meta:resourcekey="Label1Resource1" Text="密    码:"></asp:Label>
                                </p>
                            </td>
                            <td style="width: 120px">
                                &nbsp;<input id="TxtPassword" runat="server" class="input_1" maxlength="20" meta:resourcekey="passwdResource1"
                                    name="TxtPassword" style="width: 90px" title="请输入密码!!" type="password" tabindex="1" /></td>
                            <td style="width: 90px" >
                                <input id="number" runat="server" class="input_1" maxlength="20" meta:resourcekey="numberResource1"
                                    style="width: 70px" title="请输入检查码!!" type="text" tabindex="2" />
                            </td>
                            <td   >
                                <asp:Button ID="CmdLongin" runat="server" Height="22px" meta:resourcekey="CmdLonginResource1"
                                    OnClick="CmdLongin_Click" Text="确定" Width="45px" TabIndex="4" />
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <div>
                    <div>
                        <span class="login_font_6">
                            <asp:Label ID="Labela" runat="server" Text='<%$ resources:Resource, Label1Msg %>'
                                meta:resourcekey="LabelaResource1"></asp:Label><tt>
                                    <% Response.Write(mCoName);%>
                                </tt>
                            <asp:Label ID="Labelc" runat="server" Text='<%$ resources:Resource, Label3Msg %>'
                                meta:resourcekey="LabelcResource1"></asp:Label>
                            <img src="../imagesLoginZ/mail.gif" border="0" align="absmiddle">
                            <asp:Label ID="Label5" runat="server" meta:resourcekey="Label5Resource1" Text="顾客意见"></asp:Label>
                            : <a href="mailto:crown888888@yahoo.com.tw" tabindex="5">E-Mail<% Response.Write(mCoName);%></a></span>
                    </div>
                </div>
            </div>
            <br />
    </form>
</body>
</html>

