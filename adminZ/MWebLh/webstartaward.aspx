<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_WebStartAward, App_Web_ruumpoam" enableEventValidation="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>WebStartAward</title>
    <meta content="JavaScript" name="vs_defaultClientScript"/>
    <link href="../style/members.css" rel="stylesheet" type="text/css"/>
</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="td_banner_m">
                    <td>
                        &nbsp;&nbsp;现在开奖摇珠:
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
        <table id="Table2" class="m_tab_ed">
            <tr class="mem_index_cen">
                <td>
                    <table id="TableA" width="408" border="0" align="center" runat="server" style="background-color: #330000">
                        <tr>
                            <td class="ball_td" align="center">
                                <asp:TextBox ID="TmNoN" runat="server" Width="14px" Visible="False">0</asp:TextBox>&nbsp;</td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30" id="TD1" runat="server">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="01">01</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30">
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="02">02</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="03">03</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="34">
                                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="04">04</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="31">
                                <asp:LinkButton ID="LinkButton5" runat="server" CommandName="05">05</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="31">
                                <asp:LinkButton ID="LinkButton6" runat="server" CommandName="06">06</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton7" runat="server" CommandName="07">07</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton8" runat="server" CommandName="08">08</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton9" runat="server" CommandName="09">09</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton10" runat="server" CommandName="10">10</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton11" runat="server" CommandName="11">11</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30">
                                <asp:LinkButton ID="LinkButton12" runat="server" CommandName="12">12</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30">
                                <asp:LinkButton ID="LinkButton13" runat="server" CommandName="13">13</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="34">
                                <asp:LinkButton ID="LinkButton14" runat="server" CommandName="14">14</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton15" runat="server" CommandName="15">15</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="31">
                                <asp:LinkButton ID="LinkButton16" runat="server" CommandName="16">16</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="31">
                                <asp:LinkButton ID="LinkButton17" runat="server" CommandName="17">17</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton18" runat="server" CommandName="18">18</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton19" runat="server" CommandName="19">19</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton20" runat="server" CommandName="20">20</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton21" runat="server" CommandName="21">21</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton22" runat="server" CommandName="22">22</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30">
                                <asp:LinkButton ID="LinkButton23" runat="server" CommandName="23">23</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="34">
                                <asp:LinkButton ID="LinkButton24" runat="server" CommandName="24">24</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton25" runat="server" CommandName="25">25</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton26" runat="server" CommandName="26">26</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="31">
                                <asp:LinkButton ID="LinkButton27" runat="server" CommandName="27">27</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="31">
                                <asp:LinkButton ID="LinkButton28" runat="server" CommandName="28">28</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton29" runat="server" CommandName="29">29</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton30" runat="server" CommandName="30">30</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton31" runat="server" CommandName="31">31</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton32" runat="server" CommandName="32">32</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton33" runat="server" CommandName="33">33</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="34">
                                <asp:LinkButton ID="LinkButton34" runat="server" CommandName="34">34</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton35" runat="server" CommandName="35">35</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton36" runat="server" CommandName="36">36</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton37" runat="server" CommandName="37">37</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="31">
                                <asp:LinkButton ID="LinkButton38" runat="server" CommandName="38">38</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="31">
                                <asp:LinkButton ID="LinkButton39" runat="server" CommandName="39">39</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton40" runat="server" CommandName="40">40</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton41" runat="server" CommandName="41">41</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton42" runat="server" CommandName="42">42</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton43" runat="server" CommandName="43">43</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="34">
                                <asp:LinkButton ID="LinkButton44" runat="server" CommandName="44">44</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton45" runat="server" CommandName="45">45</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="31">
                                <asp:LinkButton ID="LinkButton46" runat="server" CommandName="46">46</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton47" runat="server" CommandName="47">47</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="31">
                                <asp:LinkButton ID="LinkButton48" runat="server" CommandName="48">48</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="31">
                                <asp:LinkButton ID="LinkButton49" runat="server" CommandName="49">49</asp:LinkButton></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="mem_index_cen">
                <td>
                    <asp:Button ID="TmCancel" runat="server" Width="72px" Text="取消" OnClick="TmCancel_Click"></asp:Button>
                    <asp:Button ID="TmOk" runat="server" Width="72px" Text="完成" ToolTip="开奖结束，特码已产生，不能进行修改" OnClick="TmOk_Click"></asp:Button></td>
            </tr>
            <tr class="mem_index_cen">
                <td>
                    <asp:Label ID="labMsgbox" runat="server" ForeColor="Red">注意：点击[完成]按钮后开奖结果不允许修改，只能进行计算奖金。请您务必慎重！</asp:Label>
                </td>
            </tr>
        </table>
        <table id="Table1" class="m_tab_ed" runat="server">
            <tr class="m_title_edit">
                <td colspan="13" height="30">
                    <p align="center">
                        开奖彩球号码</p>
                </td>
            </tr>
            <tr class="m_title_edit">
                <td align="center">
                    正码一</td>
                <td align="center">
                    正码二</td>
                <td align="center">
                    正码三</td>
                <td align="center">
                    正码四</td>
                <td align="center">
                    正码五</td>
                <td align="center">
                    正码六</td>
                <td align="center">
                    特别号</td>
                <td align="center">
                    总合</td>
                <td align="center" width="80" colspan="2">
                    特别码大小单双</td>
                <td align="center">
                    合数</td>
                <td align="center" width="80" colspan="2">
                    总和大小单双</td>
            </tr>
            <tr class="m_rig">
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox2" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox3" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox4" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox5" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox6" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox7" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmSum" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmDa" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmXa" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmHeda" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmSumda" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TmZmSumxa" runat="server" Width="40px" ReadOnly="True"></asp:TextBox></td>
            </tr>
        </table>
        <table id="Table4" class="m_tab_ed" runat="server">
            <tr class="m_title_edit">
                <td colspan="8" height="30">
                    <p align="center">
                        补开奖一次提交</p>
                </td>
            </tr>
            <tr class="m_title_edit">
                <td align="center">
                    正码一</td>
                <td align="center">
                    正码二</td>
                <td align="center">
                    正码三</td>
                <td align="center">
                    正码四</td>
                <td align="center">
                    正码五</td>
                <td align="center">
                    正码六</td>
                <td align="center">
                    特别号</td>
                <td align="center" width="80" colspan="1">
                </td>
            </tr>
            <tr class="m_rig">
                <td align="center">
                    <select id="SelTm1" runat="server">
                        <option selected="selected"></option>
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
                    </select>
                </td>
                <td align="center">
                    <select id="SelTm2" runat="server">
                        <option selected="selected"></option>
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
                    </select>
                </td>
                <td align="center">
                    <select id="SelTm3" runat="server">
                        <option selected="selected"></option>
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
                    </select>
                </td>
                <td align="center">
                    <select id="SelTm4" runat="server">
                        <option selected="selected"></option>
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
                    </select>
                </td>
                <td align="center">
                    <select id="SelTm5" runat="server">
                        <option selected="selected"></option>
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
                    </select>
                </td>
                <td align="center">
                    <select id="SelTm6" runat="server">
                        <option selected="selected"></option>
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
                    </select>
                </td>
                <td align="center">
                    <select id="SelTm7" runat="server">
                        <option selected="selected"></option>
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
                    </select>
                </td>
                <td align="center">
                    <asp:Button ID="ButTmSub" runat="server" Width="72px" Text="完成" ToolTip="开奖结束，不能进行修改" OnClick="ButTmSub_Click"></asp:Button></td>
            </tr>
        </table>
        <table id="Table3" class="m_tab_ed" runat="server">
            <tr class="mem_index_cen">
                <td height="30">
                    <a href="../MwebLh/WebStartWin.aspx" target="main" title="庄家根据摇码结果为每位投注会员派发奖金、及退水金额">计算派奖</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
