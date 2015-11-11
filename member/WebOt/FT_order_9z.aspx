<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_FT_order_9z, App_Web_h-elesbu" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Main_left_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />

    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>

    <script language="JavaScript" type="text/javascript" src="../Scripts/but_chip_Check.js"></script>

    <script language="JavaScript" type="text/javascript"> 
        if(self == top) location = '/';

        function SubData()
        {
            var mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById("WagerTxt").value = "" ;
            var lWagerStr= "",lSetValue = "";
            lSetValue = SetValueIILm("<% Response.Write(mClassid); %>","<% Response.Write(mChipId); %>","<% Response.Write(mChipNo); %>","Txt","lab","");
//            alert(lSetValue[0] + lSetValue[1] );
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
 
        function PageLoad(){
            ReTimeShow();   
            Sum_Money();
        }
        function ReTimeShow()
        {
            AutoRefShow(180,"retime");
        }
  
        function RefTimeBack(){
            ClickCancel() 
        }
        function ClickCancel()
        {
            self.location='../App/select_lt.aspx?GameType=<% =Request.QueryString["GameType"] %>';
        }
        
        function Sum_Money( )
        {//
            var lWin_Money = Sum_Chip_Money("<% Response.Write(mChipNo); %>","Txt"  )
            document.getElementById("LabTmwinje").innerHTML=lWin_Money;//可赢金额
        }
    </script>

    <%--leftmargin="0" topmargin="0" document.btype.value="parent.body.document.btype.value"
    style="background-image: url(../images/order_bk.gif); background-repeat: repeat-y" oncontextmenu="window.event.returnValue=false"--%>
</head>
<body onload="PageLoad();">
    <div class="div_Class">
        <form id="Form1" name="select_lt" method="post" runat="server" onsubmit="return SubData();">
            <div class="div_Head_a">
                <div id="countdown_num_title" class="m-title" runat="server">
                </div>
            </div>
            <div class="div_Head_b">
                <div class="m-title">
                    <asp:Label ID="LabTzC" runat="server" Text="投注"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="交易单"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="计时:"></asp:Label>
                    <asp:Label ID="retime" runat="server"></asp:Label></div>
            </div>
            <div class="div_Head_d">
                <div class="div_table">
                    <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                        <tbody>
                            <tr>
                                <td class="td_Caption_set">
                                    期数:
                                </td>
                                <td>
                                    <span id="Labtmwinno" class="span_set" runat="server"></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_Caption_set">
                                    帐户名称:
                                </td>
                                <td>
                                    <span id="LabUsername" class="span_set" runat="server"></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_Caption_set">
                                    信用额度:
                                </td>
                                <td>
                                    <span id="Labxynd" class="span_set" runat="server"></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_Caption_set">
                                    使用幣別:
                                </td>
                                <td>
                                    <span id="LabBzname" class="span_set" runat="server">人民币(RMB)</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="div_table">
                <table id="TableA" class="Main_Table" cellspacing="1" cellpadding="0" border="0">
                    <thead>
                        <tr>
                            <td class="td_Head_set_cen" colspan="2">
                                <asp:Label ID="Label9" runat="server" Text="本場單注最高"></asp:Label>
                                <em>
                                    <asp:Label ID="LabTjeA" runat="server"></asp:Label></em>
                                <asp:Label ID="Label10" runat="server" Text="限制 !!"></asp:Label>
                            </td>
                        </tr>
                    </thead>
                    <tr>
                        <td class="td_cen_caption" colspan="2">
                            <asp:Label ID="LabTzName" runat="server" Text="AAAA"></asp:Label>@ <em>
                                <asp:Label ID="LabPL" name="LabPL" runat="server" Text=""></asp:Label></em></td>
                    </tr>
                </table>
            </div>
            <div class="div_table">
                <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                    <tr>
                        <td colspan="2">
                            <table id="" cellspacing="1" cellpadding="0" border="0" class="Main_Table">
                                <thead>
                                    <tr>
                                        <td class="td_Head_set_cen">
                                            号码/赔率</td>
                                        <td class="td_Head_set_cen">
                                            金额</td>
                                    </tr>
                                </thead>
                                <tbody id="TabChip" runat="server">
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            交易金額：</td>
                        <td id="TDTmwinje" runat="server" class="td_Caption_Text">
                            <asp:Label ID="LabTmwinje" name="LabTmwinje" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            最低限額：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDd" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            單注限額：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDz" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            單项最高：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDx" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </div>
            <br />
            <div class="div_sendsub">
                <input type="button" name="btnCancel" value="取消交易" onclick="ClickCancel();" class="no" id="Button1" runat="server"/>&nbsp;
                <asp:Button ID="ButCmdData" runat="server" OnClick="ButOk_Click" Text="確定交易" Width="73px" />
                <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden; width: 3px" type="text" />
                <input id="TxtClassId" runat="server" name="TxtButData" readonly="readonly" style="visibility: hidden; display: none; width: 3px" type="text" />
                <input id="WagerTxt" runat="server" name="TxtButData" type="text" readonly="readOnly" style="visibility: hidden; display: none; width: 3px" />
            </div>
            <div style="height: 80px;">
            </div>
        </form>
    </div>
</body>
</html>
