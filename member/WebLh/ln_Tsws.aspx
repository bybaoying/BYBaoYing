<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_ln_Tsws, App_Web_xt-ylzzg" enableEventValidation="false" %>

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
            var mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById("WagerTxt").value = "" ;
            var lWagerStr= "",lSetValue = "";
            
            lSetValue = SetValue("36","wx1.wx2.wx3.wx4.wx5","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("22","ts0.ts1.ts2.ts3.ts4","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("23","ws1.ws2.ws3.ws4.ws5.ws6.ws7.ws8.ws9.ws0","Txt","Lab")
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
        function RefTimeBack()
        {
            if (document.getElementById("TableKK") == null){ 
                location='?stoptime=' + "60";
            }else{
                var cw = document.getElementById("FramePlShow");      
                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '22' or tmClassId = '23' or tmClassId = '36' ";
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
                            <tr>
                                <td>
                                    <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table class="table_ChipTitle" id="Table12" style="width: 100%" height="1" cellspacing="0"
                                                        cellpadding="0" border="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>特头、特尾、五行</strong></td>
                                                            <td style="width: 250px">
                                                                (<b>香港时间:</b>
                                                                <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                            <td style="text-align: right">
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
                                                    <table id="Table1" class="table_ChipInfo" style="width: 100%" cellspacing="0" cellpadding="0"
                                                        border="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>期数:</strong>
                                                                <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                            <td style="width: 250px">
                                                                <font>&nbsp;<input id="WagerTxt" runat="server" readonly="readonly" style="visibility: hidden;
                                                                    width: 3px" type="text" /></font></td>
                                                            <td style="text-align: right;">
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
                                                            <td class="td_Chipsend">
                                                                <asp:Button ID="ButOk" runat="server"  class="button_Ok" Text="确定" OnClick="ButOk_Click"
                                                                    TabIndex="13" OnClientClick="return SubData();"></asp:Button>
                                                                <input onmouseup="return reset();"  class="button_Reset" type="reset"
                                                                    value="取消" />
                                                                <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden;
                                                                    width: 4px" type="text" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table id="Table2" class="table_Chip" style="width: 100%" cellspacing="1">
                                        <tr>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>特尾</b></td>
                                            <td class="td_Head_set_cen" style="width: 140px">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>赔率</b></td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                <strong>金额</strong></td>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>特尾</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>赔率</b></td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                <strong>金额</strong></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <span id="Span16">一尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span6">01.11.21.31.41.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws1" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                 <asp:TextBox ID="Txtws1" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                <span id="Span26">二尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span11">02.12.22.32.42.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws2" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox ID="Txtws2" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <span id="Span17">三尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span7">03.13.23.33.43.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws3" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox ID="Txtws3" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                <span id="Span27">四尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span12">04.14.24.34.44.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws4" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox ID="Txtws4" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <span id="Span18">五尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span8">05.15.25.35.45.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws5" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox ID="Txtws5" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                <span id="Span28">六尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span13">06.16.26.36.46.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws6" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox ID="Txtws6" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <span id="Span19">七尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span9">07.17.27.37.47.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws7" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox ID="Txtws7" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                <span id="Span29">八尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span14">08.18.28.38.48.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws8" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox ID="Txtws8" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <span id="Span20">九尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span10">09.19.29.39.49.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws9" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox ID="Txtws9" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                <span id="Span30">零尾</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span15">10.20.30.40.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labws0" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox ID="Txtws0" runat="server" MaxLength="7" onkeypress="return MoneyKey(event);"
                                                    TabIndex="1" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                    <table id="Table7" width="100%" class="table_Chip" cellspacing="1">
                                        <tr>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>特头</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>赔率</b></td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                <b>金额</b></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <span id="Span21">零头</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span1">01.02.03.04.05.06.07.08.09.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labts0" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtts0" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="7"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <span id="Span22">一头</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span2">10.11.12.13.14.15.16.17.18.19.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labts1" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtts1" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="8"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <span id="Span23">二头</span>
                                            </td>
                                            <td class="TmLabValuefont">
                                                <span id="Span3">20.21.22.23.24.25.26.27.28.29.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labts2" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtts2" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="9"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <span id="Span24">三头</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span4">30.31.32.23.34.35.36.37.38.39.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labts3" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtts3" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="10"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <span id="Span25">四头</span></td>
                                            <td class="TmLabValuefont">
                                                <span id="Span5">40.41.42.43.44.45.46.47.48.49.</span></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labts4" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtts4" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="11"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>五行</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>赔率</b></td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                <b>金额</b></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <asp:Label ID="LabCwx1" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVwx1" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labwx1" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtwx1" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="8"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <asp:Label ID="LabCwx2" runat="server"></asp:Label>
                                            </td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVwx2" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labwx2" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtwx2" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="9"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <asp:Label ID="LabCwx3" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVwx3" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labwx3" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtwx3" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="10"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <asp:Label ID="LabCwx4" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVwx4" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labwx4" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtwx4" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="11"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont" align="center">
                                                <asp:Label ID="LabCwx5" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVwx5" runat="server"></asp:Label></td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labwx5" CssClass="Show_Pl" runat="server">0</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtwx5" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7" TabIndex="7"></asp:TextBox></td>
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
                <td style="width: 65px;" class="TmLabfont" align="center">
                    信用额度</td>
                <td class="Td_TmPlfont">
                    <asp:Label ID="LabBzname" runat="server" Text="人民币(RMB)"></asp:Label>
                    <asp:Label ID="Labxynd" runat="server"></asp:Label>
                </td>
                <td style="width: 65px;" class="TmLabfont" align="center">
                    下注金额</td>
                <td class="Td_TmPlfont">
                    <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table id="Table5" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
            <tr>
                <td class="TmLabfont" align="center">
                    最低限额</td>
                <td class="Td_TmPlfont">
                    <asp:Label ID="LabDd22" runat="server"></asp:Label>
                    <asp:Label ID="LabDd23" runat="server"></asp:Label>
                    <asp:Label ID="LabDd36" runat="server"></asp:Label></td>
                <td class="TmLabfont" align="center">
                    单注限额</td>
                <td class="Td_TmPlfont">
                    <asp:Label ID="LabDc22" runat="server"></asp:Label>
                    <asp:Label ID="LabDc23" runat="server"></asp:Label>
                    <asp:Label ID="LabDc36" runat="server"></asp:Label>
                </td>
                <td class="TmLabfont" align="center">
                    单号限额</td>
                <td class="Td_TmPlfont">
                    <asp:Label ID="LabDz22" runat="server"></asp:Label>
                    <asp:Label ID="LabDz23" runat="server"></asp:Label>
                    <asp:Label ID="LabDz36" runat="server"></asp:Label>
                </td>
                <td class="TmLabfont" align="center">
                    单项限额</td>
                <td class="Td_TmPlfont">
                    <asp:Label ID="LabDx22" runat="server"></asp:Label>
                    <asp:Label ID="LabDx23" runat="server"></asp:Label>
                    <asp:Label ID="LabDx36" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <iframe id="FramePlShow" name="FramePlShow" src="about:blank" width="40" height="0"
            style="visibility: hidden"></iframe>
    </form>
</body>
</html>

