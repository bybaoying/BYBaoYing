<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_WebAwardNext, App_Web_wtmgu-sw" async="true" enableEventValidation="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     
    <link href="../style/members.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script src="../Scripts/Calendar30.js" type="text/javascript" language="javascript" charset="gb2312"></script>
    <script src="../../adminZ/Scripts/JS_Post_Manage_Data.js" type="text/javascript" language="javascript" charset="gb2312"></script>
    
 
    <%--<script language="JavaScript" type="text/javascript" src="../Scripts/Calendar30.js"></script>--%>
    <%--      
<script language="JavaScript" type="text/javascript" >
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
      
      --%>
    <!--//-->

    <script language="JavaScript" type="text/javascript">
	        function showsubmenu(sid)
            {
                whichEl = eval(sid);

                if (whichEl.style.display == "none")
                {
                    eval( sid + ".style.display=\"\";");
                }
                else
                {
//                        eval( sid + ".style.display=\"none\";");
                }

            }
            
            function s(sid)
            {
                whichEl = eval(sid);

                    alert( sid.SelectedDate);

            }
            
            
            function ButCheck(sid)
            {
//                whichEl = eval(sid);

//                    alert( sid.SelectedDate);
                    
                var tmwindate = document.getElementById('Ttmwinstart').value + " " + document.getElementById('TtmwinstartTH').value + ":" + document.getElementById('TtmwinstartTM').value;
                var tmwindatezmend = document.getElementById('Ttmwinzmend').value + " " + document.getElementById('TtmwinzmendTH').value + ":" + document.getElementById('TtmwinzmendTM').value;
                var tmwindateend = document.getElementById('Ttmwinend').value + " " + document.getElementById('TtmwinendTH').value + ":" + document.getElementById('TtmwinendTM').value;
                
                if ( tmwindate > tmwindatezmend || tmwindate > tmwindateend)
                {
                    alert( '请检开盘与封盘的设置!开盘时间应小于封盘时间.' );
                    return false;
                 }
                if ( tmwindatezmend > tmwindateend)
                {
                    alert( '请检开盘与封盘的设置!正码封盘时间应小于特码封盘时间.' );
                    return false;
                 }
//                alert( tmwindate > tmwindatezmend );
                return true;
            }
            function tmwinMessage(ContName)
            {


                
                var messageStr = "欢迎光临！ 香港六合彩第[qm]期开奖时间为[dw]！本公司开盘於[ds]至[de]，如有异动，一切时间以香港马会为准！" ;
//                alert(messageStr);
                document.getElementById(ContName).value=messageStr;
            }
 
        function ShowPage_add()
        {
            window.location='WebAwardDateSetup.aspx';
        }        
        function del_WinNoRow(vSysId)
        {
  
            Row_del("del_winno_tm", vSysId  ,"row_" + vSysId );
        } 

 
    </script>

    
