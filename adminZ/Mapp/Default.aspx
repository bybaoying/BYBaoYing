

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1"><title>
	诚际网在线聊天
</title><link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<meta content="text/html;charset=gb2312" http-equiv="Content-Type" />
<link href="../StyleSheet.css" rel="stylesheet" type="text/css" />

<style  type="text/css">  
BODY  
{  
           scrollbar-face-color:  #DEE3E7;  
           scrollbar-highlight-color:  #FFFFFF;  
           scrollbar-shadow-color:  #DEE3E7;  
           scrollbar-3dlight-color:  #D1D7DC;  
           scrollbar-arrow-color:    #006699;  
           scrollbar-track-color:  #EFEFEF;  
           scrollbar-darkshadow-color:  #98AAB1;  

           
}  
</style>  

</head>

<body onUnload="leave()" >

    <form name="form1" method="post" action="WebChartQandAPublic.aspx?QandAID" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTMwNDEwOTc3OQ8WAh4HR3VzZXRJRAUY5ri45a6iNjMzNjE4NjAxNzM5MzA2MjUwFgICAQ9kFgICEQ8QZBAVAgt1c2VyX09uTGluZQdjb3VudGVyFQILdXNlcl9PbkxpbmUHY291bnRlchQrAwJnZxYAZGSLTeUbdPmlBR1tZprD53xG2bfeow==" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=b_siGRshkFBJ3KjgS7zTmQ2&amp;t=633435660836196250" type="text/javascript"></script>


<script type="text/javascript">
//<![CDATA[
//http://www.mycjweb.com/Web_chat/WebChartQandAPublic.aspx?QandAID=Index
var oTxt;
var oDiv;
window.onunload = ChatExit;

function ChatExit()
{
  oTxt.value ="<font color=#ACA899>"+document.getElementById("hideExited").value+"</font>";
  DoChatCallBack(oTxt);
}

function ChatEnter()
{
  oTxt = document.getElementById("WebChat1_chattextbox");
  oDiv = document.getElementById("WebChat1_chatpanel");
  
  oTxt.value = "<font color=#F68B4D>"+document.getElementById("hideEntered").value+"</font>";
  DoChatCallBack(oTxt);
  window.setTimeout("DoChatCallBack()", 2000);
}
  
  
  
var WebChatMaxMsgID = 0;
var WebChatTimeoutID;
function CalledBack(result, context)
{
    if (result.length>0)
    {
        var aryRows = result.split("~~");
        for (var iRow=0 ; iRow<aryRows.length; iRow++)
        {
            var aryCols = aryRows[iRow].split("||");
            if (parseInt(aryCols[0])>parseInt(WebChatMaxMsgID))
            {
                oDiv.innerHTML = oDiv.innerHTML + '<br>' + aryCols[1]; 
                oDiv.scrollTop = oDiv.scrollHeight*1000;
                WebChatMaxMsgID = aryCols[0];
            }            
        }
        document.getElementById('WebChat1_chattextbox').focus();
    }
    //ensure sure there is exactly one timer going at a time
    window.clearTimeout(WebChatTimeoutID);
    WebChatTimeoutID=window.setTimeout("DoChatCallBack()", 2000);
}
function ErrCalledBack(result,context)
{
alert('Unexpected Chat Error: ' + result);
}








function DoChatCallBack(txt)
{var msg = ''; if (txt != null) msg=txt.value; 
WebForm_DoCallback('WebChat1',WebChatMaxMsgID + '||' + msg,CalledBack,ErrCalledBack,null,false);
if (txt != null) txt.value='';
}//]]>
</script>

