<%@ page language="c#" inherits="WebTm.lt_s.randomball, App_Web_3mbbw7kj" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript">

		
		
	var aryRB=new Array();
	
	var col = new Array('','r','r','b','b','g','g','r','r','b','b','g','r','r','b','b','g','g','r','r','b','g','g','r','r','b','b','g','g','r','r','b','g','g','r','r','b','b','g','g','r','b','b','g','g','r','r','b','b','g');
    var img = new Array();
    img['g'] ='../imagesBall/'+ 'g.gif';
    img['r'] ='../imagesBall/'+ 'r.gif';
    img['b'] ='../imagesBall/'+ 'b.gif';
	function proBallRandom()
	{
		var i;
		for(i=0;i<10;i++)
		{
		   aryRB[i] = Math.ceil(Math.random()*100%49);
		}
	}
	var intTimer=0;
	function load()
	{
//	    document.getElementById("FlashMov").src ="../imagesa/lottery1.swf";
	    proBallTimer();
	}
	function proBallTimer()
	{
	    
        proBallRandom();
        proBallShow();
	        	    
	    if(intTimer == 50)
	    {
	        document.getElementById("IFRAME1").src = "randomball_sub.aspx";
            intTimer = 0;
	    }
	    intTimer++;
	    if (x < 7)
	    {
		    setTimeout("proBallTimer()",100);
		}
	}
	
	var proBSj=0;
	var intTmp;
	var x = 0;
	function proBallShow()
	{
		for(proBSj=x; proBSj<7; proBSj++)
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
	//var j='0';
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

    <style>
        .unnamed1 { BACKGROUND-POSITION: center center; BACKGROUND-REPEAT: no-repeat }

	    BODY { BACKGROUND-COLOR: #ffffff }
	
	
	</style>
</head>
<body onload="load();">
    <form id="Form1" name="Form1">
        <table border="0" width="668px">
            <tr>
                <td>
                    <table cellspacing="1" cellpadding="0" width="100%" align="center" border="0">
                        <tbody>
                            <tr>
                                <td align="center">
                                    <object id="FlashMov" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" height="300" width="420">
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
                                <td width="60" class="td_Head_set_cen">
                                    正码一</td>
                                <td width="60" class="td_Head_set_cen">
                                    正码二</td>
                                <td width="60" class="td_Head_set_cen">
                                    正码三</td>
                                <td width="60" class="td_Head_set_cen">
                                    正码四</td>
                                <td width="60" class="td_Head_set_cen">
                                    正码五</td>
                                <td width="60" class="td_Head_set_cen">
                                    正码六</td>
                                <td width="60" class="td_Head_set_cen">
                                    特 码</td>
                            </tr>
                            <tr class="banner_set" height="50">
                                <td class="Td_TmBallfont" id="bal0" name="bal" align="center" width="60" style="font-size: 12pt">
                                    &nbsp;</td>
                                <td class="Td_TmBallfont" id="bal1" name="bal" align="center" width="60" style="font-size: 12pt">
                                    &nbsp;</td>
                                <td class="Td_TmBallfont" id="bal2" name="bal" align="center" width="60" style="font-size: 12pt">
                                    &nbsp;</td>
                                <td class="Td_TmBallfont" id="bal3" name="bal" align="center" width="60" style="font-size: 12pt">
                                    &nbsp;</td>
                                <td class="Td_TmBallfont" id="bal4" name="bal" align="center" width="60" style="font-size: 12pt">
                                    &nbsp;</td>
                                <td class="Td_TmBallfont" id="bal5" name="bal" align="center" width="60" style="font-size: 12pt">
                                    &nbsp;</td>
                                <td class="Td_TmBallfont" id="bal6" name="bal" align="center" width="60" style="font-size: 12pt">
                                    &nbsp;</td>
                            </tr>
                        </tbody>
                    </table>
                    <iframe id="IFRAME1" name="subframe" src="randomball_sub.aspx?CoNo=<% =Request.QueryString["CoNo"] %>" width="20" height="0" style="visibility: hidden"></iframe>
                    <table height="56" cellspacing="1" cellpadding="0" width="420" align="center" border="0">
                        <tbody>
                            <tr>
                                <td id="LabWShow" align="center" width="420" height="50" runat="server" style="font-size: 12pt; padding-right: 2px; padding-left: 2px; padding-bottom: 2px; color: #000000; padding-top: 2px;
                                    height: 10px; font-weight: bold;">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
