<%@ page language="C#" autoeventwireup="true" inherits="member_app_select_lt, App_Web_vwupdd6k" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Main_left_TM.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript">
		if(self == top) location = '/'; 
        function InfoShow(mTimeInfo,mUserId,mUserXynd,mMoneyName,mMessage,mtmwinName){

            document.getElementById("countdown_num_title").innerHTML = mTimeInfo;
            document.getElementById("Labtmwinno").innerHTML = mtmwinName ;
            document.getElementById("TxtUsername").innerHTML = mUserId ;
            document.getElementById("xynd").innerHTML = mUserXynd;
            document.getElementById("LabBzname").innerHTML = mMoneyName ;
            document.getElementById("Txtmessage").innerHTML = mMessage ;
            
        }
    </script>

    <!--<script language="JavaScript" type="text/javascript" >onload="countdown();"	oncontextmenu="window.event.returnValue=false" -->
</head>
<body>
    <div class="div_Class">
        <div class="div_Head_a">
            <div id="countdown_num_title" class="m-title">
            </div>
        </div>
        <div class="div_Head_b">
            <div class="m-title">
                请确认您的帐户</div>
        </div>
        <div class="div_Head_d">
            <div class="div_table">
                <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                    <tbody>
                        <tr>
                            <td class="td_Caption_set">
                                期数:
                            </td>
                            <td>
                                <span id="Labtmwinno" class="span_set"></span>
                            </td></tr>
                            <tr>
                                <td class="td_Caption_set">
                                    帐户名称:
                                </td>
                                <td>
                                    <span id="TxtUsername" class="span_set"></span>
                                </td>
                            </tr>
                        <tr>
                            <td class="td_Caption_set">
                                信用额度:
                            </td>
                            <td>
                                <span id="xynd" class="span_set"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_Caption_set">
                                使用幣別:
                            </td>
                            <td>
                                <span id="LabBzname" class="span_set">人民币(RMB)</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="div_table">
            <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                <tbody>
                    <tr>
                        <td class="td_Caption_set" colspan="2">
                            <a id="wagers_list" runat="server">最新投注单</a></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            公告信息:
                        </td>
                        <td class="td_Caption_set">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span id="Txtmessage" class="span_set"></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="div_Head_e">
        </div>
            <div class="div_Head_f" >
        </div>
    </div>

    <iframe id="IFrameSelectLt" name="IFrameSelectLt" runat="server" width="100" height="0" style="visibility: hidden" src="about:blank"></iframe>
</body>
</html>

