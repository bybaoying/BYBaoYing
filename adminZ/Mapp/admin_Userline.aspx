<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_admin_Userline, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../style/control_main.css" type="text/css" rel="stylesheet">

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript" >
        function Chk_acc(){
	        if(document.agAcc.acc_date.value=='' || document.agAcc.acc_date.value.length != 10){
		        document.agAcc.acc_date.focus();
		        alert("�������������(YYYY-MM-DD)!!");
		        return false;
	        }
	        close_win();
        }
        function show_win(mem_id,mem_name,checkout_date) {
	        agAcc.mid.value=mem_id;
        	
	        if( checkout_date=='0000-00-00' ) agAcc.acc_date.value='2007-04-17';
	        else agAcc.acc_date.value=checkout_date;
        	
	        document.getElementById("acc_title").innerHTML="<font color=#FFFFFF>&nbsp;�������������{"+mem_name+"}</font>";
	        acc_window.style.top=document.body.scrollTop+event.clientY+15;
	        acc_window.style.left=document.body.scrollLeft+event.clientX-20; 
	        nowDate = new Date();
	        document.getElementById("acc_window").style.display = "block";
	        document.agAcc.acc_date.focus();
        }

        function close_win() {
	        document.getElementById("acc_window").style.display = "none";
        }

        function onLoad()
        {
    //         gTime =  document.getElementById('retime').value; 
             gTime ="<% =Request.QueryString["stoptime"] %>";
             if (gTime == "")
             {
                gTime= -1;
              }
              var ltype ="<% =Request.QueryString["ltype"] %>";
            if (ltype == "")
             {
                document.getElementById('ltype').value ="LA";
              }
              else
              {
                  document.getElementById('ltype').value =ltype;
              }
              
              var pct ="<% =Request.QueryString["pct"] %>";
              if (pct == "")
             {
                document.getElementById('pct').value =0;
              }
              else
              {
                  document.getElementById('pct').value =pct;
                 }
             
             document.getElementById('retime').value =gTime;
            countdown();
        }

            function ShowPage()
            {
	            location='admin_Userline.aspx?User_Start=' + document.getElementById('User_Start').value + '&Select_Tj=' + document.getElementById('Select_Tj').value + 
	                '&Select_Order=' + document.getElementById('Select_Order').value + '&Pageid=' + document.getElementById('DDPage').value;
            }
             function LineOut(Type,User)
            {
                var lSrc = "admin_UserlineOut.aspx?UserType=" + Type + "&Userid=" + User;
//                document.getElementById('UserlineOut').src =  lSrc ;//�����ҳ�������������
                
                window.UserlineOut.location.href =  lSrc ;//�����ҳ�������ٴ����������������name ������ID
                
                
            }
            function LineOver(Type,User)
            {
                 document.getElementById('lineState' + Type + "-" + User ).setAttribute("className", "");
                 document.getElementById("lineState" + Type + "-" + User ).setAttribute("class", "");
            }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0"
    topmargin="0">
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
                                        &nbsp;&nbsp;���߹���:&nbsp;
                                        <select class="za_select" onchange="ShowPage();" name="User_Start" id="User_Start"
                                            runat="server">
                                            <option value="-1" selected>ȫ��</option>
                                            <option value="0">����</option>
                                            <option value="1">����</option>
                                        </select>
                                        -- ����:
                                        <select class="za_select" onchange="ShowPage();" name="Select_Tj" id="Select_Tj"
                                            runat="server">
                                            <option value="1" selected>����ʱ��</option>
                                            <option value="2">��Ա�ʺ�</option>
                                            <option value="3">��Ա����</option>
                                        </select>
                                        <select class="za_select" onchange="ShowPage();" name="Select_Order" id="Select_Order"
                                            runat="server">
                                            <option value="1" selected>����(��С����)</option>
                                            <option value="2">����(�ɴ�С)</option>
                                        </select>
                                        -- ��ҳ��:
                                        <select class="zaselect_ste" onchange="ShowPage();" name="page_f" id="DDPage" runat="server">
                                            <option value="1" selected>1</option>
                                        </select>
                                        /&nbsp;
                                        <asp:Label ID="ContSumPage" runat="server" Width="11px"></asp:Label>
                                        ҳ --&nbsp; <font color="#ff0000"></font>
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
        <table class="mem_index_tab" cellspacing="1" cellpadding="0" border="0" id="TableA"
            runat="server">
            <tbody>
                <tr class="mem_index_title">
                    <td>
                        ��Ա����</td>
                    <td>
                        ��Ա�ʺ�</td>
                    <td style="width: 50px">
                        ���ö��</td>
                    <td style="width: 50px">
                        ���ö��</td>
                    <td>
                        ����</td>
                    <td style="width: 50px">
                        ע������</td>
                    <td>
                        IP</td>
                    <td>
                        ����״��</td>
                    <td>
                        ״��</td>
                    <td colspan="2">
                        ����</td>
                </tr>
            </tbody>
        </table>
    </form>
    <iframe id='UserlineOut' name='UserlineOut' src="about:blank" frameborder="0" width="200px" scrolling="no" height="200px"
        style="background-color: black; display: none; visibility: hidden;" ></iframe>
</body>
</html>

