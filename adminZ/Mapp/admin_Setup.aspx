<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_admin_Setup, App_Web_i89w4dwr" validaterequest="false" enableEventValidation="false" %>

<html>
<head runat="server">
    <title></title>
    <link href="../style/members.css" rel="stylesheet" type="text/css">

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script src="../Scripts/Calendar30.js" type="text/javascript" language="javascript" charset="gb2312"></script>

    <script language="JavaScript" type="text/javascript">
        WebCalendar.yearFall   = 50;           //定义年下拉框的年差值
        WebCalendar.format     = "yyyy-mm-dd"; //回传日期的格式 | "2003-06-07"
        WebCalendar.timeShow   = false; //是否返回时间  |true
        WebCalendar.drag       = true;//是否允许拖动  | false
        WebCalendar.darkColor  = "#0000D0";    //控件的暗色
        WebCalendar.lightColor = "#FFFFFF";    //控件的亮色
        WebCalendar.btnBgColor = "#FFFFF5";    //控件的按钮背景色
        WebCalendar.wordColor  = "#000080";    //控件的文字颜色
        WebCalendar.wordDark   = "#DCDCDC";    //控件的暗文字颜色
        WebCalendar.dayBgColor = "#E6E6FA";    //日期数字背景色
        WebCalendar.todayColor = "#FF0000";    //今天在日历上的标示背景色
        WebCalendar.DarkBorder = "#D4D0C8";    //日期显示的立体表达色
    </script>

    <script language="JavaScript" type="text/javascript">
        //检查信用额度字元限制
        function CheckKey(){
                     if(event.keyCode == 13) return true;
	        if(!(event.keyCode > 47 && event.keyCode < 58 ) && event.keyCode != 46  && event.keyCode != 45  && event.keyCode != 43)
	                      {alert("信用额度只能输入数字!!"); return false;}
        }
        
        
        var lMessageStr ="<% =Request.QueryString["info"] %>";
		    if (lMessageStr !="")
		    {
                alert(lMessageStr);
            }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr>
                    <td class="td_banner_m">
                        &nbsp;&nbsp;<asp:Label ID="TableTit" runat="server"></asp:Label>管理 --管理设置 --<a href="WebUser.aspx"></a>
                    </td>
                </tr>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="mem_index_ctrl_space">
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table1" class="m_tab_ed" cellspacing="1" cellpadding="0" width="780" border="0">
            <tr class="m_title_edit">
                <td colspan="4">
                    <b>系统参数设置</b></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="140" style="width: 150px;">
                    公司名简称：</td>
                <td>
                    <input id="TxtCoName" type="text" maxlength="25" runat="server" /></td>
                <td class="m_mem_ed" style="width: 150px">
                    公司名全称：</td>
                <td>
                    <input id="TxtCoNameCaption" type="text" maxlength="25" runat="server" /></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed">
                    <div>
                        特码A到特码B赔率差：</div>
                </td>
                <td>
                    <input id="TxttmAtoBValue" type="text" maxlength="5" onkeypress="return CheckKey();" runat="server" /></td>
                <td class="m_mem_ed">
                    正码A到正码B赔率差：</td>
                <td>
                    <input id="TxtzmAtoBValue" type="text" maxlength="5" onkeypress="return CheckKey();" runat="server" /></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed">
                    信用额度：</td>
                <td>
                    <input id="TxtXynd" type="text" maxlength="11" onkeypress="return CheckKey();" runat="server" />
                    使用<input id="ChkTmsysUser" runat="server" type="checkbox" /></td>
                <td class="m_mem_ed">
                    福彩-信用额度：</td>
                <td>
                    <input id="TxtXyndD3" type="text" maxlength="11" onkeypress="return CheckKey();" runat="server" />
                    使用<input id="ChkD3sysUser" runat="server" type="checkbox" /></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed">
                    體彩-信用额度：</td>
                <td>
                    <input id="TxtXyndP3" type="text" maxlength="11" onkeypress="return CheckKey();" runat="server" />
                    使用<input id="ChkP3sysUser" runat="server" type="checkbox" /></td>
                <td class="m_mem_ed">
                    会员数量：</td>
                <td>
                    <input id="TxtVipNumber" type="text" maxlength="11" onkeypress="return CheckKey();" runat="server" /></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed">
                    会员注单打印：</td>
                <td>
                    充许<input id="ChkPrintUser" runat="server" type="checkbox" /></td>
                <td class="m_mem_ed">
                </td>
                <td>
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" rowspan="2">
                    系統維護時間：</td>
                <td colspan="3" style="height: 18px">
                    管理网开始：<asp:TextBox ID="TManageStrart" runat="server" name="Ttmwinstart" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="../images/calendar.gif"
                        OnClientClick="calendar(document.getElementById('TManageStrart'),event);return false;" />
                    <select id="TManageStrartTH" runat="server">
                        <option selected="selected">00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                    </select>
                    ：<select id="TManageStrartTM" runat="server">
                        <option selected="selected">00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                        <option>24</option>
                        <option>25</option>
                        <option>26</option>
                        <option>27</option>
                        <option>28</option>
                        <option>29</option>
                        <option>30</option>
                        <option>31</option>
                        <option>32</option>
                        <option>33</option>
                        <option>34</option>
                        <option>35</option>
                        <option>36</option>
                        <option>37</option>
                        <option>38</option>
                        <option>39</option>
                        <option>40</option>
                        <option>41</option>
                        <option>42</option>
                        <option>43</option>
                        <option>44</option>
                        <option>45</option>
                        <option>46</option>
                        <option>47</option>
                        <option>48</option>
                        <option>49</option>
                        <option>50</option>
                        <option>51</option>
                        <option>52</option>
                        <option>53</option>
                        <option>54</option>
                        <option>55</option>
                        <option>56</option>
                        <option>57</option>
                        <option>58</option>
                        <option>59</option>
                    </select>
                    结束：<asp:TextBox ID="TManageEnd" runat="server" name="TManageEnd" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="calendar(document.getElementById('TManageEnd'),event);return false;" />
                    <select id="TManageEndTH" runat="server">
                        <option selected="selected">00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                    </select>
                    ：<select id="TManageEndTM" runat="server">
                        <option selected="selected">00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                        <option>24</option>
                        <option>25</option>
                        <option>26</option>
                        <option>27</option>
                        <option>28</option>
                        <option>29</option>
                        <option>30</option>
                        <option>31</option>
                        <option>32</option>
                        <option>33</option>
                        <option>34</option>
                        <option>35</option>
                        <option>36</option>
                        <option>37</option>
                        <option>38</option>
                        <option>39</option>
                        <option>40</option>
                        <option>41</option>
                        <option>42</option>
                        <option>43</option>
                        <option>44</option>
                        <option>45</option>
                        <option>46</option>
                        <option>47</option>
                        <option>48</option>
                        <option>49</option>
                        <option>50</option>
                        <option>51</option>
                        <option>52</option>
                        <option>53</option>
                        <option>54</option>
                        <option>55</option>
                        <option>56</option>
                        <option>57</option>
                        <option>58</option>
                        <option>59</option>
                    </select>
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td colspan="3" style="height: 18px">
                    会员网开始：<asp:TextBox ID="TUserStrart" runat="server" name="Ttmwinstart" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/calendar.gif"
                        OnClientClick="calendar(document.getElementById('TUserStrart'),event);return false;" />
                    <select id="TUserStrartTH" runat="server">
                        <option selected="selected">00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                    </select>
                    ：<select id="TUserStrartTM" runat="server">
                        <option selected="selected">00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                        <option>24</option>
                        <option>25</option>
                        <option>26</option>
                        <option>27</option>
                        <option>28</option>
                        <option>29</option>
                        <option>30</option>
                        <option>31</option>
                        <option>32</option>
                        <option>33</option>
                        <option>34</option>
                        <option>35</option>
                        <option>36</option>
                        <option>37</option>
                        <option>38</option>
                        <option>39</option>
                        <option>40</option>
                        <option>41</option>
                        <option>42</option>
                        <option>43</option>
                        <option>44</option>
                        <option>45</option>
                        <option>46</option>
                        <option>47</option>
                        <option>48</option>
                        <option>49</option>
                        <option>50</option>
                        <option>51</option>
                        <option>52</option>
                        <option>53</option>
                        <option>54</option>
                        <option>55</option>
                        <option>56</option>
                        <option>57</option>
                        <option>58</option>
                        <option>59</option>
                    </select>
                    结束：<asp:TextBox ID="TUserEnd" runat="server" name="TUserEnd" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="calendar(document.getElementById('TUserEnd'),event);return false;" />
                    <select id="TUserEndTH" runat="server">
                        <option selected="selected">00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                    </select>
                    ：<select id="TUserEndTM" runat="server">
                        <option selected="selected">00</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                        <option>24</option>
                        <option>25</option>
                        <option>26</option>
                        <option>27</option>
                        <option>28</option>
                        <option>29</option>
                        <option>30</option>
                        <option>31</option>
                        <option>32</option>
                        <option>33</option>
                        <option>34</option>
                        <option>35</option>
                        <option>36</option>
                        <option>37</option>
                        <option>38</option>
                        <option>39</option>
                        <option>40</option>
                        <option>41</option>
                        <option>42</option>
                        <option>43</option>
                        <option>44</option>
                        <option>45</option>
                        <option>46</option>
                        <option>47</option>
                        <option>48</option>
                        <option>49</option>
                        <option>50</option>
                        <option>51</option>
                        <option>52</option>
                        <option>53</option>
                        <option>54</option>
                        <option>55</option>
                        <option>56</option>
                        <option>57</option>
                        <option>58</option>
                        <option>59</option>
                    </select>
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" style="height: 18px">
                    A到B賠率差說明：</td>
                <td colspan="3" style="height: 18px">
                    特码A到特码B赔率差或正码A到正码B赔率差如果设置为0，则在调整A赔率时B赔率将不跟随波动。<br />
                    特码A到特码B赔率差如果设置为5，则在调整特码A赔率时特码B赔率将等于(特码A赔率 + 5)。<br />
                    正码A到正码B赔率差如果设置为0.61，则在调整正码A赔率时正码B赔率将等于(正码A赔率 + 0.61)。</td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed" rowspan="4">
                    服务邮箱：</td>
                <td>
                    SMTP邮箱<input id="TxtEMailSmtp" type="text" maxlength="50" runat="server" size="30" /></td>
                <td colspan="2">
                    邮件主题:<input id="TxtEMailTitle" type="text" maxlength="25" runat="server" size="50" /></td>
            </tr>
            <tr class="mem_index_cen">
                <td>
                    EMail地址:<input id="TxtEMailAdr" type="text" maxlength="50" runat="server" size="30" /></td>
                <td colspan="2" rowspan="3">
                    邮件内容:<textarea id="TxtEMailContent" runat="server" autocomplete="off" cols="20" name="WebChat1_chattextbox" rows="2" style="border-right: black 1px solid; border-top: black 1px solid;
                        border-left: black 1px solid; width: 100%; border-bottom: black 1px solid; height: 100px"></textarea><br />
                    *VipId*-代表用户注册分配的帐号!</td>
            </tr>
            <tr class="mem_index_cen">
                <td>
                    EMail帐号:<input id="TxtEMailUser" type="text" maxlength="50" runat="server" size="30" /></td>
            </tr>
            <tr class="mem_index_cen">
                <td>
                    EMail密码:<input id="TxtEMailPwd" type="text" maxlength="50" runat="server" size="30" /></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed" rowspan="1" style="height: 15px">
                    注册会员:</td>
                <td>
                    添加帐号:自动<input id="RadAutoVipuesrAddY" type="radio" name="AutoVipuesrAdd" runat="server" />手动<input id="RadAutoVipuesrAddN" type="radio" name="AutoVipuesrAdd" runat="server" /></td>
                <td colspan="2" rowspan="1" style="height: 15px">
                    默认代理商帐号:<input id="TxtDefaultAgent" type="text" maxlength="25" runat="server" size="10" />流水号:
                    <input id="TxtAgentValue" type="text" maxlength="25" runat="server" size="10" /></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed">
                </td>
                <td colspan="3">
                    <asp:Button ID="cmdOKy" runat="server" OnClick="cmdOKy_Click" Text="确定" Width="80px" />
                    <input id="CmdCancel" runat="server" name="act23" style="width: 80px" type="button" value="返回" /></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed">
                    公司協議與規則：</td>
                <td colspan="3">
                    <textarea id="TxtCoAgreement" runat="server" autocomplete="off" cols="20" name="WebChat1_chattextbox" rows="2" style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid;
                        width: 100%; border-bottom: black 1px solid; height: 100px"></textarea></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed">
                    公司規則說明：</td>
                <td colspan="3">
                    <textarea id="TxtCoBylawTM" runat="server" autocomplete="off" cols="20" name="WebChat1_chattextbox" rows="2" style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid;
                        width: 100%; border-bottom: black 1px solid; height: 100px"></textarea></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed">
                    福彩規則說明：</td>
                <td colspan="3">
                    <textarea id="TxtCoBylawD3" runat="server" autocomplete="off" cols="20" name="WebChat1_chattextbox" rows="2" style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid;
                        width: 100%; border-bottom: black 1px solid; height: 100px"></textarea></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed">
                    體彩規則說明：</td>
                <td colspan="3">
                    <textarea id="TxtCoBylawP3" runat="server" autocomplete="off" cols="20" name="WebChat1_chattextbox" rows="2" style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid;
                        width: 100%; border-bottom: black 1px solid; height: 100px"></textarea></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed" style="height: 25px">
                </td>
                <td colspan="3" style="height: 25px">
                    <asp:Button ID="ButSetupValue" runat="server" OnClick="ButSetupValue_Click" Text="恢复默认值" />
                    <asp:Button ID="ButInfo" runat="server" OnClick="ButInfo_Click" Text="确定" />
                </td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed">
                    註冊碼：</td>
                <td colspan="3">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 100%">
                                <a name="20"></a>
                                <textarea id="TxtLoginCode" runat="server" autocomplete="off" cols="20" style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid; width: 100%;
                                    border-bottom: black 1px solid;" rows="2"></textarea></td>
                            <td>
                                <asp:Button ID="ButLoginCode" runat="server" OnClick="ButLoginCode_Click" Text="确定" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