</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <div class="divPropertyBar" id="line_window" style="visibility: hidden; position: absolute"> 
        <iframe id="Post_Manage_Data" name="Post_Manage_Data" src="about:blank" width="233" height="8" frameborder="0"
            scrolling="no"></iframe>
    </div>
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="td_banner_m">
                    <td>
                        &nbsp;&nbsp;下期开奖信息设置:
                    </td>
                </tr>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table1" class="m_tab_ed">
            <tr>
                <td class="m_title_edit" colspan="4">
                    下期开奖信息设置
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="100px" style="text-align: left">
                    下期期数：</td>
                <td width="150px">
                    <asp:TextBox ID="Ttmwinno" runat="server" MaxLength="5"></asp:TextBox></td>
                <td class="m_mem_ed" width="150px" style="text-align: left">
                    开奖时间：</td>
                <td style="width: 266px">
                    <asp:TextBox ID="Ttmwindate" name="Ttmwindate" runat="server" Width="101px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="javascript:calendar(document.getElementById('Ttmwindate'),event);return false;" />
                    <select id="TtmwindateTH" runat="server">
                        <option>00</option>
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
                    ：<select id="TtmwindateTM" runat="server">
                        <option>00</option>
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
                <td class="m_mem_ed" style="text-align: left">
                    下期名称：
                </td>
                <td>
                    <asp:TextBox ID="TtmwinName" runat="server" MaxLength="6"></asp:TextBox></td>
                <td class="m_mem_ed" style="text-align: left">
                    服务器时间：
                </td>
                <td id="ServerDate" runat="server" style="width: 266px">
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" rowspan="2" style="text-align: left">
                    开盘与封盘：</td>
                <td colspan="3" style="height: 25px">
                    开盘时间：<asp:TextBox ID="Ttmwinstart" runat="server" name="Ttmwinstart" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/calendar.gif"
                        OnClientClick="calendar(document.getElementById('Ttmwinstart'),event);return false;" />
                    <select id="TtmwinstartTH" runat="server">
                        <option>00</option>
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
                    ：<select id="TtmwinstartTM" runat="server">
                        <option>00</option>
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
                <td colspan="3" style="height: 25px">
                    <span style="font-family: Arial; background-color: #f2faff">正码封盘：</span><asp:TextBox ID="Ttmwinzmend" runat="server" name="Ttmwinstart" Width="101px"></asp:TextBox><asp:ImageButton
                        ID="ImageButton4" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="calendar(document.getElementById('Ttmwinzmend'),event);return false;" />
                    <select id="TtmwinzmendTH" runat="server">
                        <option>00</option>
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
                    ：<select id="TtmwinzmendTM" runat="server">
                        <option>00</option>
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
                    特码封盘：<asp:TextBox ID="Ttmwinend" name="Ttmwinend" runat="server" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="calendar(document.getElementById('Ttmwinend'),event);return false;" />
                    <select id="TtmwinendTH" runat="server">
                        <option>00</option>
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
                    ：<select id="TtmwinendTM" runat="server">
                        <option>00</option>
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
                <td class="m_mem_ed" style="text-align: left">
                    会员<br />
                    公告信息：&nbsp;<br />
                    <input id="Button1" type="button" value="刷新公告" onclick="tmwinMessage('Ttmwinmemo');" />
                </td>
                <td colspan="3">
                    <asp:TextBox ID="Ttmwinmemo" runat="server" Width="100%" Height="58px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" style="text-align: left; height: 18px;">
                    管理<br />
                    公告信息：&nbsp;<br />
                    <input id="Button3" type="button" value="刷新公告" onclick="tmwinMessage('TtmManageMemo');" /></td>
                <td colspan="3" style="height: 18px">
                    <asp:TextBox ID="TtmManageMemo" runat="server" TextMode="MultiLine" Width="100%" Height="58px"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" rowspan="2" style="text-align: left">
                    自动开奖：</td>
                <td colspan="3">
                    开奖网址：<input id="TxtUrlWinNoInfo" runat="server" maxlength="250" size="50" type="text" />(不改勿添). </td>
            </tr>
            <tr class="m_bc_ed">
                <td colspan="3">
                    自动开奖<input id="ChkAutoextPlayWin" runat="server"  type="checkbox" title="打勾,使自动开奖生效!" />信用清零<input id="ChkAutoextClearZreo"
                        runat="server" type="checkbox" title="打勾,自动开奖后信用额度清零!" />
                    延时时间:<input id="TxtDelayTime" runat="server" maxlength="2" size="2" title="自动开码后,延时时间再计算奖金!" type="text" />(分)</td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" style="text-align: left">
                    管理时间：
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TManageDate" runat="server"></asp:TextBox>
                    <asp:Label ID="labMsgbox" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed" style="text-align: left">
                    <asp:Button ID="ButEssage" runat="server" Text="仅公告保存" OnClick="ButEssage_Click" /></td>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="ButData" runat="server" Width="91px" Text="保存" OnClick="ButData_Click" OnClientClick="return ButCheck();"></asp:Button>
                    <input id="CmdCancel" runat="server" name="act23" style="width: 91px" type="button" value="返回" /></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed" style="text-align: left">
                    说明:</td>
                <td align="left" colspan="3">
                    下期期数:如今年是2093年的第一期,则填写"93001"
                    <br />
                    下期名称:如今年是2093年的第一期,则填写"001"<br />
                    开奖时间:为球号开码的时间:如2093-01-01 21:30<br />
                    下注时间:为每期的投注时间.到下注时间地停止时间会自动封盘.如想提前封盘,修改下注时间地停止时间.&nbsp;<br />
                    公告信息:字母代表如下：[qm]=下期名称,[dw]=开奖时间,[ds]=下注开盘时间,至[de]=下注封盘时间(特码封盘时间)!</td>
            </tr>
        </table>
        <table id="TableA" border="0" cellpadding="0" cellspacing="1" class="m_tab_ed">
            <tr class="m_title_edit2">
                <td colspan="8">
                    开奖日期预设置</td>
                <td colspan="1">
                    <input id="ButAdd" type="button" value="添加" onclick="JavaScript:ShowPage_add()" /></td>
            </tr>
            <tr class="m_title_edit2">
                <td style="height: 15px">
                    下期期数</td>
                <td style="height: 15px">
                    下期名称</td>
                <td style="height: 15px">
                    开奖时间</td>
                <td style="height: 15px">
                    开盘时间</td>
                <td style="height: 15px">
                    正码封盘时间</td>
                <td style="height: 15px">
                    特码封盘时间</td>
                <td style="height: 15px">
                    管理员</td>
                <td style="height: 15px">
                    已执行</td>
                <td style="height: 15px">
                    操作</td>
            </tr>
            <tbody id="MyTbody" runat="server">
            </tbody>
        </table>
    </form>
</body>
</html>
