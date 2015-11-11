<%@ page language="c#" inherits="WebTm.ln_Tmpl, App_Web_xt-ylzzg" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_TM.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../js/AutoRefreshShow.js"></script>
    <script language="javascript" type="text/javascript" src="../Scripts/JS_Page_tab.js"></script>

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';

        function onLoad()
        {
            lReftime ="<% =Request.QueryString["stoptime"] %>";
            AutoRefShow(lReftime,'Classid=' + "<% =Request.QueryString["Classid"] %>" + '&');
        }
        function openLink()
        {
            location='?Classid=' + "<% =Request.QueryString["Classid"] %>" + '&stoptime=' + document.getElementById('retime').value; 
        }
        function chanagePage()
        {
            location='lg_tmpl.aspx?Classid=' + "<% =Request.QueryString["Classid"] %>" ;
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
    </script>

</head>
<%--	 oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
        ondragstart="return   false"     
        onselectstart   ="return   false"   onselect="document.selection.empty()"     
        oncopy="document.selection.empty()"   onbeforecopy="return false" onmouseup="document.selection.empty()" --%>
<body onload="onLoad(); ">
    <form id="Form1" method="post" runat="server">
        <div class="div_windows">
            <table id="Table3" class="table_windows" cellspacing="0" cellpadding="0">
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
                        <td class="Td_TabPage"  >
                            <div id="tab">
                                <ul >
                                    <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage(1);">特码A</a></li>
                                    <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage(2);">特码B</a></li>
                                    <li id="space" ><span></span></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Td_Table">
                            <table id="TableKK" cellspacing="0" cellpadding="0" border="0" runat="server">
                                <tr>
                                    <td>
                                        <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>特码 </strong>
                                                                </td>
                                                                <td style="width: 250px">
                                                                    <span>(<b>香港时间:</b>
                                                                        <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</span>
                                                                </td>
                                                                <td style="text-align: right;">
                                                                    <span><b><a class="click_text" onclick="openLink();">刷新</a>:<asp:Label ID="LabReftime"
                                                                        runat="server"></asp:Label></b>&nbsp;
                                                                        <select id="retime" runat="server" name="retime" onchange="openLink();">
                                                                            <option selected="selected" value="-1">不刷新</option>
                                                                            <option value="20">20 sec</option>
                                                                            <option value="40">40 sec</option>
                                                                            <option value="60">60 sec</option>
                                                                        </select>
                                                                    </span>
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
                                                                    <asp:HyperLink ID="linkZmGo" runat="server" NavigateUrl="javascript:chanagePage();">切换下注模式</asp:HyperLink>
                                                                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                                    <asp:HyperLink ID="LinkChipKS" runat="server" NavigateUrl="FT_order_Tm.aspx?TmClassid=01"
                                                                        Target="bbnet_mem_order">快速下注</asp:HyperLink>
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <b>开奖日期: </b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label>&nbsp;</td>
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
                                                    <asp:Label ID="LabTmwinje" runat="server" name="LabTmwinje"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="td_Caption_set">
                                                    最低限额</td>
                                                <td style="width: 146px;" class="td_Center_set">
                                                    <asp:Label ID="LabDje" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单注限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabTje" runat="server"></asp:Label></td>
                                                <td class="td_Caption_set">
                                                    单项限额</td>
                                                <td class="td_Center_set">
                                                    <asp:Label ID="LabCTje" runat="server"></asp:Label></td>
                                            </tr>
                                        </table>
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    号码</td>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    号码</td>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    号码</td>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    号码</td>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    赔率</td>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    号码</td>
                                                <td class="td_Head_set_cen" style="width: 66px">
                                                    赔率</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" background="../imagesBall/r.gif" style="width: 66px">
                                                    <font class="ballfont">01</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label1" runat="server">0</asp:HyperLink>
                                                </td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">11</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label11" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">21</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label21" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">31</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label31" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">41</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label41" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" background="../imagesBall/r.gif" style="width: 66px" id="TD2">
                                                    <font class="ballfont">02</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label2" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">12</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label12" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">22</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label22" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">32</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label32" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">42</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label42" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" background="../imagesBall/b.gif" style="width: 66px">
                                                    <font class="ballfont">03</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label3" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">13</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label13" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">23</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label23" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">33</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label33" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">43</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label43" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" style="width: 65px;" background="../imagesBall/b.gif" height="28">
                                                    <font class="ballfont">04</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label4" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif" height="28">
                                                    <font class="ballfont">14</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label14" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif" height="28">
                                                    <font class="ballfont">24</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label24" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif" height="28">
                                                    <font class="ballfont">34</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label34" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif" height="28">
                                                    <font class="ballfont">44</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label44" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" background="../imagesBall/g.gif" style="width: 66px">
                                                    <font class="ballfont">05</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label5" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">15</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label15" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">25</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label25" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">35</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label35" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">45</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label45" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" background="../imagesBall/g.gif" style="width: 66px">
                                                    <font class="ballfont">06</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label6" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">16</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label16" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">26</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label26" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">36</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label36" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">46</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label46" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" background="../imagesBall/r.gif" style="width: 66px">
                                                    <font class="ballfont">07</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label7" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">17</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label17" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">27</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label27" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">37</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label37" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">47</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label47" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" background="../imagesBall/r.gif" style="width: 66px">
                                                    <font class="ballfont">08</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label8" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">18</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label18" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">28</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label28" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">38</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label38" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">48</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label48" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" background="../imagesBall/b.gif" style="width: 66px">
                                                    <font class="ballfont">09</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label9" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">19</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label19" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">29</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label29" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">39</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label39" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/g.gif">
                                                    <font class="ballfont">49</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label49" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="Td_TmBallfont" background="../imagesBall/b.gif" style="width: 66px">
                                                    <font class="ballfont">10</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label10" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/b.gif">
                                                    <font class="ballfont">20</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label20" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">30</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label30" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px" background="../imagesBall/r.gif">
                                                    <font class="ballfont">40</font></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Label40" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" style="width: 66px">
                                                    &nbsp;</td>
                                                <td class="Td_TmPlfont">
                                                </td>
                                            </tr>
                                        </table>
                                        <table id="Table4" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="82">
                                                    特单</td>
                                                <td width="82" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labeltmdr" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="82">
                                                    特双</td>
                                                <td width="82" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labeltmsa" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="82">
                                                    特大</td>
                                                <td width="82" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labeltmda" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="82">
                                                    特小</td>
                                                <td width="83" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labeltmxa" runat="server">0</asp:HyperLink></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="82">
                                                    合单</td>
                                                <td width="82" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labeltmhdr" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="82">
                                                    合双</td>
                                                <td width="82" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labeltmhsa" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="82">
                                                </td>
                                                <td width="82" class="Td_TmPlfont">
                                                </td>
                                                <td class="TmLabfont" width="82">
                                                </td>
                                                <td width="83" class="Td_TmPlfont">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="82">
                                                    红波</td>
                                                <td width="82" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labeltmr" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="82">
                                                    绿波</td>
                                                <td width="82" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labeltmg" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="82">
                                                    蓝波</td>
                                                <td width="82" class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labeltmb" runat="server">0</asp:HyperLink></td>
                                                <td class="TmLabfont" width="82">
                                                </td>
                                                <td width="83" class="Td_TmPlfont">
                                                </td>
                                            </tr>
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

