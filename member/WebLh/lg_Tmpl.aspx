<%@ page language="c#" inherits="WebTm.lg_Tmpl, App_Web_xt-ylzzg" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_TM.css" rel="stylesheet" type="text/css" />
 
    <script language="javascript" type="text/javascript" src="../Scripts/but_chip_Check.js"></script>
    <script language="javascript" type="text/javascript" src="../Scripts/load_chipPlShow.js"></script>
    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>
    <script language="javascript" type="text/javascript" src="../Scripts/JS_Page_tab.js"></script>

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';

//            alert(isNaN("112a") );
        function SubData()
        {
            var mChipMoneySum = 0 ;//����ע���Ľ��ϼ�
            document.getElementById("WagerTxt").value = "" ;
            var lWagerStr= "",lSetValue = "";
            
            lSetValue = SetValue("AA","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49","Txt","Lab")
//            alert(lSetValue[0] + lSetValue[1] );
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +��lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("02","tmdr.tmsa","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }                
            mChipMoneySum = mChipMoneySum +��lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("03","tmda.tmxa","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }                
            mChipMoneySum = mChipMoneySum +��lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("04","tmhdr.tmhsa","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }                
            mChipMoneySum = mChipMoneySum +��lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("14","tmr.tmg.tmb","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }     
            mChipMoneySum = mChipMoneySum +��lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
                
            lSetValue = SetValue("37","tmjq.tmys","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }   
            mChipMoneySum = mChipMoneySum +��lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            if (!SubChk(String(mChipMoneySum),document.getElementById("Labxynd").innerHTML,"TxtButData")){
                return false;
            }
                
            document.getElementById("WagerTxt").value = lWagerStr ;
                return true;
        }

        
        //ͨ��ע
        function SelectBallType(vTmno,vTmje){
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = Number(arrNum[i]);
	            SelectTmOk("Txt" + tmno.toString(),vTmje);
            }
        }
        function SelectTmOk(vSelectTm,vTmje)
        {//ѡ��ָ���ĺ���
            if ( !document.getElementById(vSelectTm).disabled ){
                document.getElementById(vSelectTm).value=Number(vTmje);
            }
        }
        
        function SendTmData()
        {//ȡճ������������,���͵�ÿ��ע����
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
            location='ln_Tmpl.aspx?Classid=' + "<% =Request.QueryString["Classid"] %>" ;
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
                       
            if (document.getElementById("TableKK") == null){
                document.getElementById("line_window").style.visibility='hidden';
                window.FrmTmPropertyshow.location = "about:blank" ;
            }else{
                var lReftime ="<% =Request.QueryString["stoptime"] %>";
                if (lReftime != ""){
                    document.getElementById('retime').value =lReftime;
                }
                if ( mClassid == "2"){
                    mClassid = "41";
                    document.getElementById("Title").innerHTML = "����B";                    
                }
                else {   

                    mClassid = "01"; 
                    document.getElementById("Title").innerHTML = "����A";
                }
                document.getElementById("line_window").style.visibility='visible'; 
                window.FrmTmPropertyshow.location.href = "webPropertyshow.aspx" ;
            }
            ReTimeShow(); 
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
  
        function RefTimeBack(){
            if (document.getElementById("TableKK") == null){
                 
                location='?Classid=' + "<% =Request.QueryString["Classid"] %>" + "&stoptime=" + "60";
            }else{
                var cw = document.getElementById("FramePlShow");      
                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '" +  mClassid + "' or tmClassId = '02' or tmClassId = '03'  or tmClassId = '04'  or tmClassId = '14'  or tmClassId = '37'";
            } 
        }
        function TmChip(vTmClassId,vTmTypeId)
        {
//            window.open('FT_order.aspx?TmClassId=' + vTmClassId + '&TmTypeId=' +  vTmTypeId ,'bbnet_mem_order');//��OPEN �򿪴��ڣ���ԭ���Ѵ򿪹����ٴδ򿪲����´��� //��ַ���䣬���´򿪲�ˢ��ҳ��
          
            window.parent.bbnet_mem_order.location ='FT_order.aspx?TmClassId=' + vTmClassId + '&TmTypeId=' +  vTmTypeId;
        } 
        
        function JsFunChipPlShow( vTmnoPl  )
        {
            FunChipPlShow(vTmnoPl,"Txt","Lab");
            
        }

    </script>

</head>
<%--oncontextmenu="window.event.returnValue=false;self.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false"  
	--%>
<body onload="PageLoad();">
    <form id="Form1" method="post" runat="server" enableviewstate="False" style="display: inline">
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
                                        <span class="img_message"> </span> 
                                        <span id="Msg">
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
                        <td class="Td_TabPage"  >
                            <div id="tab">
                                <ul >
                                    <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage(1);">����A</a></li>
                                    <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage(2);">����B</a></li>
                                    <li id="space" ><span></span></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr  >
                        <td id="Td_Cont" class="Td_Table" runat="server"> 
                            <table id="TableKK" border="0" cellspacing="1" cellpadding="0" runat="server">
                                <tr>
                                    <td>
                                        <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>
                                                                        <label id="Title">
                                                                            ����</label></strong></td>
                                                                <td style="width: 250px">
                                                                    ���ʱ��:
                                                                    <asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
                                                                <td style="text-align: right;">
                                                                    <a class="clickRefreshPage" onclick="openLink();">ˢ��</a> :<label id="LabReftime"></label>&nbsp;
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
                                                        <table class="table_ChipInfo" id="Table2" border="0" cellspacing="1" cellpadding="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>����:</strong>
                                                                    <asp:Label ID="Labtmwinno" runat="server"></asp:Label>
                                                                </td>
                                                                <td style="width: 250px">
                                                                    <asp:HyperLink ID="linkZmGo" class="ClickCmd" runat="server" NavigateUrl="javascript:chanagePage();">�л���עģʽ</asp:HyperLink>
                                                                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                                    <asp:HyperLink ID="LinkChipKS" class="ClickCmd" runat="server" NavigateUrl="FT_order_Tm.aspx?TmClassid=01" Target="bbnet_mem_order">������ע</asp:HyperLink>
                                                                    <input id="WagerTxt" runat="server" readonly="readonly" type="text" style="visibility: hidden; width: 3px" /></td>
                                                                <td style="text-align: right">
                                                                    <b>��������:</b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td class="td_Head_set_cen" width="64">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" width="64">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" width="90">
                                                        <b>���</b></td>
                                                    <td class="td_Head_set_cen" width="64">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" width="90">
                                                        <b>���</b>
                                                    </td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        <b>���</b>
                                                    </td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" style="width: 65px">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        <b>���</b>
                                                    </td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        <b>����</b></td>
                                                    <td class="td_Head_set_cen" width="65">
                                                        <b>���</b>
                                                    </td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                        <font class="ballfont">01</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab1" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt1" runat="server" MaxLength="7" TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">11</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab11" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt11" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="11"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">21</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab21" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt21" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="21"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">31</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab31" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt31" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="31"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">41</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab41" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt41" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="41"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">02</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab2" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt2" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="2"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">12</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab12" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt12" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="12"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">22</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab22" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt22" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="22"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">32</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab32" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt32" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="32"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">42</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab42" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt42" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="42"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">03</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab3" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt3" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="3"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">13</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab13" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt13" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="13"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">23</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab23" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt23" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="23"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">33</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab33" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt33" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="33"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">43</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab43" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt43" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="43"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">04</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab4" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt4" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="4"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">14</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab14" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt14" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="14"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">24</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab24" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt24" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="24"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">34</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab34" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt34" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="34"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">44</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab44" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt44" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="44"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">05</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab5" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt5" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="5"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">15</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab15" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt15" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="15"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">25</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab25" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt25" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="25"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">35</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab35" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt35" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="35"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">45</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab45" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt45" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="45"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">06</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab6" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt6" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="6"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">16</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab16" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt16" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="16"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">26</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab26" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt26" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="26"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">36</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab36" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt36" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="36"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">46</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab46" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt46" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="46"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">07</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab7" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt7" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="7"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">17</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab17" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt17" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="17"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">27</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab27" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt27" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="27"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">37</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab37" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt37" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="37"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">47</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab47" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt47" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="47"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">08</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab8" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt8" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="8"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">18</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab18" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt18" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="18"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">28</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab28" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt28" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="28"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">38</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab38" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt38" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="38"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">48</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab48" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt48" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="48"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">09</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab9" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt9" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="9"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">19</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab19" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt19" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="19"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">29</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab29" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt29" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="29"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">39</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab39" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt39" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="39"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/g.gif">
                                                        <font class="ballfont">49</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab49" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt49" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="49"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">10</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab10" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt10" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="10"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/b.gif">
                                                        <font class="ballfont">20</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab20" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt20" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="20"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">30</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Lab30" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt30" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="30"></asp:TextBox></td>
                                                    <td class="Td_TmBallfont" background="../imagesBall/r.gif">
                                                        <font class="ballfont">40</font></td>
                                                    <td class="Td_TmPlfont" style="width: 65px">
                                                        <asp:HyperLink ID="Lab40" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txt40" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="40"></asp:TextBox></td>
                                                    <td colspan="3" class="Td_TmButton">
                                                        <asp:Button ID="ButOk" runat="server" class="button_Ok" Text="ȷ��" OnClick="ButOk_Click" OnClientClick="return SubData();"></asp:Button>&nbsp;
                                                        <input onmouseup="return reset();" class="button_Reset" type="reset" value="ȡ��" />
                                                        <input id="TxtButData" runat="server" name="TxtButData" type="text" style="visibility: hidden; display: none;" size="1" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="Table1" class="table_ChipOther" border="0" cellspacing="1" cellpadding="0">
                                            <tr class="Tr_Label">
                                                <td colspan="3" class="td_Label">
                                                    �ӵ���ע:���ݸ�ʽ(0190.0440.1010.1210.1610.2070.)
                                                </td>
                                            </tr>
                                            <tr class="Tr_Label">
                                                <td class="td_Label">
                                                    �ӵ���ע:<input id="TxtGetTm" class="GetTm" type="text" />
                                                </td>
                                                <td class="Td_TmButton">
                                                    <input id="Butclip" type="button" value="ճ��" size="" title="ճ��" class="button_Reset" onclick="JavaScript: document.getElementById('TxtGetTm').value = window.clipboardData.getData('Text');" />
                                                    <input id="Button1" type="button" value="�ͳ�" size="" title="�ͳ�" class="button_Reset" onclick="JavaScript: SendTmData();" />&nbsp;</td>
                                            </tr>
                                        </table>
                                        <table id="Table7" class="table_Chip" border="0" cellspacing="1" cellpadding="0">
                                            <tbody>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        �ص�</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmdr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmdr" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="50"></asp:TextBox></td>
                                                    <td class="TmLabfont">
                                                        ��˫</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmsa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmsa" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="51"></asp:TextBox></td>
                                                    <td class="TmLabfont">
                                                        �ش�</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmda" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmda" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="52"></asp:TextBox></td>
                                                    <td class="TmLabfont">
                                                        ��С</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmxa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmxa" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="53"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        �ϵ�</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmhdr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmhdr" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="54"></asp:TextBox></td>
                                                    <td class="TmLabfont">
                                                        ��˫</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmhsa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmhsa" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="55"></asp:TextBox></td>
                                                    <td class="TmLabfont">
                                                        ����</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmjq" runat="server" CssClass="Show_Pl">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox ID="Txttmjq" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" onkeypress="return MoneyKey(event);" TabIndex="52"></asp:TextBox></td>
                                                    <td class="TmLabfont">
                                                        Ұ��</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmys" runat="server" CssClass="Show_Pl">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox ID="Txttmys" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" onkeypress="return MoneyKey(event);" TabIndex="53"></asp:TextBox></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        �첨</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmr" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="60"></asp:TextBox></td>
                                                    <td class="TmLabfont">
                                                        �̲�</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmg" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmg" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="61"></asp:TextBox></td>
                                                    <td class="TmLabfont">
                                                        ����</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labtmb" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmb" CssClass="Ed_TmMoneyfont" runat="server" MaxLength="7" TabIndex="62"></asp:TextBox></td>
                                                    <td class="TmLabfont">
                                                        <font>&nbsp;</font></td>
                                                    <td class="Td_TmPlfont">
                                                        <font size="3">&nbsp;</font></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <font>&nbsp;</font></td>
                                                </tr>
                                            </tbody>
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
        <table id="Table3" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
            <tr>
                <td style="width: 65px;" class="td_Label" align="center">
                    ���ö��</td>
                <td class="td_Label">
                    <asp:Label ID="LabBzname" runat="server" Text="�����(RMB)"></asp:Label>
                    <asp:Label ID="Labxynd" runat="server"></asp:Label>
                </td>
                <td style="width: 65px;" class="td_Label" align="center">
                    ��ע���</td>
                <td class="td_Label">
                    <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table id="Table5" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
            <tr>
                <td class="td_Label" align="center">
                    ����޶�</td>
                <td class="td_Label">
                    <asp:Label ID="LabDdAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDd02" runat="server"></asp:Label>
                    <asp:Label ID="LabDd03" runat="server"></asp:Label>
                    <asp:Label ID="LabDd04" runat="server"></asp:Label>
                    <asp:Label ID="LabDd14" runat="server"></asp:Label>
                    <asp:Label ID="LabDd37" runat="server"></asp:Label></td>
                <td class="td_Label" align="center">
                    ��ע�޶�</td>
                <td class="td_Label">
                    <asp:Label ID="LabDcAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDc02" runat="server"></asp:Label>
                    <asp:Label ID="LabDc03" runat="server"></asp:Label>
                    <asp:Label ID="LabDc04" runat="server"></asp:Label>
                    <asp:Label ID="LabDc14" runat="server"></asp:Label>
                    <asp:Label ID="LabDc37" runat="server"></asp:Label></td>
                <td class="td_Label" align="center">
                    �����޶�</td>
                <td class="td_Label">
                    <asp:Label ID="LabDzAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDz02" runat="server"></asp:Label>
                    <asp:Label ID="LabDz03" runat="server"></asp:Label>
                    <asp:Label ID="LabDz04" runat="server"></asp:Label>
                    <asp:Label ID="LabDz14" runat="server"></asp:Label>
                    <asp:Label ID="LabDz37" runat="server"></asp:Label></td>
                <td class="td_Label" align="center">
                    �����޶�</td>
                <td class="td_Label">
                    <asp:Label ID="LabDxAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDx02" runat="server"></asp:Label>
                    <asp:Label ID="LabDx03" runat="server"></asp:Label>
                    <asp:Label ID="LabDx04" runat="server"></asp:Label>
                    <asp:Label ID="LabDx14" runat="server"></asp:Label>
                    <asp:Label ID="LabDx37" runat="server"></asp:Label></td>
            </tr>
        </table>
        


        
    </form>
    
        <div class="divMemPropertyBar" id="line_window" runat="server" style="left: 680px; top: 25px; width: 130px; height: 600px;">
            <iframe id="FrmTmPropertyshow" name="FrmTmPropertyshow" src="about:blank" frameborder="0" scrolling="no" style="height: 100%; width: 100%; border: 0" runat="server"></iframe>
        </div>
        <iframe id="FramePlShow" name="FramePlShow" src="about:blank" width="40" height="0" style="visibility: hidden"></iframe>
</body>
</html>

