<%@ page language="C#" autoeventwireup="true" inherits="member_WebOt_mem_data, App_Web_l2ol5azm" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        //����ʺ�,����,���� ��Ԫ����
        function CheckKey(){
                         if(event.keyCode == 13) return true;
	        if(!((event.keyCode > 47 && event.keyCode < 58 ) || (event.keyCode >64 && event.keyCode < 91) || (event.keyCode > 96 && event.keyCode <123) ) && !(event.keyCode == 33 || event.keyCode == 35 || event.keyCode == 36 || event.keyCode == 38 || event.keyCode == 42 || event.keyCode == 43 || event.keyCode == 46 || event.keyCode == 61 || event.keyCode == 64 || event.keyCode == 95 || event.keyCode == 124))
	                      {alert("���벻��ʹ��������Ԫ!!"); return false;}
        }
        function SubChk(){
	        if(document.getElementById('TxtPassword').value=='')
		        {document.getElementById('TxtPassword').focus(); alert("�������������!!"); return false; }
	        if(document.getElementById('TxtPassword').value.length < 6)
		        {document.getElementById('TxtPassword').focus(); alert("���볤�Ȳ��ɵ��������!!"); return false; }
        }
        function pwChk(){
	        if(document.getElementById('TxtPassword').value.length < 6 & document.getElementById('TxtPassword').value.length != 0)
		        {document.getElementById('TxtPassword').focus(); alert("���볤�Ȳ��ɵ��������!!"); return false; }
        }
    </script>

</head>
<body>
    <form id="Form1" method="post" onsubmit="return SubChk()" runat="server">
        <div class="div_windows">
            <table id="Table4" class="table_windows" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td>
                            <table id="Table9" class="Page_Head" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td class="Page_HeadL">
                                    </td>
                                    <td class="Page_HeadM">
                                        <span class="img_message"></span><span id="Msg">
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" style="width: 600px; height: 16px">
                                                <% =Session["D3Message"] %>
                                            </marquee>
                                        </span>
                                    </td>
                                    <td class="Page_HeadR">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="Td_Table">
                            <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                <tr>
                                    <td class="td_title_set_cen" colspan="3">
                                        ��Ա����</td>
                                </tr>
                                <tr>
                                    <td class="td_Head_set_cen" style="width: 120px">
                                        �ʻ�����</td>
                                    <td class="td_Text_set">
                                        <asp:Label ID="TxtUsername" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="td_Head_set_cen">
                                        ���ö��</td>
                                    <td class="td_Text_set">
                                        <asp:Label ID="TxtXynd" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="td_Head_set_cen">
                                        �������</td>
                                    <td class="td_Text_set">
                                        <asp:TextBox onkeypress="return CheckKey();" ID="TxtPassword" runat="server" Width="120px" TextMode="Password" MaxLength="12"></asp:TextBox>&nbsp;&nbsp;
                                        <asp:Button ID="CmdOk" runat="server" Text="ȷ��" Width="56px" OnClick="CmdOk_Click"></asp:Button>
                                        <font color="red"><b>���볤�� 6~12 ��(���ɽ���!#$&amp;*+.=@|��������Ԫ)</b></font>
                                    </td>
                                </tr>
                            </table>
                            <table id="TableA" runat="server" class="Main_Table" cellspacing="1" cellpadding="0">
                                <tbody>
                                    <tr>
                                        <td colspan="5" class="td_title_set_cen">
                                            �������</td>
                                    </tr>
                                    <tr>
                                        <td class="td_Head_set_cen" width="127">
                                            ��Ŀ
                                        </td>
                                        <td class="td_Head_set_cen">
                                            ��ˮ�趨
                                        </td>
                                        <td class="td_Head_set_cen">
                                            ����޶�
                                        </td>
                                        <td class="td_Head_set_cen">
                                            ����(��)�޶�
                                        </td>
                                        <td class="td_Head_set_cen">
                                            ��ע�޶�
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
    </form>
</body>
</html>
