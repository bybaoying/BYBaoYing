<%@ page language="c#" inherits="adminZ_WebOter_WebAwardNext, App_Web_hmaezzcm" async="true" enableEventValidation="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title> 
    <link href="../style/members.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>
    
    <script src="../Scripts/Calendar30.js" type="text/javascript" language="javascript" charset="gb2312"></script>
    <script src="../../adminZ/Scripts/JS_Post_Manage_Data.js" type="text/javascript" language="javascript" charset="gb2312"></script>
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
            function tmwinMessage(ContName)
            {
                var lGT="<% =Request.QueryString["gt"] %>";
                if (lGT.toLowerCase()=="d3")
                {
                    document.getElementById(ContName).value = "欢迎光临！ 北京3D彩第[qm]期开奖时间为[dw]！本公司开盘於[ds]至[de]，如有异动，一切时间以北京福利彩票管理中心为准！";
                }
                else
                {
                    document.getElementById(ContName).value = "欢迎光临！ 北京P3彩第[qm]期开奖时间为[dw]！本公司开盘於[ds]至[de]，如有异动，一切时间以北京体育彩票管理中心为准！";
                }
 
            }
        function ShowPage_add()
        {
            window.location='WebAwardDateSetup.aspx?gt=' + "<% =Request.QueryString["gt"] %>"   ;
        }    
        function del_WinNoRow(vSysId)
        {
            var lGT="<% =Request.QueryString["gt"] %>";
            if (lGT.toLowerCase()=="d3")
            {
                Row_del("del_winno_d3", vSysId  ,"row_" + vSysId );
            }
            else
            {
                Row_del("del_winno_p3", vSysId  ,"row_" + vSysId );
            }
            
        }         
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <div class="divPropertyBar" id="line_window" style="visibility: hidden; position: absolute"> 
        <iframe id="Post_Manage_Data" name="Post_Manage_Data" src="about:blank" width="233" height="2" frameborder="0"
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
                    <asp:Label ID="LabGameCaption" runat="server"></asp:Label>-下期开奖信息设置
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="100px" style="text-align: left">
                    下期期数：</td>
                <td width="150px">
                    <asp:TextBox ID="Ttmwinno" runat="server"></asp:TextBox></td>
                <td class="m_mem_ed" width="150px" style="text-align: left">
                    开奖时间：</td>
                <td style="width: 266px">
                    <asp:TextBox ID="Ttmwindate" name="Ttmwindate" runat="server" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="calendar(document.getElementById('Ttmwindate'),event);return false;" />
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
                <td class="m_mem_ed" style="text-align: left; height: 18px;">
                    下期名称：
                </td>
                <td style="height: 18px">
                    <asp:TextBox ID="TtmwinName" runat="server"></asp:TextBox></td>
                <td class="m_mem_ed" style="text-align: left; height: 18px;">
                    服务器时间：
                </td>
                <td id="ServerDate" runat="server" style="width: 266px; height: 18px;">
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" style="text-align: left">
                    下注时间：</td>
                <td colspan="3" style="height: 25px">
                    <asp:TextBox ID="Ttmwinstart" name="Ttmwinstart" runat="server" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="calendar(document.getElementById('Ttmwinstart'),event);return false;" />
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
                    &nbsp;<font face="宋体">至 </font>
                    <asp:TextBox ID="Ttmwinend" name="Ttmwinend" runat="server" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="calendar(document.getElementById('Ttmwinend'),event);return false;" />
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
                    <asp:TextBox ID="Ttmwinmemo" runat="server" Width="100%" Height="88px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" style="text-align: left">
                    管理<br />
                    公告信息：&nbsp;<br />
                    <input id="Button3" type="button" value="刷新公告" onclick="tmwinMessage('TtmManageMemo');" /></td>
                <td colspan="3">
                    <asp:TextBox ID="TtmManageMemo" runat="server" TextMode="MultiLine" Width="100%" Height="88px"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" style="text-align: left">
                    自动开奖：</td>
                <td colspan="3">
                    开奖网址：<input id="TxtUrlWinNoInfo" runat="server" maxlength="250" size="50" type="text" />(不改勿添). 开码生效<input id="ChkAutoextPlayWin" runat="server" type="checkbox" />信用清零<input id="ChkAutoextClearZreo"
                        runat="server" type="checkbox" /></td>
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
                    <asp:Button ID="ButData" runat="server" Width="91px" Text="保存" OnClick="ButData_Click"></asp:Button>
                    <input id="CmdCancel" runat="server" name="act23" style="width: 91px" type="button" value="返回" /></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed" style="text-align: left">
                    说明:</td>
                <td align="left" colspan="3">
                    下期期数:如今年是2093年的第一期,则填写"93001"
                    <br />
                    下期名称:如今年是2093年的第一期,则填写"93001"<br />
                    开奖时间:为球号开码的时间:如2093-01-01 20:30<br />
                    下注时间:为每期的投注时间.到下注时间地停止时间会自动封盘.如想提前封盘,修改下注时间地停止时间.&nbsp;<br />
                    公告信息:字母代表如下：[qm]=下期名称,[dw]=开奖时间,[ds]=下注开盘时间,至[de]=下注封盘时间!</td>
            </tr>
        </table>
        <table id="TableA" border="0" cellpadding="0" cellspacing="1" class="m_tab_ed">
            <tr class="m_title_edit2">
                <td colspan="7">
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
                    封盘时间</td>
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
