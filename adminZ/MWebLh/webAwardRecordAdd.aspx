<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_webAwardRecordAdd, App_Web_wtmgu-sw" enableEventValidation="false" %>

<HTML>
	<HEAD>
		<title></title>
		
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<script src="../Scripts/Calendar30.js" type="text/javascript" language="javascript" charset="gb2312"></script>

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
      
        <script language="JavaScript" type="text/javascript" >
            var mTmid = 0 ;
            function TmClick(vTmno)
            {
                if (mTmid >= 7)
                {
                    return false ;
                }
                else
                {
                    mTmid = mTmid + 1 ;                
                }
                document.getElementById("TextBox" + String(mTmid)).value= vTmno.innerHTML ;
                
                document.getElementById("TmNoN").innerHTML = String(mTmid) ;

                return false ;
            }
            function TmCancel()
            {
                if (mTmid > 7)
                {
                    mTmid = mTmid - 1 ;
                    return false ;
                }
                if (mTmid <= 0)
                {
                    return false ;
                }
        
                document.getElementById("TextBox" + String(mTmid)).value= "" ;
                 mTmid = mTmid - 1 ;
                
               
                return false ;
            }


             function AddWinResult()
            {


                 document.location='WebWinResult.aspx'   ;
            }
            
            function SubCheck()
            {

                
                if (document.getElementById("Ttmwinno").value == "")
                {
                    alert( "请写入开奖期数ID号"); 
                    return false ;
                }
                 if ("" == document.getElementById("TtmwinName").value)
                {
                    alert( "请写入开奖名称"); return false ;
                }
                 if ("" == document.getElementById("Ttmwindate").value)
                {
                    alert( "请写入开奖日期"); return false ;
                }
 	            for (var i = 1 ; i < 8 ; i++){
                    if (document.getElementById("TextBox" + String(i)).value ==""){
                        
                        alert( "请写入开奖号码");
                        document.getElementById("TextBox" + String(i)).focus(); 
                        return false ;
                    }
	            } 
                document.getElementById("TmNoN").value = String(7) ;

                return true ;
            }
		</SCRIPT>
		<LINK href="../style/members.css" rel="stylesheet" type="text/css">
	</HEAD>
	<body  text=#000000 vLink=#0000ff aLink=#0000ff bgColor=#ffffff leftMargin=0 topMargin=0>
		<form id="Form1" method="post" runat="server">
            <TABLE  class="title_m_tab" cellSpacing="0" cellPadding="0" border="0">
                <TBODY>
                  <TR><TD  class="td_banner_b"></TD></TR>
                  <TR class="td_banner_m">
                    <TD>&nbsp;&nbsp;开奖记录补录:
                        <asp:HyperLink ID="PageId" runat="server" NavigateUrl="WebWinResult.aspx">回上一页</asp:HyperLink></TD></TR>
                  <TR ><TD class="td_banner_b"></TD></TR>
                  <TR><TD  class="mem_index_ctrl_space"></TD></TR>
                  </TBODY>
                  
                  
            </TABLE>
				<TABLE id="Table2" class="m_tab_ed" >
					<TR class = "mem_index_cen">
						<TD >
							<TABLE id="TableA"  border="0" align="center" runat="server" style="background-color: #330000; ">
								<TR style="height: 30px">
									<TD class="ball_td" align="center" width="45"  background="../imagesBall/r.gif"  id="TD1" runat="server"><asp:linkbutton id="LinkButton1" runat="server" OnClientClick ="return TmClick(this);" CommandName="01">01</asp:linkbutton></TD>
									<TD class="ball_td"  align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton2" runat="server" OnClientClick ="return TmClick(this);" CommandName="02">02</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton3" runat="server" OnClientClick ="return TmClick(this);" CommandName="03">03</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton4" runat="server" OnClientClick ="return TmClick(this);" CommandName="04">04</asp:linkbutton></TD>								
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton5" runat="server" OnClientClick ="return TmClick(this);" CommandName="05">05</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton6" runat="server" OnClientClick ="return TmClick(this);" CommandName="06">06</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton7" runat="server" OnClientClick ="return TmClick(this);" CommandName="07">07</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton8" runat="server" OnClientClick ="return TmClick(this);" CommandName="08">08</asp:linkbutton></TD>	
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton9" runat="server" OnClientClick ="return TmClick(this);" CommandName="09">09</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton10" runat="server" OnClientClick ="return TmClick(this);" CommandName="10">10</asp:linkbutton></TD>

									
									
									
									
								</TR>
								<TR style="height: 30px">
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton11" runat="server" OnClientClick ="return TmClick(this);" CommandName="11" >11</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton12" runat="server" OnClientClick ="return TmClick(this);" CommandName="12">12</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton13" runat="server" OnClientClick ="return TmClick(this);" CommandName="13">13</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton14" runat="server" OnClientClick ="return TmClick(this);" CommandName="14">14</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton15" runat="server" OnClientClick ="return TmClick(this);" CommandName="15">15</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton16" runat="server" OnClientClick ="return TmClick(this);" CommandName="16">16</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton17" runat="server" OnClientClick ="return TmClick(this);" CommandName="17">17</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton18" runat="server" OnClientClick ="return TmClick(this);" CommandName="18">18</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton19" runat="server" OnClientClick ="return TmClick(this);" CommandName="19">19</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton20" runat="server" OnClientClick ="return TmClick(this);" CommandName="20">20</asp:linkbutton></TD>
									
									
									
								</TR>
								<TR style="height: 30px">
                                    <TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton21" runat="server" OnClientClick ="return TmClick(this);" CommandName="21">21</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton22" runat="server" OnClientClick ="return TmClick(this);" CommandName="22">22</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton23" runat="server" OnClientClick ="return TmClick(this);" CommandName="23">23</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton24" runat="server" OnClientClick ="return TmClick(this);" CommandName="24">24</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton25" runat="server" OnClientClick ="return TmClick(this);" CommandName="25">25</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton26" runat="server" OnClientClick ="return TmClick(this);" CommandName="26">26</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton27" runat="server" OnClientClick ="return TmClick(this);" CommandName="27">27</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton28" runat="server" OnClientClick ="return TmClick(this);" CommandName="28">28</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton29" runat="server" OnClientClick ="return TmClick(this);" CommandName="29">29</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton30" runat="server" OnClientClick ="return TmClick(this);" CommandName="30">30</asp:linkbutton></TD>
								</TR>
								<TR style="height: 30px">
								    
								    <TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton31" runat="server" OnClientClick ="return TmClick(this);" CommandName="31">31</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton32" runat="server" OnClientClick ="return TmClick(this);" CommandName="32">32</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton33" runat="server" OnClientClick ="return TmClick(this);" CommandName="33">33</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton34" runat="server" OnClientClick ="return TmClick(this);" CommandName="34">34</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton35" runat="server" OnClientClick ="return TmClick(this);" CommandName="35">35</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton36" runat="server" OnClientClick ="return TmClick(this);" CommandName="36">36</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton37" runat="server" OnClientClick ="return TmClick(this);" CommandName="37">37</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton38" runat="server" OnClientClick ="return TmClick(this);" CommandName="38">38</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton39" runat="server" OnClientClick ="return TmClick(this);" CommandName="39">39</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton40" runat="server" OnClientClick ="return TmClick(this);" CommandName="40">40</asp:linkbutton></TD>
									
								</TR>
								<TR style="height: 30px">
								    
								    <TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton41" runat="server" OnClientClick ="return TmClick(this);" CommandName="41">41</asp:linkbutton></TD>
								    <TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton42" runat="server" OnClientClick ="return TmClick(this);" CommandName="42">42</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton43" runat="server" OnClientClick ="return TmClick(this);" CommandName="43">43</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton44" runat="server" OnClientClick ="return TmClick(this);" CommandName="44">44</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton45" runat="server" OnClientClick ="return TmClick(this);" CommandName="45">45</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/r.gif" ><asp:linkbutton id="LinkButton46" runat="server" OnClientClick ="return TmClick(this);" CommandName="46">46</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton47" runat="server" OnClientClick ="return TmClick(this);" CommandName="47">47</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/b.gif" ><asp:linkbutton id="LinkButton48" runat="server" OnClientClick ="return TmClick(this);" CommandName="48">48</asp:linkbutton></TD>
									<TD class="ball_td" align="center" width="45" background="../imagesBall/g.gif" ><asp:linkbutton id="LinkButton49" runat="server" OnClientClick ="return TmClick(this);" CommandName="49">49</asp:linkbutton></TD>
									<TD class="ball_td" align="center"  colSpan="2" ><asp:textbox id="TmNoN" runat="server" Width="14px" style="visibility: hidden">1</asp:textbox>&nbsp;</TD>
								</TR>
								
							</TABLE>
						</TD>
					</TR>
				</TABLE>
                <TABLE  id="Table3" class="m_tab_ed"   >
				<TR>
					<TD class="m_title_edit" colSpan="6" >
                        信息设置
					</TD>
				</TR>
				<TR  class="m_bc_ed">
					<TD class="m_mem_ed"   style="text-align: left" >
                        开奖期数：</TD>
					<TD width="50px" ><asp:TextBox id="Ttmwinno" runat="server" MaxLength="5" Width="60px"></asp:TextBox></TD>
					<TD class="m_mem_ed" style="text-align: left" >
                        开奖名称：
					</TD>
					<TD >
								<asp:TextBox id="TtmwinName" runat="server" MaxLength="6" Width="60px"></asp:TextBox></TD>
								
					<TD class="m_mem_ed"   style="text-align: left">
                        开奖日期：</TD>
					<TD   ><asp:TextBox id="Ttmwindate" name="Ttmwindate" runat="server" Width="101px"></asp:TextBox><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../images/calendar.gif"
                            OnClientClick="calendar(document.getElementById('Ttmwindate'),event);return false;" />
                    </TD>
				</TR>

			</TABLE>
            <TABLE id="Table1"  class="m_tab_ed" runat="server">
				<TR class="m_title_edit">
					<TD    colSpan="7" >
						<P align="center">开奖彩球号码</P>
					</TD>
				</TR>
				<TR class="m_title_edit">
					<TD align="center"  >正码一</TD>
					<TD align="center"  >正码二</TD>
					<TD align="center"  >正码三</TD>
					<TD align="center"  >正码四</TD>
					<TD align="center"  >正码五</TD>
					<TD align="center"  >正码六</TD>
					<TD align="center"  >特别号</TD>
				</TR>
				<TR class = "m_rig">
					<TD align="center" ><asp:textbox id="TextBox1" runat="server" Width="40px"></asp:textbox></TD>
					<TD align="center" ><asp:textbox id="TextBox2" runat="server" Width="40px"></asp:textbox></TD>
					<TD align="center" ><asp:textbox id="TextBox3" runat="server" Width="40px"></asp:textbox></TD>
					<TD align="center" ><asp:textbox id="TextBox4" runat="server" Width="40px"></asp:textbox></TD>
					<TD align="center" ><asp:textbox id="TextBox5" runat="server" Width="40px"></asp:textbox></TD>
					<TD align="center" ><asp:textbox id="TextBox6" runat="server" Width="40px" ></asp:textbox></TD>
					<TD align="center" ><asp:textbox id="TextBox7" runat="server" Width="40px"></asp:textbox></TD>
				</TR>
                <tr class="m_rig">
                    <td align="center" colspan="7">
                        <input id="Button1" type="button" value="取消" onclick ="TmCancel();"  />&nbsp;
							<asp:button id="TmOk" runat="server" Text="保存" ToolTip="" onclick="TmOk_Click" OnClientClick="return SubCheck();"></asp:button>&nbsp;
                        <input id="CmdCancel" runat="server" name="act23" type="button" value="返回" /></td>
                </tr>
                <tr class="m_rig">
                    <td align="left" colspan="7">
                        下期期数:如今年是2008年的第一期,则填写"8001"
                        <br />
                        下期名称:如今年是2008年的第一期,则填写"1"<br />
                        开奖时间:为球号开码的日期:如2008-01-01
                    </td>
                </tr>
			</TABLE>
		</form>
	</body>
</HTML>

