<%@ control language="C#" autoeventwireup="true" inherits="member_WebOt_WebPageFoot, App_Web_h-elesbu" %>
<%--<link href="../style/rule.css" rel="stylesheet" type="text/css">--%>
<STYLE type="text/css">
.Page_foot_font {
	font-size: 12px;

	color: #FFFFFF;


}
.Page_foot {

	width: 670px;

}
.Page_footL {
	width: 12px;
	background-image: url(../images/Page_footL.gif);
	height: 40px;
}
.Page_footM {
	width: 644px;
	background-image: url(../images/Page_footM.gif);
	height: 40px;
	text-align: center;
}
.Page_footR {
	width: 12px;
	background-image: url(../images/Page_footR.gif);
	height: 40px;
}
.Page_foot_font_M
{
	font-size: 12px;
	color: #ffffff;
	
	font-weight: bold;

}
</STYLE>
<div class="Page_foot" >
<span class="Page_footL"></span> 
<span class="Page_footM">
    <span class="Page_foot_font"><% Response.Write(base.GetGlobalResourceObject("Resource", "Label1Msg").ToString());%> </span>
    <span class="Page_foot_font_M"><% Response.Write(this.CoName );%></span>
    <span class="Page_foot_font"> <% Response.Write(base.GetGlobalResourceObject("Resource", "Label3Msg").ToString());%></span>
</span>
<span class="Page_footR"></span>
</div> 