<%@ page language="c#" inherits="WebTm.ln_bbpl, App_Web_xt-ylzzg" enableEventValidation="false" %>

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

    <script language="JavaScript" type="text/javascript">
            if(self == top) location = '/';

            function onLoad()
            {
                lReftime ="<% =Request.QueryString["stoptime"] %>";
                AutoRefShow(lReftime,'');
            }
    </script>

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false"--%>
</head>
<body onload="onLoad();">
    <form id="Form1" method="post" runat="server">
        <div class="div_windows">
            <table id="Table3" class="table_windows" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td>
                            <table id="Table2" class="Page_Head" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td class="Page_HeadL">
                                    </td>
                                    <td class="Page_HeadM">
                                        <span class="img_message"> </span> 
                                        <span id="Span1">
                                            <marquee id="Marquee1" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);"
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
                        <td>
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
                                                                    <strong>半波</strong></td>
                                                                <td style="width: 250px">
                                                                    (<b>香港时间:</b>
                                                                    <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                                <td align="left" style="text-align: right;">
                                                                    <span><b><a class="click_text" onclick="location='?stoptime=' + document.getElementById('retime').value; ">
                                                                        刷新</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label></b>
                                                                        <select id="retime" runat="server" name="retime" onchange="location='?stoptime=' + document.getElementById('retime').value; ">
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
                                                        <table class="table_ChipInfo" id="Table1" border="0" cellspacing="1" cellpadding="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>期数:</strong>
                                                                    <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                                <td style="width: 250px">
                                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ln_bb.aspx">切换下注模式</asp:HyperLink></td>
                                                                <td style="text-align: right">
                                                                    <b>开奖日期: </b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table id="Table4" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tr>
                                                <td class="td_Head_set_cen" width="102">
                                                    半波</td>
                                                <td style="width: 171px" class="td_Head_set_cen">
                                                   赔率</td>
                                                <td width="436" colspan="10" class="td_Head_set_cen">
                                                    号码
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="102">
                                                    红单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labrdr" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">01</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">07</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">13</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">19</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">23</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">29</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">35</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">45</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    红双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labrsa" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">02</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">08</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">12</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">18</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">24</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">30</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">34</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">40</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">46</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    红大</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labrda" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">29</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">30</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">34</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">35</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">40</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">45</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">46</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    红小</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labrxa" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">01</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">02</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/r.gif">
                                                    <font class="ballfont">07</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">08</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">12</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">13</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">18</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">19</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">23</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/r.gif">
                                                    <font class="ballfont">24</font></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    绿单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labgdr" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">05</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <b><font class="ballfont">11</font></b></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <b><font class="ballfont">17</font></b></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">21</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">27</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">33</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">39</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">43</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    绿双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labgsa" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">06</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">16</font></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">22</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">28</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">32</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">38</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">44</font></td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    绿大</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labgda" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">27</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">28</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">32</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">33</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">38</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">39</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">43</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">44</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    绿小</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labgxa" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">05</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">06</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/g.gif">
                                                    <font class="ballfont">11</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">16</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">17</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">21</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                    <font class="ballfont">22</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/g.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    蓝单</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labbdr" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">03</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">09</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">15</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">25</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">31</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">37</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">41</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">47</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    蓝双</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labbsa" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">04</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">10</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">14</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">20</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">26</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">36</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">42</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">48</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    蓝大</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labbda" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">25</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">26</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">31</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">36</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">37</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">41</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">42</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">47</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">48</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    蓝小</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:HyperLink ID="Labbxa" runat="server">0</asp:HyperLink></td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">03</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">04</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="46" background="../imagesBall/b.gif">
                                                    <font class="ballfont">09</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">10</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">14</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">15</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                    <font class="ballfont">20</font>
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
                                                </td>
                                                <td class="Td_TmBallfont" width="47" background="../imagesBall/b.gif">
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
    </form>
</body>
</html>

