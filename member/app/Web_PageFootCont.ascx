<%@ control language="C#" autoeventwireup="true" inherits="member_app_Web_PageFootCont, App_Web_vwupdd6k" %>
<table class="Page_foot" cellspacing="0" cellpadding="0">
    <tr>
        <td class="Page_footL"> 
        </td>
        <td  class="Page_footM">
            <div class="Cont_foot">
                <span class="Cont_font_M">
                    <% Response.Write(base.GetGlobalResourceObject("Resource", "Label1Msg").ToString());%>

                </span>
                <span class="Page_foot_font_M"><% Response.Write(this.CoName );%></span>
                <span class="Cont_font">
                    <% Response.Write(base.GetGlobalResourceObject("Resource", "Label3Msg").ToString());%>
                </span>
            </div>
        </td>
        <td class="Page_footR">
        </td>
    </tr>
</table>
