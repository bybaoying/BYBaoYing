<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_ld_Fs, App_Web_l2ol5azm" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
            //检查帐号,名称,密码 字元限制
//        function chanagePage()
//        {
//            location='ld_1zEd.aspx?GameType=<% =Request.QueryString["GameType"] %>&Classid=<% =Request.QueryString["Classid"] %>'  ;
//        }

        function openNewPage(vClassid)
        {//切换页
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        }   
        function openLink()
        {//刷新点击
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=<% =Request.QueryString["Classid"] %>' ;
        }
        function CheckKey()
        {
            if(event.keyCode == 13) return true;
            if(!((event.keyCode > 47 && event.keyCode < 58 ) || event.keyCode == 46 ))
            {
              alert("金额不可使用特殊字符!!"); return false;
            }
        }

        function CheckNo(vObje)
        {
            var obj = document.lt_form ;
            var lTmNoB = "";
            var lTmNoS = "";
            var lTmNoG = "";
            var lTmNoBNum = 0;
            var lTmNoSNum = 0;
            var lTmNoGNum = 0;
                
            for(i=0; i<obj.Chktm.length; i++) {
            
           
                if (obj.Chktm[i].checked) {
//                    var  lPl ="Label" + i.toString() ;  
//	                obj.Chktm[i].checked = false;  
	                if (i<10)
	                { 
	                    lTmNoB = lTmNoB + obj.Chktm[i].value + " ";
	                    lTmNoBNum = lTmNoBNum +1;
	                }

	                if (i >=10 && i < 20)
	                { 
	                    lTmNoS = lTmNoS + obj.Chktm[i].value + " ";
	                    lTmNoSNum = lTmNoSNum +1;
	                }

	                if (i >=20)
	                { 
	                    lTmNoG = lTmNoG + obj.Chktm[i].value + " ";
	                    lTmNoGNum = lTmNoGNum +1;
	                } 
                }
            }
            
            var lTmNoNum= lTmNoBNum + lTmNoSNum + lTmNoGNum;
            if (  lTmNoNum >21   )//最少需选择9个号，最多选择21个号码
            {
                vObje.checked = false;
                return;
            }
 
            
            document.getElementById("CheckTmNo").innerHTML = lTmNoB +"*" + lTmNoS +"*" + lTmNoG;
            var lGroupNum= lTmNoBNum *lTmNoSNum *lTmNoGNum;
            
            if ("63" ==document.getElementById("TxtClassid").value)
            {

                if (lGroupNum==0 || lTmNoNum <9 )
                {//最少需选择9个号，最多选择21个号码
                    document.getElementById("LabelPl").innerHTML="";
                }
                else
                {
                    document.getElementById("LabelPl").innerHTML = Math.round( Number(document.getElementById("Labeltmfszh").innerHTML) / lGroupNum*100)/100;
                }
            }
            else
            {
//                document.getElementById("GroupNum").innerHTML = lGroupNum.toString();            
            }
//            document.getElementById("LabelPl").innerHTML = Math.round( Number(document.getElementById("Labeltmfszh").innerHTML) / lGroupNum*100)/100;
        }
 
        function PageLoad()
        {
            if ("63" ==document.getElementById("TxtClassid").value)
            {
                
            }
            else
            {
            
            }
            
        }
        function SendData()
        {
            if ("63" ==document.getElementById("TxtClassid").value)
            {
                var ltmClassId;
                ltmClassId = document.getElementById("TxtClassid").value;
                var lTmNo =document.getElementById("CheckTmNo").innerHTML;
                var lTmPl = Number(document.getElementById("LabelPl").innerHTML)
                if (lTmPl == 0)
                {
                    alert("最少需选择9个号，最多选择21个号码!!"); 
//                    return false;
                }
                else
                {
                    window.parent.bbnet_mem_order.location.href='FT_order_9z.aspx?GameType=<% =Request.QueryString["GameType"] %>&TmClassId=' + ltmClassId +   
                        '&TmTypeId=6301&TmNo=' + lTmNo + 
                        '&TmJe=' + document.getElementById("Txtbutje").value ;
                }
            }
            else
            {
                TmFsSendData();
            }
        }
        function TmFsSendData()
        {

            var obj = document.lt_form ;
            var lTmNoB = "";
            var lTmNoS = "";
            var lTmNoG = "";
           for(i=0; i<obj.Chktm.length; i++) {

           
	            if (obj.Chktm[i].checked) {
	                var  lPl ="Label" + i.toString() ;  
		            obj.Chktm[i].checked = false;  
		            if (i<10)
		            { 
		                lTmNoB = lTmNoB + obj.Chktm[i].value + ";";
		            }

		            if (i >=10 && i < 20)
		            { 
		                lTmNoS = lTmNoS + obj.Chktm[i].value + ";";
		            }

		            if (i >=20)
		            { 
		                lTmNoG = lTmNoG + obj.Chktm[i].value + ";";
		            }
		            
	            }
            } 
//            alert(("000"));
            var lClassId= "",ltmClassId="";
             if (lTmNoB == "")
            {
                lClassId = lClassId + "0";
            }
            else
            {
                lClassId = lClassId + "1";
            }
            if (lTmNoS == "")
            {
                lClassId = lClassId + "0";
            }
            else
            {
                lClassId = lClassId + "1";
            }
            if (lTmNoG == "")
            {
                lClassId = lClassId + "0";
            }
            else
            {
                lClassId = lClassId + "1";
            }
//            alert(lClassId);
            switch (lClassId)
            {
                case "100"://11	佰定位
                    ltmClassId = "11";
                    break;
                case "010"://12	拾定位
                    ltmClassId = "12";
                    break;
                case "001"://13	个定位
                    ltmClassId = "13";
                    break;
                case "110"://30	佰拾定位
                    ltmClassId = "30";
                    break;
                case "101"://31	佰个定位
                    ltmClassId = "31";
                    break;
                case "011"://32	拾个定位
                    ltmClassId = "32";
                    break;
                case "111"://50	佰拾个定位
                    ltmClassId = "50";
                    break;
            }
            
            var lTmNo = tmNoToTmId(ltmClassId,lTmNoB, lTmNoS,lTmNoG);//把选择的号,转换成号码
            window.parent.bbnet_mem_order.location.href='FT_order_Lm.aspx?GameType=<% =Request.QueryString["GameType"] %>&TmClassId=' + ltmClassId +   
                '&TmNo=' + lTmNo + 
                '&TmJe=' + document.getElementById("Txtbutje").value ;
        }  
        
 
        function tmNoToTmId(vClassId,vTmNoB, vTmNoS,vTmNoG)
        {//把选择的号,转换成号码
//            alert(vClassId);
            var lTmNoBArr;var lTmNoSArr; var lTmNoGArr;
            lTmNoBArr = vTmNoB.split(";");
            lTmNoSArr = vTmNoS.split(";");
            lTmNoGArr = vTmNoG.split(";");
            var ltmno ="";
            var ltmvalue ="" ;
            var i ;var j ;var  k;

            switch (vClassId)
            {
                case "11"://11	佰定位
                    for (i = 0; i < lTmNoBArr.length - 1; i += 1)
                    {
                        ltmvalue = lTmNoBArr[i] ;
                        ltmvalue = Number(ltmvalue);
                        ltmno = ltmno + ltmvalue + ";";
                    }
                    break;
                case "12"://12	拾定位
                    for (j = 0; j < lTmNoSArr.length - 1;j += 1)
                    {
                        ltmvalue =  lTmNoSArr[j] ;
                        ltmvalue = Number(ltmvalue);
                        ltmno = ltmno + ltmvalue + ";";
                    }
                    break;
                case "13"://13	个定位

                    for (k = 0; k < lTmNoGArr.length - 1; k += 1)
                    {
                        ltmvalue = lTmNoGArr[k];
                        ltmvalue = Number(ltmvalue);
                        ltmno = ltmno + ltmvalue + ";";
                    }
            
                    break;
                case "30"://30	佰拾定位
                    for (i = 0; i < lTmNoBArr.length - 1; i += 1)
                    {
                        for (j = 0; j < lTmNoSArr.length - 1; j += 1)
                        {
                           
                                ltmvalue = lTmNoBArr[i] + lTmNoSArr[j] ;
                                ltmvalue = Number(ltmvalue);
                                ltmno = ltmno + ltmvalue + ";";
                      
                        }
                    }
                    break;
                case "31"://31	佰个定位
                    for (i = 0; i < lTmNoBArr.length - 1; i += 1)
                    {
                  
                            for (k = 0; k < lTmNoGArr.length - 1; k += 1)
                            {
                                ltmvalue = lTmNoBArr[i] + lTmNoGArr[k];
                                ltmvalue = Number(ltmvalue);
                                ltmno = ltmno + ltmvalue + ";";
                            }
                   
                    }
                    break;
                case "32"://32	拾个定位
                    for (j = 0; j < lTmNoSArr.length - 1; j += 1)
                    {
                        for (k = 0; k < lTmNoGArr.length - 1; k += 1)
                        {
                            ltmvalue =  lTmNoSArr[j] + lTmNoGArr[k];
                            ltmvalue = Number(ltmvalue);
                            ltmno = ltmno + ltmvalue + ";";
                        }
                    }
                    break;
                case "50"://50	佰拾个定位
                    for (i = 0; i < lTmNoBArr.length - 1; i += 1)
                    {
                        for (j = 0; j < lTmNoSArr.length - 1; j += 1)
                        {
                            for (k = 0; k < lTmNoGArr.length - 1; k += 1)
                            {
                                ltmvalue = lTmNoBArr[i] + lTmNoSArr[j] + lTmNoGArr[k];
                                ltmvalue = Number(ltmvalue);
                                ltmno = ltmno + ltmvalue + ";";
                            }
                        }
                    }
                    break;
            }
            return ltmno;
            
        } 
    </script>

    <%--oncontextmenu="self.event.returnvalue=false;window.event.returnvalue=false;"
      ondragstart="return   false" 
      onselectstart   ="return   false"   onselect="document.selection.empty()"     
      oncopy="document.selection.empty()"   onbeforecopy="return false"--%>
