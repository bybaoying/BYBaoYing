<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WebUser, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/control_main.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">
 
        function User_Delete(){
	            if(confirm('ȷ��ɾ����Ա��?��ѡ��ɾ��,��Ա�ʻ�ע��һ��ɾ��!'))
	            {
	                }
	            else
	            {
	                return false;
	                }
        }


 
        function close_win() {
	        document.getElementById("acc_window").style.display = "none";
        }

        function onLoad()
        {
    //         gTime =  document.getElementById("retime").value;
             gTime ="<% =Request.QueryString["stoptime"] %>";
             if (gTime == "")
             {
                gTime= -1;
              }
              var ltype ="<% =Request.QueryString["ltype"] %>";
            if (ltype == "")
             {
                document.getElementById("ltype").value ="LA";
              }
              else
              {
                  document.getElementById("ltype").value =ltype;
              }
              
              var pct ="<% =Request.QueryString["pct"] %>";
              if (pct == "")
             {
                document.getElementById("pct").value =0;
              }
              else
              {
                  document.getElementById("pct").value =pct;
                 }
             
             document.getElementById("retime").value =gTime;
            countdown();
        }

            function ShowPage()
            {
	            window.location='WebUser.aspx?AdminId=' + document.getElementById("aid_f").value + '&User_Start=' + document.getElementById("User_Start").value + '&Select_Tj=' + document.getElementById("Select_Tj").value + '&Select_Order=' + document.getElementById("Select_Order").value + '&Pageid=' + document.getElementById("DDPage").value;
            }
             function LineOut(Type,User)
            { 
                var lSrc = "admin_UserlineOut.aspx?UserType=" + Type + "&Userid=" + User;
//                document.getElementById("UserlineOut'].src =  lSrc ;//�����ҳ������������� 
                window.UserlineOut.location.href =  lSrc ;//�����ҳ�������ٴ����������������name ������ID
            }
            function LineOver(Type,User)
            {
                 document.getElementById("lineState" + Type + "-" + User ).setAttribute("className", "");
                 document.getElementById("lineState" + Type + "-" + User ).setAttribute("class", "");
            }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="Form1" method="post" runat="server">
        <table class="title_manag_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_bg">
                        <table cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                                <tr>
                                    <td>
                                        &nbsp;&nbsp;��Ա����: ѡ�������
                                        <select class="zaselect_ste" onchange="ShowPage();" id="aid_f" runat="server">
                                            <option value="" selected>ȫ��</option>
                                        </select>
                                        <select class="za_select" onchange="ShowPage();" name="User_Start" id="User_Start" runat="server">
                                            <option value="-1" selected>ȫ��</option>
                                            <option value="0">����</option>
                                            <option value="1">ͣ��</option>
                                        </select>
                                        -- ����:
                                        <select class="za_select" onchange="ShowPage();" name="Select_Tj" id="Select_Tj" runat="server">
                                            <option value="1" selected>��������</option>
                                            <option value="2">��Ա�ʺ�</option>
                                            <option value="3">��Ա����</option>
                                        </select>
                                        <select class="za_select" onchange="ShowPage();" name="Select_Order" id="Select_Order" runat="server">
                                            <option value="1" selected>����(��С����)</option>
                                            <option value="2">����(�ɴ�С)</option>
                                        </select>
                                        -- ��ҳ��:
                                        <select class="zaselect_ste" onchange="ShowPage();" name="page_f" id="DDPage" runat="server">
                                            <option value="1" selected>1</option>
                                        </select>
                                        /&nbsp;
                                        <asp:Label ID="ContSumPage" runat="server" Width="11px"></asp:Label>
                                        ҳ --
                                        <input class="za_button" onclick="JavaScript:document.location='WebUser_Edit.aspx?adminid=' + document.getElementById('aid_f').value " type="button" value="����">
                                        <font color="#ff0000"></font>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="mem_index_tab" cellspacing="1" cellpadding="0" border="0" id="TableA" runat="server">
            <tbody>
                <tr class="mem_index_title" style="height: 15px">
                    <td rowspan="2">
                        ��Ա����</td>
                    <td rowspan="2">
                        ��Ա�ʺ�</td>
                    <td rowspan="2">
                        �ϼ��ʺ�</td>
                    <td colspan="3">
                        ��Ա����</td>
                    <td colspan="3">
                        �̱�</td>
                    <%--    <TD  style="width: 50px" rowspan="2">
        ע������</TD>--%>
                    <td colspan="1" rowspan="2">
                        �ֽ�<br />
                        ����</td>
                    <td rowspan="2">
                        ����״��</td>
                    <td rowspan="2">
                        ״��</td>
                    <td colspan="2">
                        ����</td>
                </tr>
                <tr class="mem_index_title" style="height: 15px">
                    <td>
                        ���</td>
                    <td>
                        ����</td>
                    <td>
                        �ֽ�</td>
                    <td>
                        ����</td>
                    <td>
                        ����</td>
                    <td>
                        �w��</td>
                    <td colspan="1">
                        �ʻ�</td>
                    <td colspan="1">
                        ����</td>
                </tr>
            </tbody>
        </table>
    </form>
    <iframe id='UserlineOut' name='UserlineOut' src="about:blank" frameborder="0" width="200px" scrolling="no" height="200px" bgcolor="#99ffff" style="visibility: hidden"></iframe>
</body>
</html>
