<%@ page language="c#" inherits="WebTm.gbook, App_Web_3mbbw7kj" enableEventValidation="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>gbook</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" type="text/javascript" >
          
function SubChk()
{
	namec=document.getElementById('namec').value;
	if(namec==""){
		alert("请输入姓名");
		return false;
	}
	fax=document.getElementById('fax').value;
	email=document.getElementById('email').value;
	tel=document.getElementById('tel').value;
	if(fax=="" && email=="" && tel==""){
		alert("请输入至少一种联络方式");
		return false;
	}
	text=document.getElementById('text').value;
	if(text==""){
		alert("请输入联络事项");
		return false;
	}
	return true;
}
		</SCRIPT>
		<STYLE type="text/css">BODY { FONT-SIZE: 10pt; BACKGROUND-IMAGE: url(../images/web/Globe.gif); BACKGROUND-REPEAT: no-repeat; FONT-FAMILY: Arial, Helvetica, sans-serif }
	TH { FONT-WEIGHT: bold; FONT-SIZE: 10pt; FONT-FAMILY: Arial, Helvetica, sans-serif; BACKGROUND-COLOR: #d3dce3 }
	TD { FONT-SIZE: 10pt; FONT-FAMILY: Arial, Helvetica, sans-serif }
	TD.msgbody { FONT-SIZE: 10pt; FONT-FAMILY: Arial, Helvetica, sans-serif }
	FORM { FONT-SIZE: 10pt; FONT-FAMILY: Arial, Helvetica, sans-serif }
	H1 { FONT-WEIGHT: bold; FONT-SIZE: 16pt; FONT-FAMILY: Arial, Helvetica, sans-serif }
	A:link { FONT-SIZE: 10pt; COLOR: blue; FONT-FAMILY: Arial, Helvetica, sans-serif; TEXT-DECORATION: none }
	A:visited { FONT-SIZE: 10pt; COLOR: blue; FONT-FAMILY: Arial, Helvetica, sans-serif; TEXT-DECORATION: none }
	A:hover { FONT-SIZE: 10pt; COLOR: red; FONT-FAMILY: Arial, Helvetica, sans-serif; TEXT-DECORATION: none }
	A.msgbody:link { FONT-SIZE: 10pt; COLOR: blue; FONT-FAMILY: Arial, Helvetica, sans-serif; TEXT-DECORATION: none }
	A.msgbody:visited { FONT-SIZE: 10pt; COLOR: blue; FONT-FAMILY: Arial, Helvetica, sans-serif; TEXT-DECORATION: none }
	A.msgbody:hover { FONT-SIZE: 10pt; COLOR: red; FONT-FAMILY: Arial, Helvetica, sans-serif; TEXT-DECORATION: none }
	A.nav:link { COLOR: #000000; FONT-FAMILY: Arial, Helvetica, sans-serif }
	A.nav:visited { COLOR: #000000; FONT-FAMILY: Arial, Helvetica, sans-serif }
	A.nav:hover { COLOR: red; FONT-FAMILY: Arial, Helvetica, sans-serif }
	.nav { COLOR: #000000; FONT-FAMILY: Arial, Helvetica, sans-serif }
	.medtext { FONT-SIZE: 9pt }
		</STYLE>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<P align="center"><FONT face="Arial, Helvetica"><A href="http://openwebmail.org/"><IMG src="images/openwebmail.gif" border="0" width="233" height="122"></A></FONT></P>
			<TABLE cellSpacing="0" cellPadding="0" width="372" align="center" border="0">
				<TBODY>
					<TR>
						<TD align="left" width="372" background="images/bg-titleblue.gif" bgColor="#002266"><FONT face="Arial, Helvetica">&nbsp;</FONT><B><FONT color="#ffffff" size="3">网路邮局</FONT></B>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="372" bgColor="#3161bd">

							<TABLE height="158" cellSpacing="1" cellPadding="0" width="100%" border="0">
								<TBODY>
									<TR>
										<FONT face="Arial, Helvetica">
											<TD bgColor="#ffffff" height="157">
											<TABLE cellSpacing="2" cellPadding="0" width="270" align="center" border="0">
												&nbsp;
												<TBODY>
													<TR>
														<TD noWrap align="right" width="79" style="WIDTH: 79px">中文姓名：</TD>
														<TD align="left" width="199"><INPUT name="namec" style="WIDTH: 215px">
														</TD>
													</TR>
													<TR>
														<TD noWrap align="right" width="79" style="WIDTH: 79px">传真号码：</TD>
														<TD align="left" width="199"><INPUT name="fax" style="WIDTH: 215px">
														</TD>
													</TR>
													<TR>
														<TD noWrap align="right" width="79" style="WIDTH: 79px">电邮信箱：</TD>
														<TD align="left" width="199"><INPUT size="30" name="email" style="WIDTH: 215px">
														</TD>
													</TR>
													<TR>
														<TD noWrap align="right" width="79" style="WIDTH: 79px">联络电话：</TD>
														<TD align="left" width="199"><INPUT name="tel" style="WIDTH: 215px">
														</TD>
													</TR>
													<TR>
														<TD noWrap align="right" width="79" style="WIDTH: 79px">联络事项：</TD>
														<TD align="left" width="199"><TEXTAREA name="text" rows="5" cols="30"></TEXTAREA>
														</TD> 
												
												
												
												
												
													</TR>
													<TR>
														<TD width="266" colSpan="2"><FONT face="Arial, Helvetica" color="red">◎</FONT>
														<FONT color="red">请确实填写</FONT><FONT face="Arial, Helvetica" color="red">.</FONT>
														<FONT color="red">以便我们加快处理速度</FONT></TD>
													</TR>
													<TR>
														<TD align="center" width="266" colSpan="2"><INPUT type="submit" value="送出" name="Submit">
															<INPUT type="reset" value="清除" name="Submit">
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										
											<BR>

											<BR>
				                            </TD>
	                                    </FONT>
		                            </TR>
		                        </TBODY>
		                  </TABLE>


		                </TD>
		           </TR>
		    </TBODY>
		</TABLE> 
		<CENTER><TD align="center" colspan="3" height="13"></TD>
		</CENTER>
</form>
	</body>
</HTML>

