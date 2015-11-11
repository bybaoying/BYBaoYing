<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_ld_2dwEd, App_Web_t2vtoice" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css"  />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/but_chip_Check.js"></script>
    <script language="javascript" type="text/javascript" src="../Scripts/JS_Page_tab.js"></script>

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        function chanagePage()
        {
            location="ld_2dw.aspx?GameType=" + "<% =Request.QueryString["GameType"] %>" + "&Classid=" + "<% =Request.QueryString["Classid"] %>" ;
        }

        function openNewPage(vClassid)
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        }   
        function openLink()
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=<% =Request.QueryString["Classid"] %>';
        }
        
        function openchanagePage(vClassid)
        {
            location='ld_2zEd.aspx?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        } 
//            function SubData()//提交数据,进行组合检查
//            {
//                var obj = document.all ;
//                var lquerstr = "";
//                var ltmsumje = 0;
//                document.getElementById("WagerTxt").value = "" ;
//               for(i=0; i<100; i++) {
//                    var ltext= "Text" + i.toString();
//	                if (Number(obj[ltext].value) >= 1 ) {
//    	                if (!SubChkdz(obj[ltext].value)){
//    	                    return false;
//    	                }
//		                lquerstr = lquerstr + i.toString() + "$" + obj[ltext].value+ ";";
//		                ltmsumje = ltmsumje  + Number(obj[ltext].value) ;
//	                }
//                }

//                document.getElementById("WagerTxt").value = lquerstr;
//                if (!SubChk(ltmsumje)){
//                    return false;
//                }
//                return true;
//            }
        function SubData()
        {
            mChipMoneySum = 0 ;//保存注单的金额合计
            var lWagerStr= "",lSetValue = "";
            document.getElementById("WagerTxt").value = "" ;
            
            lSetValue = GetValueStrII("<% Response.Write(mClassid); %>",0,99,"Txt","Label")
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
    </script>

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
      ondragstart="return   false" 
      onselectstart   ="return   false"   onselect="document.selection.empty()"     
      oncopy="document.selection.empty()"   onbeforecopy="return false"--%>
</head>
<body>
    <form id="lt_form" method="post" onsubmit="return SubData();" runat="server">
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
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);"
                                                style="width: 600px; height: 16px">
                                                <% =mOtMessage %>
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
                                    <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openchanagePage('02');">二字组合</a></li>
                                    <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('30');">佰拾位</a></li>
                                    <li id="linkZm3" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('31');">佰个位</a></li>
                                    <li id="linkZm4" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('32');">拾个位</a></li>
                                    <li id="space" ><span></span></li>
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
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>二字</strong></td>
                                                                <td style="width: 250px">
                                                                    (<b>香港时间:</b>
                                                                    <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                                <td style="text-align: right;">
                                                                    <strong><a class="click_text" onclick="openLink();">刷新</a></strong>
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
                                                                    <asp:Label ID="Labtmwinno" runat="server"></asp:Label>
                                                                </td>
                                                                <td style="width: 250px">
                                                                    <asp:HyperLink ID="linkZmGo" runat="server" NavigateUrl="javascript:chanagePage();">切换下注模式</asp:HyperLink></td>
                                                                <td style="text-align: right">
                                                                    <b>开奖日期:</b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table id="Table7" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_Chipsend">
                                                                <td style="width: 60px" class="td_Chipsend">
                                                                    提交金额:
                                                                </td>
                                                                <td>
                                                                    <input id="ButSend" onserverclick="ButOk_Click" class="button_Ok" type="button" value="确定"
                                                                        runat="server" />
                                                                    <input onmouseup="return reset();" class="button_Reset" type="reset" value="取消" />&nbsp;
                                                                    <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden;
                                                                        width: 3px" type="text" />
                                                                    <input id="WagerTxt" runat="server" name="TxtButData" readonly="readonly" type="text"
                                                                        style="visibility: hidden; width: 3px" /></td>
                                                                <td align="center">
                                                                    <input id="TxtClassid" runat="server" type="text" style="visibility: hidden; width: 3px" /></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="Table1" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td style="width: 65px;" class="td_Caption_set">
                                                    帐户名称</td>
                                                <td style="width: 146px;" class="td_Center_set">
                                                    <asp:Label ID="LabUsername" runat="server"></asp:Label></td>
                                                <td style="width: 65px;" class="td_Caption_set">
                                                    信用额度</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabBzname" runat="server" Text="人民币(RMB)"></asp:Label>
                                                    <asp:Label ID="Labxynd" runat="server"></asp:Label>
                                                </td>
                                                <td style="width: 65px;" class="td_Caption_set">
                                                    下注金额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="td_Caption_set">
                                                    最低限额</td>
                                                <td style="width: 146px;" class="td_Center_set">
                                                    <asp:Label ID="LabDd01" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd30" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd31" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDd32" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单注限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDz01" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz30" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz31" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDz32" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单项限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabDx01" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx30" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx31" runat="server"></asp:Label>
                                                    <asp:Label ID="LabDx32" runat="server"></asp:Label></td>
                                            </tr>
                                        </table>
                                            
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen">
                                                        金额</td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">00</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label0" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt0" type="text" name="Chktm[]" maxlength="8"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">01</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label1" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt1" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">02</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label2" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <font>
                                                            <input onkeypress="return MoneyKey(event);" id="Txt2" type="text" maxlength="8" size="4"
                                                                class="Ed_TmMoneyfont" runat="server" /></font></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">03</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label3" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt3" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">04</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label4" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt4" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">05</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label5" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt5" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">06</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label6" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt6" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">07</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label7" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt7" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">08</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label8" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt8" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">09</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label9" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt9" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">10</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label10" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt10" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">11</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label11" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt11" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">12</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label12" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt12" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">13</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label13" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt13" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">14</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label14" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt14" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">15</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label15" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt15" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">16</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label16" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt16" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">17</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label17" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt17" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">18</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label18" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt18" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">19</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label19" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt19" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">20</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label20" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt20" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">21</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label21" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt21" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">22</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label22" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt22" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">23</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label23" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt23" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">24</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label24" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt24" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">25</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label25" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt25" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">26</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label26" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt26" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">27</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label27" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt27" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">28</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label28" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt28" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">29</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label29" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt29" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">30</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label30" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt30" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">31</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label31" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt31" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">32</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label32" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt32" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">33</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label33" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt33" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">34</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label34" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt34" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">35</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label35" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt35" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">36</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label36" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt36" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">37</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label37" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt37" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">38</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label38" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt38" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">39</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label39" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt39" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">40</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label40" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt40" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">41</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label41" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt41" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">42</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label42" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt42" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">43</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label43" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt43" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">44</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label44" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt44" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">45</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label45" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt45" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">46</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label46" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt46" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">47</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label47" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt47" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">48</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label48" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt48" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">49</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label49" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt49" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">50</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label50" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt50" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">51</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label51" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt51" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">52</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label52" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt52" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">53</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label53" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt53" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">54</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label54" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt54" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">55</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label55" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt55" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">56</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label56" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt56" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">57</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label57" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt57" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">58</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label58" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt58" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">59</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label59" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt59" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">60</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label60" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt60" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">61</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label61" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt61" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">62</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label62" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt62" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">63</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label63" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt63" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">64</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label64" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt64" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">65</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label65" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt65" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">66</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label66" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt66" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">67</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label67" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt67" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">68</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label68" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt68" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">69</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label69" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt69" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">70</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label70" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt70" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">71</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label71" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt71" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">72</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label72" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt72" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">73</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label73" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt73" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">74</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label74" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt74" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">75</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label75" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt75" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">76</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label76" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt76" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">77</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label77" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt77" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">78</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label78" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt78" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">79</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label79" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt79" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">80</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label80" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt80" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">81</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label81" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt81" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">82</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label82" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt82" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">83</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label83" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt83" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">84</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label84" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt84" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">85</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label85" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt85" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">86</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label86" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt86" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">87</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label87" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt87" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">88</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label88" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt88" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">89</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label89" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt89" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">90</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label90" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt90" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">91</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label91" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt91" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">92</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label92" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt92" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">93</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label93" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt93" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">94</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label94" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt94" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">95</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label95" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt95" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">96</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label96" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt96" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">97</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label97" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt97" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">98</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label98" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt98" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">99</font></td>
                                                    <td class="Td_TmPlfont">
                                                        
                                                            <asp:HyperLink ID="Label99" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input onkeypress="return MoneyKey(event);" id="Txt99" type="text" maxlength="8" size="4"
                                                            class="Ed_TmMoneyfont" runat="server" /></td>
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
        <table id="Table5" width="668" class="table_banner" cellspacing="1" style="visibility: hidden; display: none;">
            <tr>
                <td style="width: 65px;" class="ball_td" align="center">
                    信用额度</td>
                <td class="list_cen">
                    <asp:Label ID="Label220" runat="server" Text="人民币(RMB)"></asp:Label>&nbsp;
                </td>
                <td style="width: 65px;" class="ball_td" align="center">
                    下注金额</td>
                <td class="list_cen">
                </td>
            </tr>
        </table>
        <table id="Table10" width="668" class="table_banner" cellspacing="1" style="display: none; visibility: hidden">
            <tr>
                <td class="ball_td" align="center">
                    最低限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label221" runat="server"></asp:Label>
                    <asp:Label ID="LabDd43" runat="server"></asp:Label>
                    <asp:Label ID="LabDd17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc01" runat="server"></asp:Label>
                    <asp:Label ID="Label222" runat="server"></asp:Label>
                    <asp:Label ID="LabDc30" runat="server"></asp:Label>
                    <asp:Label ID="LabDc31" runat="server"></asp:Label>
                    <asp:Label ID="LabDc32" runat="server"></asp:Label>
                    <asp:Label ID="LabDc43" runat="server"></asp:Label>
                    <asp:Label ID="LabDc17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label223" runat="server"></asp:Label>
                    <asp:Label ID="LabDz43" runat="server"></asp:Label>
                    <asp:Label ID="LabDz17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    &nbsp;<asp:Label ID="Label224" runat="server"></asp:Label>
                    <asp:Label ID="LabDx43" runat="server"></asp:Label>
                    <asp:Label ID="LabDx17" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>


