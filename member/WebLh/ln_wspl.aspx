<%@ page language="C#" autoeventwireup="true" inherits="ln_wspl, App_Web_xt-ylzzg" enableEventValidation="false" %>

<%@ Register Src="WebPageFoot.ascx" TagName="WebPageFoot" TagPrefix="uc1" %>

<HTML>
	<HEAD>
		<title>history_data</title>
		
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href="../style/client_LT_game.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" type="text/javascript" src="../js/AutoRefreshShow.js"></script>
		<script language="JavaScript" type="text/javascript">
            if(self == top) location = '/';

            function onLoad()
            {
                lReftime ="<% =Request.QueryString["stoptime"] %>";
                AutoRefShow(lReftime,'');
            }
		</SCRIPT>
	</HEAD>
	<body   onLoad="onLoad();" 
oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
  ondragstart="return   false"     
      onselectstart   ="return   false"   onselect="document.selection.empty()"     
      oncopy="document.selection.empty()"   onbeforecopy="return false" >
		<form id="Form1" method="post" runat="server">
			<TABLE class="table_title_line" id="Table4" style="WIDTH: 668px"  cellSpacing="0"
				cellPadding="0"  border="0">
				<TR>
					<TD >
					    <TABLE id="Table9"  cellSpacing="0" cellPadding="0"  align="left"
						    border="0" style="WIDTH: 100%">
						    <TR>
						        <TD class = "message_1"></TD>
							    <TD  bgColor="#cccccc"  class = "message_2">
								    <DIV id="Msg">
									    <MARQUEE  id=helpor_net onMouseOver=this.stop() onMouseOut=this.start() style="WIDTH: 600px; HEIGHT: 16px"  height="16"><% =Session["TmMessage"] %>
									    </MARQUEE>
								    </DIV>
							    </TD>
							    <TD  class = "message_3"><img border="0" src="../images/message.gif" width="15" height="12"></TD>
						    </TR>
					    </TABLE>
					</TD>
				</TR>
				<TR>
					<TD >
						<TABLE class="banner_set" id="Table12"  style="WIDTH: 100%" cellSpacing="0"
							cellPadding="0" border="0">
							<TR>
								<TD style="WIDTH: 150px"><STRONG>一尾、头数</STRONG></TD>
								<TD style="WIDTH: 250px">(<B>香港时间:</B>
									<asp:label id="LabNowDate" runat="server"></asp:label>)</TD>
										<TD align="left"  style="text-align: right;">
										    <span>
                                            <B><a class="click_text" onclick ="location='?stoptime=' + document.getElementById('retime').value; ">刷新</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label></B>&nbsp;
                                            <select id="retime" runat="server"  name="retime" onchange="location='?stoptime=' + document.getElementById('retime').value; ">
                                                <option selected="selected" value="-1">不刷新</option>
                                                <option value="20">20 sec</option>
                                                <option value="40">40 sec</option>
                                                <option value="60">60 sec</option>
                                            </select>
                                        </span>	</TD> 					
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD >
						<TABLE id="TableKK" cellSpacing="0" cellPadding="0"  border="0" runat="server">
							<TR>
								<TD>
									<TABLE id="Table1"  class ="list_rig" style="WIDTH: 100%" cellSpacing="0" cellPadding="0"
										border="0">
										<TR>
											<TD style="WIDTH: 150px"><STRONG>期数:</STRONG>
												<asp:label id="Labtmwinno" runat="server"></asp:label></TD>
											<TD style="WIDTH: 250px">
													<asp:hyperlink id="HyperLink1" runat="server" NavigateUrl="ln_ws.aspx">切换下注模式</asp:hyperlink></TD>
											<TD style="text-align: right"><B>开奖日期: </B>
												<asp:label id="Labtmwindate" runat="server"></asp:label></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD>
									<TABLE id="Table7"  style="WIDTH: 100%"  class ="table_banner"  cellspacing="1" >
										<TR class="tr_title_set_cen">
											<TD style="WIDTH: 71px" align="center" width="71"><B>一尾</B></TD>
											<TD  align="center" width="111"><B>号码</B></TD>
											<TD  align="center" width="111"><B>赔率</B></TD>
											<TD style="WIDTH: 76px" align="center" ><B>一尾</B></TD>
											<TD  align="center" width="111"><B>号码</B></TD>
											<TD  align="center" width="111"><B>赔率</B></TD>
										</TR>
										<TR>
											<TD class="ball_td" style="WIDTH: 71px" width="71" align="center"><asp:Label ID="LabCws1" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws1" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws1" runat="server">0</asp:HyperLink></B></FONT></TD>
											<TD class="ball_td" style="WIDTH: 76px" width="76" align="center">
                                                <asp:Label ID="LabCws2" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws2" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws2" runat="server">0</asp:HyperLink></B></FONT></TD>
										</TR>
										<TR>
											<TD class="ball_td" style="WIDTH: 71px" width="71" align="center"><asp:Label ID="LabCws3" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws3" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws3" runat="server">0</asp:HyperLink></B></FONT></TD>
											<TD class="ball_td" style="WIDTH: 76px" width="76" align="center"><asp:Label ID="LabCws4" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws4" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws4" runat="server">0</asp:HyperLink></B></FONT></TD>
										</TR>
										<TR>
											<TD class="ball_td" style="WIDTH: 71px" width="71" align="center"><asp:Label ID="LabCws5" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws5" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws5" runat="server">0</asp:HyperLink></B></FONT></TD>
											<TD class="ball_td" style="WIDTH: 76px" width="76" align="center"><asp:Label ID="LabCws6" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws6" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws6" runat="server">0</asp:HyperLink></B></FONT></TD>
										</TR>
										<TR>
											<TD class="ball_td" style="WIDTH: 71px" width="71" align="center"><asp:Label ID="LabCws7" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws7" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws7" runat="server">0</asp:HyperLink></B></FONT></TD>
											<TD class="ball_td" style="WIDTH: 76px" width="76" align="center"><asp:Label ID="LabCws8" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws8" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws8" runat="server">0</asp:HyperLink></B></FONT></TD>
										</TR>
										<TR>
											<TD class="ball_td" style="WIDTH: 71px" width="71" align="center"><asp:Label ID="LabCws9" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws9" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws9" runat="server">0</asp:HyperLink></B></FONT></TD>
											<TD class="ball_td" style="WIDTH: 76px" width="76" align="center"><asp:Label ID="LabCws0" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVws0" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labws0" runat="server">0</asp:HyperLink></B></FONT></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD>
                                    <TABLE id="Table2"  width="668" class ="table_banner"  cellspacing="1" >
										<TR class="tr_title_set_cen">
											<TD style="WIDTH: 71px" align="center" width="71"><B>头数</B></TD>
											<TD  align="center" width="111"><B>号码</B></TD>
											<TD  align="center" width="111"><B>赔率</B></TD>
											<TD style="WIDTH: 76px" align="center" ><B>头数</B></TD>
											<TD  align="center" width="111"><B>号码</B></TD>
											<TD  align="center" width="111"><B>赔率</B></TD>
										</TR>
										<TR>
											<TD class="ball_td" style="WIDTH: 71px" width="71" align="center"><asp:Label ID="LabCts1" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVts1" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labts1" runat="server">0</asp:HyperLink></B></FONT></TD>
											<TD class="ball_td" style="WIDTH: 76px" width="76" align="center">
                                                <asp:Label ID="LabCts2" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVts2" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labts2" runat="server">0</asp:HyperLink></B></FONT></TD>
										</TR>
										<TR>
											<TD class="ball_td" style="WIDTH: 71px" width="71" align="center"><asp:Label ID="LabCts3" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVts3" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labts3" runat="server">0</asp:HyperLink></B></FONT></TD>
											<TD class="ball_td" style="WIDTH: 76px" width="76" align="center"><asp:Label ID="LabCts4" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVts4" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labts4" runat="server">0</asp:HyperLink></B></FONT></TD>
										</TR>
										<TR>
											<TD class="ball_td" style="WIDTH: 71px" width="71" align="center"><asp:Label ID="LabCts5" runat="server" Width="64px"></asp:Label></TD>
											<TD class="ball_td" width="111"><asp:Label ID="LabVts5" runat="server" Width="176px"></asp:Label></TD>
											<TD class="list_cen" width="111"><FONT face="宋体" color="#800000" size="3"><B>
                                                <asp:HyperLink ID="Labts5" runat="server">0</asp:HyperLink></B></FONT></TD>
											<TD class="ball_td" style="WIDTH: 76px" width="76" align="center"></TD>
											<TD class="ball_td" width="111"></TD>
											<TD class="list_cen" width="111"></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
            <uc1:WebPageFoot ID="WebPageFoot1" runat="server" />
		</form>
	</body>
</HTML>


