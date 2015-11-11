<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_ztoday_chip_list, App_Web_hmaezzcm" enableEventValidation="false" %>

<html>
<head id="Head1" runat="server">
    <title>reports_member</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../style/control_main.css" type="text/css" rel="stylesheet">

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript" src="../Scripts/AutoRefreshShow.js"></script>

    <script language="JavaScript" type="text/javascript" >
        function onLoad()
        {
            lReftime ="<% =Request.QueryString["stoptime"] %>";
            AutoRefShow(lReftime,'TmTypeId=' + "<% =Request.QueryString["TmTypeId"] %>" +
	         '&ltype=' + "<% =Request.QueryString["ltype"] %>" +  '&Pageid=' + document.getElementById('DDPage').value + '&');
        }

        function ShowPage()
        {
	        location='?TmTypeId=' + "<% =Request.QueryString["TmTypeId"] %>" +
	         '&ltype=' + "<% =Request.QueryString["ltype"] %>" +  '&Pageid=' + document.getElementById('DDPage').value + 
	         '&stoptime=' + document.getElementById('retime').value; 
        }
        function show_more( eTmWhere){


              var obj_league = document.getElementById('line_window');
              obj_league.style.visibility='visible';
//              alert(window.event.offsetY + " "+ window.event.srcElement.offsetParent + " "+ document.body.clientHeight + " "+  window.event.srcElement.offsetTop);
//              alert(event.clientY - window.event.offsetY + " "+ window.event.screenY + " "+ window.event.y + " "+ document.body.scrollTop + " " );
            //  document.body.scrollTop
            //  document.body.scrollTop+event.clientY+15;
            var objTop = window.event.clientY - window.event.offsetY + document.body.scrollTop + window.event.srcElement.offsetTop
            var objHeight = 205 ;
            if (objTop + objHeight > document.body.clientHeight + document.body.scrollTop){
                obj_league.style.top=objTop -  objHeight + 'px';
                obj_league.style.left = window.event.clientX - window.event.offsetX
                
            }
            else{
            
                  obj_league.style.top= objTop + 15 + 'px';
                  obj_league.style.left = window.event.clientX - window.event.offsetX
              }
              
              document.update.location =  'admin_EditChip.aspx?gt=' + "<% =Request.QueryString["gt"] %>" +'&' + eTmWhere  ;
//              alert(eTmClassId);
//                document.update.Src=  'admin_EditChip.aspx?ChipId=' + e  ;
//                alert(document.update.Src);
//              obj_league.src =  'admin_EditChip.aspx?ChipId=' + e  ;
//              document.update.location.href('./update_news.php?news_date=' + e );
            //window.scroll(0,500)
//              update.location.href('./update_news.php?news_date=');
            //    this.location.reload();
        }
        function dayin(){
            this.location.reload();
        }
    </script>

</head>
<body onload="onLoad();" text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff"
    leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <table class="m_tab_Head_Rp" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line" colspan="2">
                    </td>
                </tr>
                <tr class="mem_index_ctrl_bg">
                    <td width="500">
                        &nbsp;<asp:Label ID="LabGameCaption" runat="server"></asp:Label>-注单流水: &nbsp; 页数:
                        <select id="DDPage" runat="server" class="zaselect_ste" name="DDPage" onchange="ShowPage();">
                            <option selected="selected" value="1">1</option>
                        </select>
                        /&nbsp;
                        <asp:Label ID="ContSumPage" runat="server" Width="11px"></asp:Label>
                        页&nbsp;
                    </td>
                    <td style="text-align: right">
                        <strong><a class="click_text" onclick="location='?stoptime=' + document.getElementById('retime').value; ">
                            刷新</a>:</strong><asp:Label ID="LabReftime" runat="server"></asp:Label>&nbsp;
                        <select id="retime" runat="server" name="retime" onchange="ShowPage();">
                            <option selected="selected" value="-1">不刷新</option>
                            <option value="20">20 sec</option>
                            <option value="40">40 sec</option>
                            <option value="60">60 sec</option>
                            <option value="120">120 sec</option>
                            <option value="180">180 sec</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line" colspan="2">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="rp_m_tab" cellspacing="1" cellpadding="0" width="780" border="0" id="TableA"
            runat="server">
            <tbody>
                <tr class="rp_m_title">
                    <td width="110">
                        会员-IP</td>
                    <td style="width: 80px">
                        下注单号</td>
                    <td style="width: 80px">
                        种类</td>
                    <td>
                        内容</td>
                    <td style="width: 30px">
                        盘别</td>
                    <td style="width: 49px">
                        退水</td>
                    <td width="90">
                        金额</td>
                    <td width="90">
                        可蠃金额</td>
                </tr>
            </tbody>
        </table>
    </form>
    <div class="divPropertyBar" id="line_window" style="visibility: hidden; position: absolute">
        <iframe name="update" src="about:blank" width="233" height="201" frameborder="0"
            scrolling="no"></iframe>
    </div>
</body>
</html>

