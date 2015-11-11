<%@ page language="C#" autoeventwireup="true" inherits="chk_rule, App_Web_vwupdd6k" culture="auto" uiculture="auto" meta:resourcekey="PageResource1" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="height: 100%; width: 100%;">
<head runat="server">
    <title></title>

    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/rule.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
//         window.parent.parent.document.title ="<%// = Session["SysTitle"] %>";
//	     alert(" <% //= Session["TmMessage"] %>  ");
//        alert("aacc\r\nkkdkf");
         var lTmMessage = " <% Response.Write(mTmMessage); %>  ";
//         lTmMessage = lTmMessage.replace("\'","\\\'");
//         lTmMessage = lTmMessage.replace("\"","\\\"");
	     
	     
//	     window.parent.parent.document.title = 'DKFJ';
//	     var mCoName= "<% Response.Write(base.GetGlobalResourceObject("Resource", "CoName").ToString ());%>";
//	     function fCoName(){
//	        
//            return mCoName;
//        }
////        alert(fCoName());

        function PageLoad(){
            alert(lTmMessage);
        
        }
         function new_win(html_name,winname,w,h){
            if(winname=='') winname='WINDOWS';
            if(w=='') w=640;
            if(h=='') h=480;
            //undefined
            winformat="toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=no,width="+w+",height="+h;
            winid = window.open(html_name,winname,winformat)
        }
//        var lSele_game=""
//        function Sele_game( game_type){
//            lSele_game= game_type.value;
////            alert(lSele_game);
//        }
        function check_Game( ){
            var chk_value=""
             var lSele_game =document.getElementById("game_typeTm");
             
             if (lSele_game != null && lSele_game.checked==true)
             { 
                
                chk_value =lSele_game.value;
             }
             lSele_game =document.getElementById("game_typeD3");
             
             if (lSele_game != null && lSele_game.checked==true)
             { 
                chk_value =lSele_game.value;
             }
             lSele_game =document.getElementById("game_typeP3");
             
             if (lSele_game != null && lSele_game.checked==true)
             { 
                chk_value =lSele_game.value;
             }
         
         
         
//         var i=0;
//         var chk_value = "";
//         var chk = document.getElementById("game_type");
//         for(i=0;i<chk.length;i++){
//            if(chk[i].checked==true)
//          {
//            chk_value=chk[i].value;
//          }
//         }
         
          
//         alert(id);
//         document.location='lt_index.htm'
            var location_url ="";
            switch (chk_value){
              case 'TM':
                  location_url ='lt_index_tm.htm';
                  break;
              case 'D3':

                  location_url ='lt_index_Ot.aspx?GameType=D3';
                  break;
              case 'P3':
                    location_url ='lt_index_Ot.aspx?GameType=P3';
                  break;
            }
            if(location_url !="")
            {
                document.location=location_url;
            }
     }

    </script>

</head>
<%--oncontextmenu="window.event.returnValue=false"--%>
<body text="#000000" bgcolor="#ffffff" leftmargin="0" topmargin="0" onload="PageLoad();">
    <center>
        <div class="top_div_1">
            <div class="top_left_logo">
                <object class="top_left_logo_flash" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0">
                    <param name="movie" value="../images/star.swf" />
                    <param name="quality" value="high" />
                    <param name="wmode" value="transparent" />
                    <embed src="../images/star.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
                </object>
            </div>
            <div class="top_right_bg">
            </div>
        </div>
        <div class="top_div_3">
            <div id="Roul_lt" runat="server">

            </div>
            <div id="Div1" runat="server" class="Game_Class">
                &nbsp;<span id="pgame_typeTm" runat="server"><input id="game_typeTm" type="radio" name="game_type" value="TM" runat="server" />主盤</span> <span id="pgame_typeD3" runat="server">
                    <input id="game_typeD3" type="radio" name="game_type" value="D3" runat="server" />福彩</span> <span id="pgame_typeP3" runat="server">
                        <input id="game_typeP3" type="radio" name="game_type" value="P3" runat="server" />體彩</span></div>
            <div align="center">
                <input class="za-button" style="width: 80px" onclick="location.href='logout.aspx';" type="submit" value="<% Response.Write( base.GetLocalResourceObject("Button1.Text").ToString());%>"
                    name="submit">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="za-button" style="width: 80px" onclick="check_Game();" type="submit" value="<% Response.Write( base.GetLocalResourceObject("Button2.Text").ToString());%>" name="submit2">
            </div>
        </div>
        <div>
        </div>
    </center>
</body>
</html>