<script src="/ScriptResource.axd?d=SBYkPRkddvSD3FTYdFuxdSRI4tXpiTez8t_PBnM7BGmYjprrIUpaRjFwnT9VbWK7kQjzwxzhgXyVuipYqtdJGdxSGqwjLBXp0&amp;t=633341351751321250" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=SBYkPRkddvSD3FTYdFuxdSRI4tXpiTez8t_PBnM7BGmYjprrIUpaRjFwnT9VbWK7kQjzwxzhgXyVuipYqtdJGa1Q0AH2wJSnEMOOb2eqq8o1&amp;t=633341351751321250" type="text/javascript"></script>

    <div> <a href="../Default.aspx"><img src="../Web_Controls/Web_IncludeFiles/Image_Main/CityBusinessLogo.gif" /></a>
        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 997px" >
            <tr>
                <td align="left" valign="top" style="width: 450px;">
                    &nbsp;
                    <table border="0" cellpadding="0" cellspacing="0" style="height: 100%; width: 518px;" class="hidden">
                        <tr>
                            <td style="width: 445px">
                                &nbsp;<img src="../Web_Chat/Talk.JPG" />
                    <span id="lab_Title" style="color:Red;"></span></td>
                            <td>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <a href="WebCharOver.aspx"></a></td>
                        </tr>
                    </table>
                    </td>
                <td rowspan="3" align="center" valign="top">

                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <div id="faceDIV" style="left: 531px; width: 250px; position: absolute; top: 382px;
                        height: 100px; visibility:hidden; text-align: left;" >  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input id="BUttonHideFaces" type="Text" value="  取消选择"  style="border:0px; cursor:hand; color:Blue;" onclick="faceDIV.style.visibility='hidden';" /></div>
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 450px; height: 426px" valign="top">
        <span id="WebChat1" style="display:inline-block;background-color:White;height:377px;width:521px;"><table border="0" style="height:377px;width:521px;overflow:absolute;">
	<tr>
		<td colspan="2" style="height:95%;"><div id="WebChat1_chatpanel" style="border-width:1px;border-style:Solid;height:100%;width:99%;overflow:scroll;">

		</div></td>
	</tr><tr>
		<td style="width:95%;"><textarea name="WebChat1_chattextbox" rows="2" cols="20" id="WebChat1_chattextbox" autocomplete="off" onkeydown="if ((event.keyCode == 13 || (event.keyCode == 83 &amp;&amp; event.altKey == true))) {document.getElementById('WebChat1_button').click();return false;} else return true;" onkeypress="if (event.keyCode==124 || event.keyCode==126) event.keyCode=0;" style="border-color:Black;border-width:1px;border-style:solid;height:40px;width:99%;overflow:absolute;"></textarea></td><td style="width: 154px"><input type="button" name="WebChat1_button" value="Alt+S或回车发送" onclick="DoChatCallBack(document.getElementById('WebChat1_chattextbox'));" id="WebChat1_button" class="btn" style="height:40px;" /></td>
	</tr>
</table></span>
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 450px;" valign="top">
                    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ScriptManager1', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['tUpdatePanel1'], [], [], 90);
