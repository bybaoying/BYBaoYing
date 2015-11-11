<%@ page language="c#" inherits="WebTm.ln_zmgg, App_Web_xt-ylzzg" enableEventValidation="false" %>

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

            function SubData()
            {
                if (SubChkOther()==false){
                    return false;
                }

                var mChipMoneySum = 0 ;//保存注单的金额合计
                document.getElementById("WagerTxt").value = "" ;
                var lWagerStr= "",lSetValue = "";
                
                lSetValue = SetValue("13","zmgg","Txt","Lab")
                if (lSetValue[0] == "ChkFalse"){
                    return false;
                }                
                mChipMoneySum = mChipMoneySum +　lSetValue[1];
                lWagerStr = lWagerStr + lSetValue[0];


                if (!SubChk(String(mChipMoneySum),document.getElementById("Labxynd").innerHTML,"TxtButData")){
                    return false;
                }
                    
                document.getElementById("WagerTxt").value = lWagerStr ;
            }
            



            var mess1 =  '请先下注!';
            var mess2 =  '请选择二组以上玩法，若只要单一下注请前往正码1-6投注!' ;

            function SubChkOther() {
                var obj = document.Form1 ;
	            var checkCount = 0;
	            var checknum = obj.elements.length;
            	
	            for( i=0; i < checknum; i++ ) {
		            if (obj.elements[i].checked) {
			            checkCount ++;
		            }
	            }
            	
	            if (checkCount == 0)
	            {
		            alert(mess1);
		            return false;
	            }
	            if (checkCount == 1)
	            {
		            alert(mess2);
		            return false;
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
                location='?stoptime=' + "60";
            }else{
                var cw = document.getElementById("FramePlShow");      
                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '16' or tmClassId = '17' or tmClassId = '18' ";
            } 
        }
        function TmChip(vTmClassId,vTmTypeId)
        {
//            window.open('FT_order.aspx?TmClassId=' + vTmClassId + '&TmTypeId=' +  vTmTypeId ,'bbnet_mem_order');//用OPEN 打开窗口，但原来已打开过，再次打开不屏新窗口 //地址不变，重新打开不刷新页面
          
            window.parent.bbnet_mem_order.location ='FT_order.aspx?TmClassId=' + vTmClassId + '&TmTypeId=' +  vTmTypeId;
        } 
        
        function JsFunChipPlShow( vTmnoPl  )
        {
            FunChipPlShow(vTmnoPl,"Txt","Lab");
            
        }
    </script>

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false"--%>
</head>
<body onload="PageLoad();">
    <form id="Form1" method="post" runat="server" enableviewstate="true">
        <div class="div_windows">
            <table class="table_windows" id="Table4" cellspacing="0" cellpadding="0" border="0">
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
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);"
                                                style="width: 600px; height: 16px">
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
                                <tbody>
                                    <tr>
                                        <td>
                                            <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                                <tr>
                                                                    <td style="width: 150px">
                                                                        <strong>正码过关</strong></td>
                                                                    <td style="width: 250px">
                                                                        (<b>香港时间:</b>
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
                                                            <table id="Table1" class="table_ChipInfo" width="100%" cellspacing="0" cellpadding="0"
                                                                border="0">
                                                                <tr>
                                                                    <td style="width: 150px">
                                                                        <strong>期数:</strong>
                                                                        <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                                    <td style="width: 250px"></td>
                                                                    <td style="text-align: right">
                                                                        <b>开奖日期: </b>
                                                                        <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table id="Table20" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_Chipsend">
                                                                    <td style="width: 30px" class="td_Chipsend">
                                                                        金额</td>
                                                                    <td style="width: 40px" >
                                                                        <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmgg" runat="server" CssClass="Ed_TmMoneyfont"
                                                                            MaxLength="7"></asp:TextBox></td>
                                                                    <td>
                                                                        <asp:Button ID="ButOk" runat="server" class="button_Ok" Text="确定" OnClick="ButOk_Click"
                                                                            OnClientClick="return SubData();"></asp:Button>
                                                                        <input class="button_Reset" type="reset" value="取消">
                                                                        </td>
                                                                    <td>
                                                                        <span ID="Labzmgg"></span>
                                                                        <input id="TxtButData" runat="server" maxlength="1" name="TxtButData" size="1" style="visibility: hidden;
                                                                            width: 4px" type="text" />
                                                                        <input id="WagerTxt" runat="server" readonly="readonly" style="visibility: hidden;
                                                                            width: 3px" type="text" />
                                                                        <asp:TextBox ID="Txttmpl" runat="server" Visible="False" Width="10px"></asp:TextBox>
                                                                        <asp:TextBox ID="txttmvalue" runat="server" Visible="False" Width="10px"></asp:TextBox>
                                                                        <asp:TextBox ID="txttmCaption" runat="server" Width="10px" Visible="False"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table id="Table7" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="td_Head_set_cen">
                                                            号码</td>
                                                        <td class="td_Head_set_cen" colspan="6">
                                                            赔率</td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont" rowspan="3">
                                                            正码一</td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmad" type="radio" value="NAP1_ODD" name="game1" runat="server" >单&nbsp;
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmad" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmas" type="radio" value="NAP1_EVEN" name="game1" runat="server">双&nbsp; 
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmas" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmaa" type="radio" value="NAP1_OVER" name="game2" runat="server">大&nbsp;
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmaa" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmab" type="radio" value="NAP1_UNDER" name="game2" runat="server">小&nbsp;
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmab" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            &nbsp;</td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmah" type="radio" value="NAP1_R" name="game3" runat="server">红波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmah" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmal" type="radio" value="NAP1_G" name="game3" runat="server">绿波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmal" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmak" type="radio" value="NAP1_B" name="game3" runat="server">蓝波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmak" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont" rowspan="3">
                                                            正码二</td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmbd" type="radio" value="NAP2_ODD" name="game4" runat="server">单
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmbd" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmbs" type="radio" value="NAP2_EVEN" name="game4" runat="server">双
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmbs" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmba" type="radio" value="NAP2_OVER" name="game5" runat="server">大
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmba" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmbb" type="radio" value="NAP2_UNDER" name="game5" runat="server">小
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmbb" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            &nbsp;</td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmbh" type="radio" value="NAP2_R" name="game6" runat="server">红波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmbh" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmbl" type="radio" value="NAP2_G" name="game6" runat="server">绿波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmbl" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmbk" type="radio" value="NAP2_B" name="game6" runat="server">蓝波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmbk" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont" rowspan="3">
                                                            正码三</td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmcd" type="radio" value="NAP3_ODD" name="game7" runat="server">单
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmcd" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmcs" type="radio" value="NAP3_EVEN" name="game7" runat="server">双
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmcs" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmca" type="radio" value="NAP3_OVER" name="game8" runat="server">大
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmca" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmcb" type="radio" value="NAP3_UNDER" name="game8" runat="server">小
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmcb" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            &nbsp;</td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmch" type="radio" value="NAP3_R" name="game9" runat="server">红波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmch" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmcl" type="radio" value="NAP3_G" name="game9" runat="server">绿波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmcl" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmck" type="radio" value="NAP3_B" name="game9" runat="server">蓝波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmck" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont" rowspan="3">
                                                            正码四</td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmdd" type="radio" value="NAP4_ODD" name="game10" runat="server">单
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmdd" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmds" type="radio" value="NAP4_EVEN" name="game10" runat="server">双
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmds" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmda" type="radio" value="NAP4_OVER" name="game11" runat="server">大
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmda" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmdb" type="radio" value="NAP4_UNDER" name="game11" runat="server">小
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmdb" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            &nbsp;</td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmdh" type="radio" value="NAP4_R" name="game12" runat="server">红波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmdh" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmdl" type="radio" value="NAP4_G" name="game12" runat="server">绿波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmdl" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmdk" type="radio" value="NAP4_B" name="game12" runat="server">蓝波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmdk" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont" rowspan="3">
                                                            正码五</td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmed" type="radio" value="NAP5_ODD" name="game13" runat="server">单
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmed" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmes" type="radio" value="NAP5_EVEN" name="game13" runat="server">双
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmes" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmea" type="radio" value="NAP5_OVER" name="game14" runat="server">大
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmea" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmeb" type="radio" value="NAP5_UNDER" name="game14" runat="server">小
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmeb" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            &nbsp;</td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmeh" type="radio" value="NAP5_R" name="game15" runat="server">红波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmeh" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmel" type="radio" value="NAP5_G" name="game15" runat="server">绿波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmel" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmek" type="radio" value="NAP5_B" name="game15" runat="server">蓝波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmek" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont" rowspan="3">
                                                            正码六</td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmfd" type="radio" value="NAP6_ODD" name="game16" runat="server">单
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmfd" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmfs" type="radio" value="NAP6_EVEN" name="game16" runat="server">双
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmfs" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmfa" type="radio" value="NAP6_OVER" name="game17" runat="server">大
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmfa" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmfb" type="radio" value="NAP6_UNDER" name="game17" runat="server">小
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmfb" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            &nbsp;</td>
                                                        <td class="Td_TmPlfont">
                                                        </td>
                                                    </tr>
                                                    <tr class="Tr_TmShow">
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmfh" type="radio" value="NAP6_R" name="game18" runat="server">红波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmfh" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmfl" type="radio" value="NAP6_G" name="game18" runat="server">绿波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmfl" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                        <td class="TmLabfont">
                                                            <input id="Txtzmfk" type="radio" value="NAP6_B" name="game18" runat="server">蓝波
                                                        </td>
                                                        <td class="Td_TmPlfont">
                                                            <asp:Label ID="Labzmfk" CssClass="Show_Pl" runat="server">0</asp:Label></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
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
                    <asp:Label ID="LabDd13" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc13" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDz13" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDx13" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <iframe id="FramePlShow" name="FramePlShow" src="about:blank" width="40" height="0"
            style="visibility: hidden"></iframe>
    </form>
</body>
</html>
