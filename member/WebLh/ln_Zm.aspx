<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_ln_Zm, App_Web_xt-ylzzg" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_TM.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript" src="../Scripts/but_chip_Check.js"></script>

    <script language="javascript" type="text/javascript" src="../Scripts/load_chipPlShow.js"></script>

    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>

    <script language="javascript" type="text/javascript" src="../Scripts/JS_Page_tab.js"></script>

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        function SubData()
        {
            var mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById("WagerTxt").value = "" ;
            var lWagerStr= "",lSetValue = "";
            
            lSetValue = SetValue("AA","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("06","zhdr.zhsa","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("07","zhda.zhxa","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            if (!SubChk(String(mChipMoneySum),document.getElementById("Labxynd").innerHTML,"TxtButData")){
                return false;
            }
                
            document.getElementById("WagerTxt").value = lWagerStr ;
                return true;
        }


 
        //通下注
        function SelectBallType(vTmno,vTmje){
        
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = Number(arrNum[i]);
	            SelectTmOk("Txt" + tmno.toString(),vTmje);
            }
        }
        function SelectTmOk(vSelectTm,vTmje)
        {//选择指定的号码
            if ( !document.getElementById(vSelectTm).disabled ){
                document.getElementById(vSelectTm).value=Number(vTmje);
            }
        }
        function SendTmData()
        {//取粘贴过来的数据,发送到每笔注单中
            vTmno=document.getElementById("TxtGetTm").value;
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               if (Number(arrNum[i])>0){
	                var  lSelectTm ="Txt" + Number(arrNum[i].substr(0,2));
	                if (Number(arrNum[i].substr(0,2))<50){
	                    var  lSelectje = Number(arrNum[i].substr(2));
	                    document.getElementById(lSelectTm).value=lSelectje;
	                }
	            }
            }
        }
        function chanagePage()
        {
            location='ln_zmpl.aspx?Classid=' + "<% =Request.QueryString["Classid"] %>" ;
        }
        function openNewPage(vClassid)
        {
            if (document.getElementById('retime') != null)
            {
                var lReftime = document.getElementById('retime').value; 
                location='?Classid=' + vClassid +  "&stoptime=" + lReftime ;
            }else{
                location='?Classid=' + vClassid  ;
            }
        }
        function openLink()
        {
            var lReftime = document.getElementById('retime').value; 
            location='?Classid=' + "<% =Request.QueryString["Classid"] %>" + "&stoptime=" + lReftime ;
        }
        var mClassid;
        function PageLoad(){
            mClassid = "<% =Request.QueryString["Classid"] %>" ; 


            ReTimeShow();
            if (document.getElementById("TableKK") == null){
                
                 document.getElementById("line_window").style.visibility='hidden';
                window.FrmTmPropertyshow.location = "about:blank" ;
            }else{                
                var lReftime ="<% =Request.QueryString["stoptime"] %>";
                if (lReftime != ""){
                    document.getElementById('retime').value =lReftime;
                }
                if ( mClassid == "2"){
                    mClassid = "42";
                    document.getElementById("Title").innerHTML = "正码B";                    
                }
                else {   

                    mClassid = "05"; 
                    document.getElementById("Title").innerHTML = "正码A";
                }
                document.getElementById("line_window").style.visibility='visible'; 
                window.FrmTmPropertyshow.location.href = "webPropertyshow.aspx" ;
            
            }
        }
        function ReTimeShow()
        {
            if (document.getElementById('retime') != null)
            {
                var lReftime = document.getElementById('retime').value; 
                AutoRefShow(lReftime,"LabReftime");
            }else{
                AutoRefShow(60,"");
            }
        }    
        function RefTimeBack()
        {
            if (document.getElementById("TableKK") == null){ 
                location='?stoptime=' + "60";
            }else{
                var cw = document.getElementById("FramePlShow");      
                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '" + mClassid + "' or tmClassId = '06' or tmClassId = '07'";
            } 
        } 
        function JsFunChipPlShow( vTmnoPl  )
        {
            FunChipPlShow(vTmnoPl,"Txt","Lab");
            
        }
        function TmChip(vTmClassId,vTmTypeId)
        {
//            window.open('FT_order.aspx?TmClassId=' + vTmClassId + '&TmTypeId=' +  vTmTypeId ,'bbnet_mem_order');//用OPEN 打开窗口，但原来已打开过，再次打开不屏新窗口 //地址不变，重新打开不刷新页面
          
            window.parent.bbnet_mem_order.location ='FT_order.aspx?TmClassId=' + vTmClassId + '&TmTypeId=' +  vTmTypeId;
        }  
    </script>

