<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_ld_4DsEd, App_Web_t2vtoice" enableEventValidation="false" %>

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

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';


//        function SubData()
//        {
//            mChipMoneySum = 0 ;//保存注单的金额合计
//            document.getElementById("WagerTxt").value = "" ;
//            var lWagerStr= "",lSetValue = "";
//                  
//            lSetValue = SetValue("04","tmadr.tmasa.tmbdr.tmbsa.tmcdr.tmcsa.tmada.tmaxa.tmbda.tmbxa.tmcda.tmcxa");
//            if (lSetValue == "ChkFalse"){
//                return false;
//            }                
//            lWagerStr = lWagerStr + lSetValue ;
//            
//            lSetValue = SetValue("41","tmbcdr.tmbcsa.tmbcda.tmbcxa.tmacdr.tmacsa.tmacda.tmacxa.tmabdr.tmabsa.tmabda.tmabxa");
//            if (lSetValue == "ChkFalse"){
//                return false;
//            }                
//            lWagerStr = lWagerStr + lSetValue ;  
//            if (!SubChk(String(mChipMoneySum),document.getElementById("Labxynd").innerHTML )){
//                return false;
//            }
//            document.getElementById("WagerTxt").value = lWagerStr ; 
//        }
        function SubData()
        {
            var mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById("WagerTxt").value = "" ;
            var lWagerStr= "",lSetValue = "";
            lSetValue = SetValueIIOnly("04","tmadr.tmasa.tmbdr.tmbsa.tmcdr.tmcsa.tmada.tmaxa.tmbda.tmbxa.tmcda.tmcxa","Txt","Label","04");
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
            lSetValue = SetValueIIOnly("41","tmbcdr.tmbcsa.tmbcda.tmbcxa.tmacdr.tmacsa.tmacda.tmacxa.tmabdr.tmabsa.tmabda.tmabxa","Txt","Label","41");
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
    function chanagePage()
    {
        location='ld_4Ds.aspx' ;
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
//    function SubData()//提交数据,进行组合检查
//    {
//        var obj = document.all ;
//        var lquerstr = "";
//        var ltmsumje = 0;
//        document.getElementById("WagerTxt").value = "" ;
//       for(i=0; i<6; i++) {
//            var ltext= "Text" + i.toString();
//            var lclass = '41' ;
//            if (i>1 && i<4){
//                lclass = '42' ;
//            } 
//            if (i>3 ){
//                lclass = '43' ;
//            } 
//            if (Number(obj[ltext].value) >= 1 ) {
////    	                if (!SubChkdz(obj[ltext].value)){
////    	                    return false;
////    	                }
//                lquerstr = lquerstr + lclass + "$"  + i.toString() + "$" + obj[ltext].value+ ";";
//                ltmsumje = ltmsumje  + Number(obj[ltext].value) ;
//            }
//        }

//        document.getElementById("WagerTxt").value = lquerstr;
////                if (!SubChk(ltmsumje)){
////                    return false;
////                }
//        return true;
////                return false;
//    }
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
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" style="width: 600px; height: 16px">
                                                <% =Session["P3Message"] %>
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
                                                                    <strong>单双</strong></td>
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
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <b>开奖日期:</b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table id="Table1" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_Chipsend">
                                                                <td style="width: 60px" class="td_Chipsend">
                                                                    提交金额:
                                                                </td>
                                                                <td>
                                                                    <input id="ButSend" onserverclick="ButOk_Click" class="button_Ok" type="button" value="确定" runat="server" />
                                                                    <input onmouseup="return reset();" class="button_Reset" type="reset" value="取消" />&nbsp;
                                                                    <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden; width: 3px" type="text" />
                                                                    <input id="WagerTxt" runat="server" readonly="readonly" type="text" style="width: 3px; visibility: hidden;" /></td>
                                                                <td align="center">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
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
                                        </table>
                                        <table id="Table7" class="table_Chip" border="0" cellspacing="1" cellpadding="0">
                                            <tbody>
                                                <tr>
                                                    <td class="td_Head_set_cen" style="width: 120px">
                                                        类别</td>
                                                    <td class="td_Head_set_cen" style="width: 40px;">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px;">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen" style="height: 25px">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 40px;">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px;">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen" style="height: 25px">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 40px;">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px;">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen" style="height: 25px">
                                                        金额</td>
                                                    <td class="td_Head_set_cen" style="width: 40px;">
                                                        号码</td>
                                                    <td class="td_Head_set_cen" style="width: 40px;">
                                                        赔率</td>
                                                    <td class="td_Head_set_cen" style="height: 25px">
                                                        金额</td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        佰位</td>
                                                    <td class="Td_TmBallfont">
                                                        单</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmadr" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmadr" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        双</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmasa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmasa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        大</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmada" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmada" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        小</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmaxa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmaxa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        拾位</td>
                                                    <td class="Td_TmBallfont">
                                                        单</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmbdr" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmbdr" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        双</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmbsa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmbsa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        大</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmbda" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmbda" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        小</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmbxa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmbxa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        个位</td>
                                                    <td class="Td_TmBallfont">
                                                        单</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmcdr" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmcdr" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        双</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmcsa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmcsa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        大</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmcda" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmcda" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        小</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmcxa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmcxa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        拾个位</td>
                                                    <td class="Td_TmBallfont">
                                                        单</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmbcdr" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmbcdr" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        双</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmbcsa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmbcsa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        大</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmbcda" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmbcda" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        小</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmbcxa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmbcxa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        佰个位</td>
                                                    <td class="Td_TmBallfont">
                                                        单</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmacdr" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmacdr" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        双</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmacsa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmacsa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        大</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmacda" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmacda" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        小</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmacxa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmacxa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        佰拾位</td>
                                                    <td class="Td_TmBallfont">
                                                        单</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmabdr" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmabdr" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        双</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmabsa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmabsa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        大</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmabda" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmabda" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" /></td>
                                                    <td class="Td_TmBallfont">
                                                        小</td>
                                                    <td class="Td_TmPlfont">
                                                        <asp:HyperLink ID="Labeltmabxa" runat="server">00</asp:HyperLink></td>
                                                    <td class="Td_TmMoneyfont">
                                                        <input id="Txttmabxa" type="text" onkeypress="return MoneyKey(event);" maxlength="8" size="4" class="Ed_TmMoneyfont" runat="server" />
                                                    </td>
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
                <td style="width: 65px;" class="ball_td" align="center">
                    信用额度</td>
                <td class="list_cen">
                    <asp:Label ID="Label1" runat="server" Text="人民币(RMB)"></asp:Label>&nbsp;
                </td>
                <td style="width: 65px;" class="ball_td" align="center">
                    下注金额</td>
                <td class="list_cen">
                </td>
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
                    <asp:Label ID="LabDd41" runat="server"></asp:Label>
                    <asp:Label ID="LabDd42" runat="server"></asp:Label>
                    <asp:Label ID="LabDd43" runat="server"></asp:Label>
                    <asp:Label ID="LabDd17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc02" runat="server"></asp:Label>
                    <asp:Label ID="LabDc03" runat="server"></asp:Label>
                    <asp:Label ID="LabDc04" runat="server"></asp:Label>
                    <asp:Label ID="LabDc41" runat="server"></asp:Label>
                    <asp:Label ID="LabDc42" runat="server"></asp:Label>
                    <asp:Label ID="LabDc43" runat="server"></asp:Label>
                    <asp:Label ID="LabDc17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDz02" runat="server"></asp:Label>
                    <asp:Label ID="LabDz03" runat="server"></asp:Label>
                    <asp:Label ID="LabDz04" runat="server"></asp:Label>
                    <asp:Label ID="LabDz41" runat="server"></asp:Label>
                    <asp:Label ID="LabDz42" runat="server"></asp:Label>
                    <asp:Label ID="LabDz43" runat="server"></asp:Label>
                    <asp:Label ID="LabDz17" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDx02" runat="server"></asp:Label>
                    <asp:Label ID="LabDx03" runat="server"></asp:Label>
                    <asp:Label ID="LabDx04" runat="server"></asp:Label>
                    <asp:Label ID="LabDx41" runat="server"></asp:Label>
                    <asp:Label ID="LabDx42" runat="server"></asp:Label>
                    <asp:Label ID="LabDx43" runat="server"></asp:Label>
                    <asp:Label ID="LabDx17" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <iframe id="FramePlShow" name="FramePlShow" src="" width="40" height="0" style="visibility: hidden"></iframe>
    </form>
</body>
</html>

