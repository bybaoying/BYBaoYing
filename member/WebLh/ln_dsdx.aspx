<%@ page language="c#" inherits="WebTm.ln_dsdx, App_Web_xt-ylzzg" enableEventValidation="false" %>

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
            
            lSetValue = SetValue("02","tmdr.tmsa","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("03","tmda.tmxa","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValue("04","tmhdr.tmhsa","Txt","Lab")
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

            lSetValue = SetValue("16","zmad.zmas.zmbd.zmbs.zmcd.zmcs.zmdd.zmds.zmed.zmes.zmfd.zmfs","Txt","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
                  
            lSetValue = SetValue("17","zmaa.zmab.zmba.zmbb.zmca.zmcb.zmda.zmdb.zmea.zmeb.zmfa.zmfb","Txt","Lab")
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
            location="ln_dsdxpl.aspx" ;
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
                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '02' or tmClassId = '03'  or tmClassId = '04'  or tmClassId = '06'  or tmClassId = '07'  or tmClassId = '16'  or tmClassId = '17'";
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
    oncopy="document.selection.empty()" onbeforecopy="return false" --%>
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
                        <table id="TableKK" class="table_ChipPage" border="0" cellspacing="1" cellpadding="0"
                            runat="server">
                            <tr>
                                <td>
                                    <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>单双大小</strong></td>
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
                                                    <table class="table_ChipInfo" id="Table1" border="0" cellspacing="1" cellpadding="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>期数:</strong>
                                                                <asp:Label ID="Labtmwinno" runat="server" Width="72px">Label</asp:Label></td>
                                                            <td style="width: 250px">
                                                                <asp:HyperLink ID="linkZmGo" class="ClickCmd" runat="server" NavigateUrl="javascript:chanagePage();">切换下注模式</asp:HyperLink>
                                                                <input id="WagerTxt" runat="server" readonly="readonly" style="visibility: hidden;
                                                                    width: 3px" type="text" /></td>
                                                            <td style="text-align: right">
                                                                <b>开奖日期: </b>
                                                                <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table id="Table20" class="table_ChipInfo" border="0" cellspacing="1" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="ButOk" runat="server" class="button_Ok" Text="确定" OnClientClick="return SubData();"
                                                                    OnClick="ButOk_Click"></asp:Button>
                                                                <input onmouseup="return reset();" class="button_Reset" type="reset" value="取消" />
                                                                <input id="TxtButData" runat="server" name="TxtButData" size="1" type="text" style="visibility: hidden" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                    </table>
                                    <table id="Table2" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                        <tr>
                                            <td class="td_Head_set_cen" width="54">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="54">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="54">
                                                金额</td>
                                            <td class="td_Head_set_cen" width="54">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="54">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="54">
                                                金额</td>
                                            <td class="td_Head_set_cen" width="54">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="54">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="54">
                                                金额</td>
                                            <td class="td_Head_set_cen" width="55">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="55">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="63">
                                                金额</td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                特单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labtmdr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                 <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmdr" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                特双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labtmsa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmsa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                特大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labtmda" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmda" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                特小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labtmxa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmxa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                合单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labtmhdr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmhdr" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                合双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labtmhsa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txttmhsa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                            </td>
                                            <td class="Td_TmPlfont">
                                            </td>
                                            <td class="TmLabfont">
                                            </td>
                                            <td class="Td_TmPlfont">
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                总单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzhdr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzhdr" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                总双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzhsa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzhsa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                总大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzhda" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzhda" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                总小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzhxa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzhxa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                    <table id="Table6" class="table_Chip" border="0" cellspacing="1" cellpadding="0">
                                        <tr>
                                            <td class="td_Head_set_cen" width="99" colspan="3">
                                                正码一</td>
                                            <td class="td_Head_set_cen" width="102" colspan="3">
                                                正码二</td>
                                            <td class="td_Head_set_cen" width="103" colspan="3">
                                                正码三</td>
                                            <td class="td_Head_set_cen" width="105" colspan="3">
                                                正码四</td>
                                            <td class="td_Head_set_cen" width="105" colspan="3">
                                                正码五</td>
                                            <td class="td_Head_set_cen" width="108" colspan="3">
                                                正码六</td>
                                        </tr>
                                        <tr>
                                            <td class="td_Head_set_cen" width="36">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="36">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="36">
                                                金额</td>
                                            <td class="td_Head_set_cen" width="36">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="36">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="36">
                                                金额</td>
                                            <td class="td_Head_set_cen" width="36">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="36">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="37">
                                                金额</td>
                                            <td class="td_Head_set_cen" width="37">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="37">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="37">
                                                金额</td>
                                            <td class="td_Head_set_cen" width="37">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="37">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="37">
                                                金额</td>
                                            <td class="td_Head_set_cen" width="37">
                                                号码</td>
                                            <td class="td_Head_set_cen" width="37">
                                                赔率</td>
                                            <td class="td_Head_set_cen" width="37">
                                                金额</td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmad" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmad" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmbd" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmbd" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmcd" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmcd" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmdd" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmdd" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmed" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmed" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmfd" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmfd" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmas" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmas" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmbs" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmbs" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmcs" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmcs" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmds" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmds" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmes" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmes" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmfs" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmfs" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmaa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmaa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmba" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmba" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmca" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmca" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmda" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmda" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmea" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmea" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmfa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmfa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmab" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmab" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmbb" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmbb" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmcb" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmcb" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmdb" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmdb" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmeb" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmeb" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="TmLabfont">
                                                小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labzmfb" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtzmfb" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
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
                    <asp:Label ID="LabDd02" runat="server"></asp:Label>
                    <asp:Label ID="LabDd03" runat="server"></asp:Label>
                    <asp:Label ID="LabDd04" runat="server"></asp:Label>
                    <asp:Label ID="LabDd06" runat="server"></asp:Label>
                    <asp:Label ID="LabDd07" runat="server"></asp:Label>
                    <asp:Label ID="LabDd16" runat="server"></asp:Label>
                    <asp:Label ID="LabDd17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc02" runat="server"></asp:Label>
                    <asp:Label ID="LabDc03" runat="server"></asp:Label>
                    <asp:Label ID="LabDc04" runat="server"></asp:Label>
                    <asp:Label ID="LabDc06" runat="server"></asp:Label>
                    <asp:Label ID="LabDc07" runat="server"></asp:Label>
                    <asp:Label ID="LabDc16" runat="server"></asp:Label>
                    <asp:Label ID="LabDc17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDz02" runat="server"></asp:Label>
                    <asp:Label ID="LabDz03" runat="server"></asp:Label>
                    <asp:Label ID="LabDz04" runat="server"></asp:Label>
                    <asp:Label ID="LabDz06" runat="server"></asp:Label>
                    <asp:Label ID="LabDz07" runat="server"></asp:Label>
                    <asp:Label ID="LabDz16" runat="server"></asp:Label>
                    <asp:Label ID="LabDz17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDx02" runat="server"></asp:Label>
                    <asp:Label ID="LabDx03" runat="server"></asp:Label>
                    <asp:Label ID="LabDx04" runat="server"></asp:Label>
                    <asp:Label ID="LabDx06" runat="server"></asp:Label>
                    <asp:Label ID="LabDx07" runat="server"></asp:Label>
                    <asp:Label ID="LabDx16" runat="server"></asp:Label>
                    <asp:Label ID="LabDx17" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <iframe id="FramePlShow" name="FramePlShow" src="" width="40" height="0" style="visibility: hidden">
        </iframe>
    </form>
</body>
</html>

