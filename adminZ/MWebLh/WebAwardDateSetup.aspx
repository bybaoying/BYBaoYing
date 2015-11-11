<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_WebAwardDateSetup, App_Web_ruumpoam" enableEventValidation="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>开奖日期预设置</title>
    
    <link href="../style/members.css" rel="stylesheet" type="text/css" />

    <script src="../Scripts/Calendar30.js" type="text/javascript" language="javascript" charset="gb2312"></script>
    <script language="JavaScript" type="text/javascript" >
    

       
//        alert(location.hreforlocation.replace());
        
//        alert(document.UrlReferrer);
//        document.getElementById('CmdCancel').setAttribute("onclick", "document.location='" + Request.UrlReferrer + "'") 
        function ButCheck() 
        {
            return true;
        }      
        function PageLoad()
        { 
//             if (("<% =Request.UrlReferrer %>" != "<% =Request.Url %>") & ('<% = Request.UrlReferrer !=null %>'=='True' )) 
//            {

//                document.getElementById('CmdCancel').setAttribute("onclick", "document.location='<% =Request.UrlReferrer %>'") ;
//                
//            }              
        }            
             
    </script>
</head>
<body onload="PageLoad();">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="td_banner_m">
                    <td>
                        &nbsp;&nbsp;开奖日期预设置:
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
                    开奖日期预设置
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
                        <option selected="selected">21</option>
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
                        <option selected="selected">30</option>
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
                    开盘时间：
                    <asp:TextBox ID="Ttmwinstart" runat="server" name="Ttmwinstart" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="calendar(document.getElementById('Ttmwinstart'),event);return false;" />&nbsp;
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
                        <option selected="selected">17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                    </select>
                    ：<select id="TtmwinstartTM" runat="server">
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
                <td colspan="3" style="height: 25px">
                    <span style="font-family: Arial; background-color: #f2faff">正码封盘：</span>
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
                        <option selected="selected">21</option>
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
                        <option selected="selected">30</option>
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
                    特码封盘：
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
                        <option selected="selected">21</option>
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
                        <option selected="selected">35</option>
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
            <tr class="mem_index_cen">
                <td class="m_mem_ed" style="text-align: left">
                    </td>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="ButData" runat="server" Width="91px" Text="保存" OnClick="ButData_Click" OnClientClick="return ButCheck();"></asp:Button>
                    <input id="CmdCancel"  name="act23"  style="width: 91px" type="button" value="返回" runat="server" /></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed" style="text-align: left">
                    说明:</td>
                <td align="left" colspan="3">
                    下期期数:如今年是2093年的第一期,则填写"93001"
                    <br />
                    下期名称:如今年是2093年的第一期,则填写"001"<br />
                    开奖时间:为球号开码的时间:如2010-01-01 21:30<br />
                    下注时间:为每期的投注时间.到下注时间地停止时间会自动封盘.如想提前封盘,修改下注时间地停止时间.&nbsp;</td>
            </tr>
        </table>
   
    </form>
</body>
</html>
