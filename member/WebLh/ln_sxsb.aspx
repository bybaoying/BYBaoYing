<%@ page language="c#" inherits="WebTm.ln_sxsb, App_Web_xt-ylzzg" enableEventValidation="false" %>

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

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        var tmQS= new Array();//生肖禽兽
        tmQS[4]=	'ys';//兔
        tmQS[3]=	'ys';//虎
        tmQS[2]=	'jq';//牛
        tmQS[1]=	'ys';//鼠
        tmQS[12]=	'jq';//猪
        tmQS[11]=	'jq';//狗
        tmQS[10]=	'jq';//鸡
        tmQS[9]=	'ys';//猴
        tmQS[8]=    'jq';//羊
        tmQS[7]=	'jq';//马
        tmQS[6]=	'ys';//蛇
        tmQS[5]=	'ys';//龙
        var tmQH= new Array();//生肖禽兽
        tmQH[4]=	'qx';//兔
        tmQH[3]=	'qx';//虎
        tmQH[2]=	'qx';//牛
        tmQH[1]=	'qx';//鼠
        tmQH[12]=	'hx';//猪
        tmQH[11]=	'hx';//狗
        tmQH[10]=	'hx';//鸡
        tmQH[9]=	'hx';//猴
        tmQH[8]=    'hx';//羊
        tmQH[7]=	'hx';//马
        tmQH[6]=	'qx';//蛇
        tmQH[5]=	'qx';//龙      



        function SelectType(vType ,vObect){
//            parent.SelectBallType(vType,vObect.value);
            
            if (Number(vObect.value)<=0)
            {
                vObect.focus();
                alert("通下金额不能为零!!");
                return ;
            }
 
          switch(vType){
               case 'dr'://单
                    DrSaValue("sx121.sx122.sx123.sx124.sx125.sx126.sx127.sx128.sx129.sx1210.sx1211.sx1212","Txt",Number(vObect.value),"dr");
                 break;
               
               case 'sa': //双
                    DrSaValue("sx121.sx122.sx123.sx124.sx125.sx126.sx127.sx128.sx129.sx1210.sx1211.sx1212","Txt",Number(vObect.value),"sa");
                 break;
                
               case 'jq': //家禽
                    QYValue("sx121.sx122.sx123.sx124.sx125.sx126.sx127.sx128.sx129.sx1210.sx1211.sx1212","Txt",Number(vObect.value),"jq");
                 break;
               case 'ys': //野兽
                    QYValue("sx121.sx122.sx123.sx124.sx125.sx126.sx127.sx128.sx129.sx1210.sx1211.sx1212","Txt",Number(vObect.value),"ys");
                 break;
               case 'qx': //前六
                    QHValue("sx121.sx122.sx123.sx124.sx125.sx126.sx127.sx128.sx129.sx1210.sx1211.sx1212","Txt",Number(vObect.value),"qx");
                 break;
               case 'hx': //后六
                    QHValue("sx121.sx122.sx123.sx124.sx125.sx126.sx127.sx128.sx129.sx1210.sx1211.sx1212","Txt",Number(vObect.value),"hx");
                 break;
              }
            
        }
        
        function QHValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue )//单双值
        {
            var arrNo = vNoValue.split(".");
            var lquerstr = "";
            var lMoneySum =0;

            for (var i = 0 ; i < (arrNo.length ); i++){
               if (arrNo[i] != ""){

                    var  lSelectNo =vTmNoCap + arrNo[i];
                    if (tmQH[i+1] == vTypeValue)
                    {
                        document.getElementById(lSelectNo).value = vChipMoney;
                     }
                }
            } 
        }
        function QYValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue )//单双值
        {
            var arrNo = vNoValue.split(".");
            var lquerstr = "";
            var lMoneySum =0;

            for (var i = 0 ; i < (arrNo.length ); i++){
               if (arrNo[i] != ""){

                    var  lSelectNo =vTmNoCap + arrNo[i];
                    if (tmQS[i+1] == vTypeValue)
                    {
                        document.getElementById(lSelectNo).value = vChipMoney;
                     }
                }
            } 
        }
        function DrSaValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue)//单双值
        {
            var arrNo = vNoValue.split(".");
            var lquerstr = "";
            var lMoneySum =0;

            for (var i = 0 ; i < (arrNo.length ); i++){
               if (arrNo[i] != ""){

                    var  lSelectNo =vTmNoCap + arrNo[i];
                    if (document.getElementById(lSelectNo).attributes["PropertyDrSa"].nodeValue == vTypeValue)
                    {
                        document.getElementById(lSelectNo).value = vChipMoney;
                     }
                }
            } 
        }
        
        function SubData()
        {
            var mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById("WagerTxt").value = "" ;
            var lWagerStr= "",lSetValue = "";
            
            lSetValue = SetValue("14","tmr.tmg.tmb","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("15","sx121.sx122.sx123.sx124.sx125.sx126.sx127.sx128.sx129.sx1210.sx1211.sx1212","Txt","Lab")
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
     
        function chanagePage()
        {
            location="ln_sxsbpl.aspx" ;
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
            location="?stoptime=" + lReftime ;
        }
        function PageLoad(){
            var lReftime ="<% =Request.QueryString["stoptime"] %>";
            if (lReftime != ""){
                document.getElementById('retime').value =lReftime;
            }
            ReTimeShow();
            
            if (document.getElementById("TableKK") == null){
                document.getElementById("line_window").style.visibility='hidden';
                window.FrmTmPropertyshow.location = "about:blank" ;
            }else{
                document.getElementById("line_window").style.visibility='visible'; 
                window.FrmTmPropertyshow.location.href = "webPropertySX.aspx" ;
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
                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '14' or tmClassId = '15'";
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
//        document.oncontextmenu = function(){
//            return false;
//        }
    </script>

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false"--%>
</head>
<body onload="PageLoad();">
    <form id="Form1" method="post" runat="server" enableviewstate="False">
        <div class="div_windows">
            <table id="Table4" class="table_windows" cellspacing="0" cellpadding="0">
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
                                                                        生肖(十二生肖).色波</label></strong></td>
                                                            <td style="width: 250px">
                                                                香港时间:
                                                                <asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
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
                                                    <table class="table_ChipInfo" id="Table2" border="0" cellspacing="1" cellpadding="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>期数:</strong>
                                                                <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                            <td style="width: 251px">
                                                                <asp:HyperLink ID="linkZmGo" class="ClickCmd" runat="server" NavigateUrl="javascript:chanagePage();">切换下注模式</asp:HyperLink>
                                                                <input id="WagerTxt" runat="server" readonly="readonly" style="visibility: hidden; width: 3px" type="text" /></td>
                                                            <td style="text-align: right">
                                                                <b>开奖日期:</b>
                                                                <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table id="Table20" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                        <tr class="tr_Chipsend">
                                                            <td class="td_Chipsend">
                                                                <asp:Button ID="ButOk" runat="server" class="button_Ok" Text="确定" OnClick="ButOk_Click" TabIndex="16" OnClientClick="return SubData();"></asp:Button>
                                                                <input onmouseup="return reset();" class="button_Reset" type="reset" value="取消" />
                                                                <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden; width: 4px" type="text" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                        <tr>
                                            <td class="td_Head_set_cen" style="width: 120px">
                                                <b>十二生肖</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen" style="width: 80px;">
                                                <b>赔率</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>金额</b></td>
                                            <td class="td_Head_set_cen" style="width: 120px">
                                                <b>十二生肖</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen" style="width: 80px;">
                                                <b>赔率</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>金额</b></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                十二肖鼠</td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx121" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx121" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx121" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="1"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                十二肖牛</td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx122" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx122" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx122" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="7"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                十二肖虎
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx123" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx123" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx123" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="2"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                十二肖兔
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx124" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx124" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx124" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="8"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                十二肖龙
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx125" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx125" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx125" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="3"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                十二肖蛇
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx126" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx126" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx126" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="9"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                十二肖马
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx127" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx127" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx127" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="4"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                十二肖羊
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx128" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx128" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx128" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="10"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                十二肖猴
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx129" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx129" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx129" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="5"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                十二肖鸡
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx1210" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx1210" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx1210" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="11"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                十二肖狗
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx1211" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx1211" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx1211" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="6"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                十二肖猪</td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx1212" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labsx1212" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsx1212" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="12"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                    <table id="Table1" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                红波</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labtmr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmr" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="13"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                绿波</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labtmg" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmg" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="14"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                蓝波</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labtmb" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmb" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7" TabIndex="15"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
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
                    <asp:Label ID="LabDd14" runat="server"></asp:Label>
                    <asp:Label ID="LabDd15" runat="server"></asp:Label></td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc14" runat="server"></asp:Label>
                    <asp:Label ID="LabDc15" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDz14" runat="server"></asp:Label>
                    <asp:Label ID="LabDz15" runat="server"></asp:Label></td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDx14" runat="server"></asp:Label>
                    <asp:Label ID="LabDx15" runat="server"></asp:Label></td>
            </tr>
        </table>
        <iframe id="FramePlShow" name="FramePlShow" src="" width="40" height="0" style="visibility: hidden"></iframe>
    </form>
    <div class="divMemPropertyBar" id="line_window" runat="server" style="left: 680px; top: 25px; width: 130px; height: 600px;">
        <iframe id="FrmTmPropertyshow" name="FrmTmPropertyshow" src="about:blank" frameborder="0" scrolling="no" style="height: 100%; width: 100%; border: 0" runat="server"></iframe>
    </div>
</body>
</html>