</head>
<body  onload="PageLoad();">
    <form id="lt_form" method="post" runat="server">
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
                        <td class="Td_TabPage">
                            <div id="tab">
                                <ul>
                                    <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('63');">复式组合</a></li>
                                    <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('20');">复式</a></li>
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
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>复式</strong></td>
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
                                                        <table id="Table20" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_Chipsend">
                                                                <td style="width: 40px" class="td_Chipsend">
                                                                    金额:</td>
                                                                <td style="width: 80px">
                                                                    <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtbutje" runat="server" MaxLength="7" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                                                <td>
                                                                    <input id="ButSend" onclick="SendData();" type="button" class="button_Ok" value="发送" />
                                                                    <input onclick="return reset();" type="reset" class="button_Reset" value="取消" />
                                                                </td>
                                                                <td>
                                                                    <input id="TxtClassid" runat="server" type="text"  style="visibility: hidden;" />
                                                                        <asp:HyperLink ID="Labeltmfszh"   runat="server"  style="visibility: hidden;"> </asp:HyperLink></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table id="Table1" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_Chipsend">
                                                                    <td class="td_Chipsend" style="width: 40px">
                                                                        <asp:Label ID="LabeltmfszhCap" runat="server" Text="赔率："></asp:Label></td>
                                                                    <td style="width: 80px"><span id="LabelPl"></span>
                                                                        </td>
                                                                    <td colspan="2">
                                                                        &nbsp;
                                                                        <asp:Label ID="Label10" runat="server" Text="选号："></asp:Label>
                                                                        <asp:Label ID="CheckTmNo" runat="server"></asp:Label>
                                                                        <asp:Label ID="TmNum" runat="server"></asp:Label>
                                                                        <asp:Label ID="LabGroup" runat="server" Text="组成"></asp:Label>
                                                                        <asp:Label ID="GroupNum" runat="server"></asp:Label>
                                                                        <asp:Label ID="LabUnit" runat="server" Text="单。"></asp:Label>&nbsp;
                                                                        <input type="hidden" name="rs_r" size="10">
                                                                        <input type="hidden" name="rs_s" size="10">
                                                                        <input type="hidden" name="rs_num" size="5">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                    </td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        号码</td>
                                                    <td class="td_Head_set_cen">
                                                        选</td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        佰
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">0</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox0" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="0" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">1</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox1" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="1" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">2</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox2" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="2" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">3</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox3" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="3" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">4</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox4" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="4" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">5</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox5" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="5" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">6</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox6" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="6" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">7</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox7" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="7" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">8</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox8" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="8" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">9</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox9" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="9" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        拾
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">0</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox10" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="0" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">1</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox11" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="1" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">2</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox12" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="2" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">3</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox13" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="3" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">4</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox14" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="4" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">5</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox15" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="5" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">6</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox16" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="6" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">7</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox17" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="7" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">8</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox18" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="8" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">9</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox19" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="9" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="TmLabfont">
                                                        个
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">0</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox20" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="0" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">1</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox21" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="1" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">2</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox22" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="2" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">3</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox23" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="3" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">4</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox24" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="4" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">5</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox25" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="5" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">6</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox26" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="6" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">7</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox27" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="7" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">8</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox28" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="8" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">9</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="Checkbox29" type="checkbox" class="checkSy" name="Chktm" onclick="CheckNo(this);" value="9" /></td>
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
    </form>
</body>
</html>
