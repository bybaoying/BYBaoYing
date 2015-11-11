<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_randomball, App_Web_h-elesbu" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<%= Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript">
		
		
	var aryRB=new Array();
	var intTimer=0;
	var col = new Array('r','r','r','b','b','g','g','r','r','b','b','g','r','r','b','b','g','g','r','r','b','g','g','r','r','b','b','g','g','r','r','b','g','g','r','r','b','b','g','g','r','b','b','g','g','r','r','b','b','g');
    var img = new Array();
    img['g'] ='../imagesBall/'+ 'r.gif';
    img['r'] ='../imagesBall/'+ 'r.gif';
    img['b'] ='../imagesBall/'+ 'r.gif';
	function proBallRandom()
	{
		var i;
		for(i=0;i<10;i++)
		{
		   aryRB[i] = Math.ceil(Math.random()*100%49);
		}
	}
	var intTimer=0;
	function proBallTimer()
	{
        proBallRandom();
        proBallShow();
	        	    
	    if(intTimer == 50)
	    {
	        document.getElementById("IFRAME1").src = "randomball_sub.aspx?GameType=<%= Request.QueryString["GameType"] %>";
            intTimer = 0;
	    }
	    intTimer++;
	    if (x < 3)
	    {
		    setTimeout("proBallTimer()",100);
		}
	}
	

	var proBSj=0;
	var intTmp;
	var x = 0;
	function proBallShow()
	{
		for(proBSj=x; proBSj<3; proBSj++)
		{
			intTmp = aryRB.pop().toString(); //  pop() 来删除并返回数组的最后一个元素。
 
			var len = intTmp.length;
			if (len == 1)
			{
				document.getElementById("bal" + proBSj).innerHTML ="<font class=\"ballfont\">" + "0"+ intTmp +"</font>";
			}
			else
			{
				document.getElementById("bal" + proBSj).innerHTML ="<font class=\"ballfont\">" + intTmp +"</font>";
			}
			document.getElementById("bal" + proBSj).setAttribute("background",img[col[intTmp]]);
		}
	}
	
	function stop(ball,num,LabShow)
	{

		document.getElementById('LabWShow').innerHTML  ="\r"+ LabShow;
		//document.getElementById('LabWShow').Text =LabShow;
		//LabWShow.innerHTML  =LabShow;
//	    if(x < num)
//	    {
	        x = num;
//		    proBallShow();
		    for($i=0;$i< num; $i++)
		    {
		    	j = Math.round(ball[$i]);
		    	//将字符型，换为数值型，如01码，变为1
		        //bal[$i].background = 'images/'+img[col[ball[$i]]];
		        //bal[$i].background = 'images/'+img['b'];
		        
		        
			    document.getElementById("bal" + String( $i)).innerHTML  = ball[$i];
//			    document.getElementById("bal" + String( $i)).background = img[col[j]];
			    
			    document.getElementById("bal" + String( $i)).setAttribute("background",img[col[j]]);
		    }
//        }
	}
    </script>

    <style>.unnamed1 { BACKGROUND-POSITION: center center; BACKGROUND-REPEAT: no-repeat }

	BODY { BACKGROUND-COLOR: #ffffff }
	
	
	</style>
</head>
<body onload="proBallTimer();">
    <table border="0" width="668px">
        <tr>
            <td>
                <table cellspacing="1" cellpadding="0" width="100%" align="center" border="0">
                    <tbody>
                        <tr>
                            <td align="center">
                                <object codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" height="300" width="420" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">
                                    <param name="_cx" value="11113">
                                    <param name="_cy" value="7938">
                                    <param name="FlashVars" value="">
                                    <param name="Movie" value="../<%= base.GetGlobalResourceObject("res_css_style", "user_images") %>/lottery1.swf">
                                    <param name="Src" value="../<%= base.GetGlobalResourceObject("res_css_style", "user_images") %>/lottery1.swf">
                                    <param name="WMode" value="Window">
                                    <param name="Play" value="-1">
                                    <param name="Loop" value="-1">
                                    <param name="Quality" value="High">
                                    <param name="SAlign" value="">
                                    <param name="Menu" value="-1">
                                    <param name="Base" value="">
                                    <param name="AllowScriptAccess" value="">
                                    <param name="Scale" value="ShowAll">
                                    <param name="DeviceFont" value="0">
                                    <param name="EmbedMovie" value="0">
                                    <param name="BGColor" value="FFFFFF">
                                    <param name="SWRemote" value="">
                                    <param name="MovieData" value="">
                                    <param name="SeamlessTabbing" value="1">
                                    <param name="Profile" value="0">
                                    <param name="ProfileAddress" value="">
                                    <param name="ProfilePort" value="0">
                                    <param name="AllowNetworking" value="all">
                                    <embed src="../<%= base.GetGlobalResourceObject("res_css_style", "user_images") %>/lottery1.swf" quality="high" bgcolor="#FFFFFF" width="460" height="300" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash">
                                    </embed>
                                </object>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="table_Chip" cellspacing="1" cellpadding="0" align="center" border="0" style="width: 420px">
                    <tbody>
                        <tr>
                            <td width="140" class="td_Head_set_cen">
                                佰</td>
                            <td width="140" class="td_Head_set_cen">
                                拾</td>
                            <td width="140" class="td_Head_set_cen">
                                个</td>
                        </tr>
                        <tr class="banner_set" height="50">
                            <td class="Td_TmBallfont" id="bal0" name="bal" align="center" width="60" style="font-size: 12pt">
                                &nbsp;</td>
                            <td class="Td_TmBallfont" id="bal1" name="bal" align="center" width="60" style="font-size: 12pt">
                                &nbsp;</td>
                            <td class="Td_TmBallfont" id="bal2" name="bal" align="center" width="60" style="font-size: 12pt">
                                &nbsp;</td>
                        </tr>
                    </tbody>
                </table>
                <iframe id="IFRAME1" name="subframe" src="randomball_sub.aspx?GameType=<% =Request.QueryString["GameType"] %>&CoNo=<% =Request.QueryString["CoNo"] %>" width="0" height="0"></iframe>
                <table height="56" cellspacing="1" cellpadding="0" width="420" align="center" border="0">
                    <tbody>
                        <tr>
                            <td id="LabWShow" align="center" width="420" height="50" runat="server" style="font-size: 12pt; padding-right: 2px; padding-left: 2px; filter: glow(color=#000000,strength=1); padding-bottom: 2px;
                                color: #000000; padding-top: 2px; height: 10px">
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p>
            </td>
        </tr>
    </table>
</body>
</html>