//]]>
</script>

                    <div id="UpdatePanel1">
	
                            <table style="width: 521px; height: 29px">
                                <tr>
                                    <td align="right">
                                    </td>
                                    <td align="left">
                                    </td>
                                    <td align="right">
                                    </td>
                                    <td align="right">
                                   </td>
                                    <td align="right">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        字号：</td>
                                    <td align="left">
                            <table id="Radio_Font" border="0">
		<tr>
			<td><input id="Radio_Font_0" type="radio" name="Radio_Font" value="1" onclick="javascript:setTimeout('__doPostBack(\'Radio_Font$0\',\'\')', 0)" /><label for="Radio_Font_0">1</label></td><td><input id="Radio_Font_1" type="radio" name="Radio_Font" value="2" checked="checked" /><label for="Radio_Font_1">2</label></td><td><input id="Radio_Font_2" type="radio" name="Radio_Font" value="3" onclick="javascript:setTimeout('__doPostBack(\'Radio_Font$2\',\'\')', 0)" /><label for="Radio_Font_2">3</label></td><td><input id="Radio_Font_3" type="radio" name="Radio_Font" value="4" onclick="javascript:setTimeout('__doPostBack(\'Radio_Font$3\',\'\')', 0)" /><label for="Radio_Font_3">4</label></td><td><input id="Radio_Font_4" type="radio" name="Radio_Font" value="5" onclick="javascript:setTimeout('__doPostBack(\'Radio_Font$4\',\'\')', 0)" /><label for="Radio_Font_4">5</label></td><td><input id="Radio_Font_5" type="radio" name="Radio_Font" value="6" onclick="javascript:setTimeout('__doPostBack(\'Radio_Font$5\',\'\')', 0)" /><label for="Radio_Font_5">6</label></td><td><input id="Radio_Font_6" type="radio" name="Radio_Font" value="7" onclick="javascript:setTimeout('__doPostBack(\'Radio_Font$6\',\'\')', 0)" /><label for="Radio_Font_6">7</label></td>
		</tr>
	</table></td>
                                    <td align="right">
                                        颜色：</td>
                                    <td align="left">
                            <table id="Radio_Color" border="0">
		<tr>
			<td><input id="Radio_Color_0" type="radio" name="Radio_Color" value="#000000" checked="checked" /><label for="Radio_Color_0">黑</label></td><td><input id="Radio_Color_1" type="radio" name="Radio_Color" value="#2224FF" onclick="javascript:setTimeout('__doPostBack(\'Radio_Color$1\',\'\')', 0)" /><label for="Radio_Color_1">蓝</label></td><td><input id="Radio_Color_2" type="radio" name="Radio_Color" value="#48AF48" onclick="javascript:setTimeout('__doPostBack(\'Radio_Color$2\',\'\')', 0)" /><label for="Radio_Color_2">绿</label></td><td><input id="Radio_Color_3" type="radio" name="Radio_Color" value="#FF713C" onclick="javascript:setTimeout('__doPostBack(\'Radio_Color$3\',\'\')', 0)" /><label for="Radio_Color_3">红</label></td><td><input id="Radio_Color_4" type="radio" name="Radio_Color" value="#A566D8" onclick="javascript:setTimeout('__doPostBack(\'Radio_Color$4\',\'\')', 0)" /><label for="Radio_Color_4">紫</label></td>
		</tr>
	</table></td>
                                    <td align="left">
                                         <p style="cursor:hand"><img id="ImageButton_Face" title="选择表情" src="ReplaceImages/0.gif" style="border-width:0px;" /></p></td>
                                </tr>
                            </table>
                        
</div>
                </td>
            </tr>
        </table>
    </div>
       <input name="hideEntered" type="hidden" id="hideEntered" value="游客633618601739306250刚刚进入！" />
       <input name="hideExited" type="hidden" id="hideExited" value="游客633618601739306250刚刚离开！" />
       <input id="hideTempPic" type="hidden"  value="" />
                    
    
<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEQKD38qKDwKVjMqQBwKUjMqQBwKXjMqQBwKWjMqQBwKRjMqQBwKQjMqQBwKTjMqQBwKa4+D+CwLdsO6ZCALpncX3CgK7ktm5CQLp6fHjCQLa/MjCAwKmkq69AgLV5rocAriby3S3TEzhUlGtse/nP9l/px6+3HXEJA==" />
    <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink><a onclick ="alert('ddd');"  href=''>hhhhhhhhh</a> </div>

<script type="text/javascript">
//<![CDATA[

WebForm_InitCallback();document.getElementById('WebChat1_chattextbox').focus();ChatEnter();Sys.Application.initialize();
//]]>
</script>
</form>
    
</body>
</html>
<script>
           function SaveGroupMessage()
               {
                  var xh = new ActiveXObject("MSXML2.XMLHTTP");
                  xh.open("POST","SaveGroupMessage.aspx?GroupID=",false);
                  xh.send(document.getElementById('WebChat1_chatpanel').outerHTML);
                 alert(xh.responseText);
                 
                  
                }
</script>  
  <script>   
  function SaveText()   
  {   
          //取得id=tb的表格的HTML代码.   
          var   strHTML   =   document.getElementById('WebChat1_chatpanel').outerHTML;   
          var   winSave   =   window.open();   
          winSave.document.open   ("text/html","gb2312");   
          winSave.document.write   (strHTML);   
          winSave.document.execCommand   ("SaveAs",true,"c:/table.htm");   
          winSave.close();   
  }   
  </script>   
<script  src='http://s90.cnzz.com/stat.php?id=861333&web_id=861333&show=pic' language='JavaScript' charset='gb2312'></script>