</head>
<%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false"--%>
<body onload="PageLoad();">
    <form id="Form1" method="post" runat="server" enableviewstate="False">
        <div class="div_windows">
            <table id="Table4" class="table_windows" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td>
                            <table id="Table9" class="Page_Head" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td class="Page_HeadL">
                                    </td>
                                    <td class="Page_HeadM">
                                        <span class="img_message"></span><span id="Msg">
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" style="width: 600px; height: 16px">
                                                <% =Session["TmMessage"] %>
                                            </marquee>
                                        </span>
                                    </td>
                                    <td class="Page_HeadR">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="Td_TabPage">
                            <div id="tab">
                                <ul>
                                    <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage(1);">正码A</a></li>
                                    <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage(2);">正码B</a></li>
                                    <li id="space"><span></span></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="Td_Cont" class="Td_Table" runat="server">
                            <table id="TableKK" border="0" cellspacing="1" cellpadding="0" runat="server">
                                <tr>
                                    <td>
                                        <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td>
                                                    <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                        <tr>
                                                            <td style="width: 150px;">
                                                                <strong id="Title">正码</strong></td>
                                                            <td style="width: 250xp;">
                                                                (香港时间:
                                                                <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                            <td style="text-align: right;">
                                                                <a class="clickRefreshPage" onclick="openLink();">刷新</a> :<label id="LabReftime"></label>&nbsp;
                                                                <select id="retime" runat="server" name="retime" onchange="ReTimeShow();">
                                                                    <option value="20">20 s</option>
                                                                    <option value="40">40 s</option>
                                                                    <option selected="selected" value="60">60 s</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="table_ChipInfo" id="Table1" border="0" cellspacing="1" cellpadding="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>期数:</strong>
                                                                <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                            <td style="width: 250px">
                                                                <asp:HyperLink ID="linkZmGo" class="ClickCmd" runat="server" NavigateUrl="javascript:chanagePage();">切换下注模式</asp:HyperLink>
                                                                &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                                <asp:HyperLink ID="LinkChipKS" class="ClickCmd" runat="server" NavigateUrl="FT_order_Tm.aspx?TmClassid=01" Target="bbnet_mem_order">快速下注</asp:HyperLink>
                                                                <input id="WagerTxt" runat="server" readonly="readonly" style="visibility: hidden; width: 3px" type="text" /></td>
                                                            <td style="text-align: right">
                                                                <b>开奖日期: </b>
                                                                <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <table id="Table2" class="table_Chip" border="0" cellspacing="1" cellpadding="0">
                                            <tbody>
                                                <tr>
                                                    <td class="td_Head_set_cen" width="64">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" width="64">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen" width="64">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" width="64">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        金额</td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">01</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab1" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt1" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="1"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">11</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab11" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt11" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="11"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">21</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab21" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt21" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="21"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">31</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab31" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt31" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="31"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">41</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab41" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt41" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="41"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">02</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab2" CssClass="Show_Pl" runat="server">00</asp:HyperLink>
                                                    </td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt2" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="2"></asp:TextBox>
                                                    </td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">12</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab12" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt12" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="12"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">22</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab22" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt22" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="22"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">32</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab32" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt32" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="32"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">42</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab42" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt42" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="42"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">03</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab3" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt3" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="3"></asp:TextBox>
                                                    </td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">13</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab13" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt13" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="13"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">23</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab23" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt23" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="23"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">33</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab33" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt33" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="33"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">43</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab43" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt43" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="43"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">04</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab4" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt4" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="4"></asp:TextBox>
                                                    </td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">14</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab14" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt14" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="14"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">24</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab24" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt24" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="24"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">34</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab34" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt34" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="34"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">44</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab44" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt44" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="44"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">05</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab5" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt5" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="5"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">15</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab15" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt15" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="15"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">25</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab25" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt25" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="25"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">35</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab35" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt35" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="35"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">45</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab45" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt45" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="45"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">06</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab6" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt6" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="6"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">16</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab16" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt16" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="16"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">26</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab26" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt26" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="26"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">36</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab36" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt36" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="36"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">46</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab46" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt46" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="46"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">07</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab7" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt7" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="7"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">17</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab17" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt17" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="17"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">27</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab27" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt27" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="27"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">37</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab37" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt37" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="37"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">47</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab47" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt47" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="47"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">08</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab8" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt8" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="8"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">18</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab18" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt18" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="18"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">28</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab28" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt28" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="28"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">38</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab38" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt38" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="38"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">48</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab48" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt48" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="48"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">09</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab9" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt9" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="9"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">19</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab19" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt19" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="19"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">29</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab29" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt29" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="29"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">39</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab39" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt39" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="39"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                        <font class="ballfont">49</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab49" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt49" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="49"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">10</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <strong>
                                                            <asp:HyperLink ID="Lab10" CssClass="Show_Pl" runat="server">00</asp:HyperLink></strong></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt10" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="10"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                        <font class="ballfont">20</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab20" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt20" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="20"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">30</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab30" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt30" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="30"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">40</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab40" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt40" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="40"></asp:TextBox></td>
                                                    <td colspan="3" class="Td_TmButton">
                                                        <asp:Button ID="ButOk" runat="server" class="button_Ok" Text="确定" OnClick="ButOk_Click" OnClientClick="return SubData();"></asp:Button>
                                                        <input onmouseup="return reset();" class="button_Reset" type="reset" value="取消" />&nbsp;<input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden; display: none;"
                                                            type="text" size="1" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="Table6" class="table_Chip" border="0" cellspacing="1" cellpadding="0">
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="80">
                                                    总单</td>
                                                <td width="81" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzhdr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                <td width="81" class="Td_TmMoneyfont">
                                                    <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzhdr" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7"></asp:TextBox>
                                                </td>
                                                <td class="TmLabfont" width="80">
                                                    总双</td>
                                                <td width="81" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzhsa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                <td width="81" class="Td_TmMoneyfont">
                                                    <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzhsa" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7"></asp:TextBox>
                                                </td>
                                                <td class="TmLabfont" width="80">
                                                    总大</td>
                                                <td width="81" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzhda" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                <td width="81" class="Td_TmMoneyfont">
                                                    <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzhda" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7"></asp:TextBox></td>
                                                <td class="TmLabfont" width="80">
                                                    总小</td>
                                                <td width="81" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labzhxa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                <td width="81" class="Td_TmMoneyfont">
                                                    <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzhxa" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
    </form>
    <table id="Table3" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
        <tr>
            <td style="width: 65px;" class="ball_td" align="center">
                信用额度</td>
            <td class="list_cen">
                <asp:Label ID="LabBzname" runat="server" Text="人民币(RMB)"></asp:Label>
                <asp:Label ID="Labxynd" runat="server"></asp:Label>
            </td>
            <td style="width: 65px;" class="ball_td" align="center">
                下注金额</td>
            <td class="list_cen">
                <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
        </tr>
    </table>
    <table id="Table5" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
        <tr>
            <td class="ball_td" align="center">
                最低限额</td>
            <td class="list_cen">
                <asp:Label ID="LabDdAA" runat="server"></asp:Label>
                <asp:Label ID="LabDd06" runat="server"></asp:Label>
                <asp:Label ID="LabDd07" runat="server"></asp:Label>
            </td>
            <td class="ball_td" align="center">
                单注限额</td>
            <td class="list_cen">
                <asp:Label ID="LabDcAA" runat="server"></asp:Label>
                <asp:Label ID="LabDc06" runat="server"></asp:Label>
                <asp:Label ID="LabDc07" runat="server"></asp:Label>
            </td>
            <td class="ball_td" align="center">
                单号限额</td>
            <td class="list_cen">
                <asp:Label ID="LabDzAA" runat="server"></asp:Label>
                <asp:Label ID="LabDz06" runat="server"></asp:Label>
                <asp:Label ID="LabDz07" runat="server"></asp:Label>
            </td>
            <td class="ball_td" align="center">
                单项限额</td>
            <td class="list_cen">
                <asp:Label ID="LabDxAA" runat="server"></asp:Label>
                <asp:Label ID="LabDx06" runat="server"></asp:Label>
                <asp:Label ID="LabDx07" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <iframe id="FramePlShow" name="FramePlShow" src="about:blank" width="40" height="0" style="visibility: hidden"></iframe>
    <div class="divMemPropertyBar" id="line_window" runat="server" style="left: 680px; top: 25px; width: 130px; height: 600px;">
        <iframe id="FrmTmPropertyshow" name="FrmTmPropertyshow" src="about:blank" frameborder="0" scrolling="no" style="height: 100%; width: 100%; border: 0" runat="server"></iframe>
    </div>
</body>
</html>
