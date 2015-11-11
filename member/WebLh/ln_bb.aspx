<%@ page language="c#" inherits="WebTm.ln_bb, App_Web_xt-ylzzg" enableEventValidation="false" %>

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
            
            lSetValue = SetValue("21","rdr.rsa.rda.rxa.gdr.gsa.gda.gxa.bdr.bsa.bda.bxa","Txt","Lab")
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
            location="ln_bbpl.aspx" ;
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
        function PageLoad(){ 
            ReTimeShow();            
            if (document.getElementById("TableKK") == null){ 
            }else{
                var lReftime ="<% =Request.QueryString["stoptime"] %>";
                if (lReftime != ""){
                    document.getElementById('retime').value =lReftime;
                }
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
        function RefTimeBack(){
            if (document.getElementById("TableKK") == null){
                var lReftime = document.getElementById('retime').value; 
                location="?stoptime=" + "60";
            }else{
                var cw = document.getElementById("FramePlShow");      
                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '21'";
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
                        <table id="TableKK" class="table_ChipPage" border="0" cellspacing="1" cellpadding="0"
                            runat="server">
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
                                                                <strong>半波</strong></td>
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
                                                    <table id="Table20" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                        <tr class="tr_Chipsend">
                                                            <td class="td_Chipsend">
                                                                <asp:Button ID="ButOk" runat="server" class="button_Ok" Text="确定" OnClick="ButOk_Click"
                                                                    OnClientClick="return SubData();"></asp:Button>&nbsp;
                                                                <input onmouseup="return reset();" class="button_Reset" type="reset"
                                                                    value="取消" />
                                                                <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden;
                                                                    width: 4px" type="text" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                    </table>
                                    <table id="Table7" class="table_Chip" border="0" cellspacing="1" cellpadding="0">
                                        <tr>
                                            <td width="102" class="td_Head_set_cen">
                                                <b>半波</b></td>
                                            <td width="72" class="td_Head_set_cen" style="width: 72px">
                                                <b>赔率</b></td>
                                            <td width="69" class="td_Head_set_cen" style="width: 69px">
                                                <b>金额</b></td>
                                            <td width="436" class="td_Head_set_cen" colspan="10">
                                                <b>号码</b>
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                红单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labrdr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtrdr" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">01</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">07</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">13</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">19</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">23</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">29</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">35</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">45</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                红双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labrsa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtrsa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">02</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">08</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">12</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">18</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">24</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">30</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">34</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">40</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">46</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                红大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labrda" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtrda" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">29</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">30</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">34</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">35</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">40</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">45</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">46</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                红小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labrxa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtrxa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">01</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">02</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">07</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">08</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">12</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">13</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">18</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">19</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">23</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">24</font></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                绿单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labgdr" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtgdr" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">05</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">11</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">17</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">21</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">27</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">33</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">39</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">43</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                绿双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labgsa" CssClass="Show_Pl" runat="server">00</asp:HyperLink></td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtgsa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">06</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">16</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">22</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">28</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">32</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">38</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">44</font></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                绿大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labgda" CssClass="Show_Pl" runat="server">00</asp:HyperLink>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtgda" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">27</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">28</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">32</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">33</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">38</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">39</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">43</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">44</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                绿小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labgxa" CssClass="Show_Pl" runat="server">00</asp:HyperLink>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtgxa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">05</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">06</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">11</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">16</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">17</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">21</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">22</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                蓝单</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labbdr" CssClass="Show_Pl" runat="server">00</asp:HyperLink>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtbdr" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">03</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">09</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">15</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">25</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">31</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">37</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">41</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">47</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                蓝双</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labbsa" CssClass="Show_Pl" runat="server">00</asp:HyperLink>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtbsa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">04</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">10</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">14</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">20</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">26</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">36</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">42</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">48</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                蓝大</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labbda" CssClass="Show_Pl" runat="server">00</asp:HyperLink>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtbda" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">25</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">26</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">31</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">36</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">37</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">41</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">42</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">47</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">48</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                            </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                蓝小</td>
                                            <td class="Td_TmPlfont">
                                                <asp:HyperLink ID="Labbxa" CssClass="Show_Pl" runat="server">00</asp:HyperLink>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtbxa" runat="server" CssClass="Ed_TmMoneyfont"
                                                    MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">03</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">04</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">09</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">10</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">14</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">15</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">20</font>
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                            </td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                            </td>
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
                    <asp:Label ID="LabDd21" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单注限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc21" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单号限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDz21" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    单项限额</td>
                <td class="list_cen">
                    <asp:Label ID="LabDx21" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <iframe id="FramePlShow" name="FramePlShow" src="" width="40" height="0" style="visibility: hidden">
        </iframe>
    </form>
</body>
</html>

