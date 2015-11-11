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
	            if(confirm('确定删除会员吗?如选择删除,会员帐户注单一并删除!'))
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
//                document.getElementById("UserlineOut'].src =  lSrc ;//点过的页，不在请求服务。 
                window.UserlineOut.location.href =  lSrc ;//点过的页，可以再次请求服务器。名用name 不能用ID
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
                                        &nbsp;&nbsp;会员管理: 选择代理商
                                        <select class="zaselect_ste" onchange="ShowPage();" id="aid_f" runat="server">
                                            <option value="" selected>全部</option>
                                        </select>
                                        <select class="za_select" onchange="ShowPage();" name="User_Start" id="User_Start" runat="server">
                                            <option value="-1" selected>全部</option>
                                            <option value="0">启动</option>
                                            <option value="1">停用</option>
                                        </select>
                                        -- 排序:
                                        <select class="za_select" onchange="ShowPage();" name="Select_Tj" id="Select_Tj" runat="server">
                                            <option value="1" selected>新增日期</option>
                                            <option value="2">会员帐号</option>
                                            <option value="3">会员名称</option>
                                        </select>
                                        <select class="za_select" onchange="ShowPage();" name="Select_Order" id="Select_Order" runat="server">
                                            <option value="1" selected>升幂(由小到大)</option>
                                            <option value="2">降幂(由大到小)</option>
                                        </select>
                                        -- 总页数:
                                        <select class="zaselect_ste" onchange="ShowPage();" name="page_f" id="DDPage" runat="server">
                                            <option value="1" selected>1</option>
                                        </select>
                                        /&nbsp;
                                        <asp:Label ID="ContSumPage" runat="server" Width="11px"></asp:Label>
                                        页 --
                                        <input class="za_button" onclick="JavaScript:document.location='WebUser_Edit.aspx?adminid=' + document.getElementById('aid_f').value " type="button" value="新增">
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
                        会员名称</td>
                    <td rowspan="2">
                        会员帐号</td>
                    <td rowspan="2">
                        上级帐号</td>
                    <td colspan="3">
                        会员信用</td>
                    <td colspan="3">
                        盘别</td>
                    <%--    <TD  style="width: 50px" rowspan="2">
        注册日期</TD>--%>
                    <td colspan="1" rowspan="2">
                        现金<br />
                        信用</td>
                    <td rowspan="2">
                        在线状况</td>
                    <td rowspan="2">
                        状况</td>
                    <td colspan="2">
                        功能</td>
                </tr>
                <tr class="mem_index_title" style="height: 15px">
                    <td>
                        额度</td>
                    <td>
                        已用</td>
                    <td>
                        现金</td>
                    <td>
                        主盘</td>
                    <td>
                        福彩</td>
                    <td>
                        體彩</td>
                    <td colspan="1">
                        帐户</td>
                    <td colspan="1">
                        操作</td>
                </tr>
            </tbody>
        </table>
    </form>
    <iframe id='UserlineOut' name='UserlineOut' src="about:blank" frameborder="0" width="200px" scrolling="no" height="200px" bgcolor="#99ffff" style="visibility: hidden"></iframe>
</body>
</html>
