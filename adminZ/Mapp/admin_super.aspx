<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_admin_super, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <link href="../style/control_main.css" type="text/css" rel="stylesheet"/>

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript"> 
        function ShowPage()
        {
            document.location="?ParentId=" + document.getElementById("aid_f").value + "&AdminLevel=" + "<% =Request.QueryString["AdminLevel"] %>" + "&User_Start=" + document.getElementById("User_Start").value + "&Select_Tj=" + document.getElementById("Select_Tj").value + "&Select_Order=" + document.getElementById("Select_Order").value + "&Pageid=" + document.getElementById("DDPage").value;

        }
        function AddNewPage()
        {
             document.location="admin_superEdit.aspx?ParentId=" + document.getElementById("aid_f").value + "&AdminLevel=" + "<% =Request.QueryString["AdminLevel"] %>"  ;
        }
        function LineOut(Type,User)
        {                
            var lSrc = "admin_UserlineOut.aspx?UserType=" + Type + "&Userid=" + User;
            window.UserlineOut.location.href =  lSrc ;//点过的页，可以再次请求服务器。名用name 不能用ID
            
        }
        function LineOver(Type,User)
        {
             document.getElementById("lineState" + Type + "-" + User ).setAttribute("className", "");
             document.getElementById("lineState" + Type + "-" + User ).setAttribute("class", "");
        }
            
        function show_more( eTmWhere){
//            alert("poststr");
//            window.onbeforeunload=null;
            var obj_league = document.getElementById('line_window');
            obj_league.style.visibility='visible'; 
//              alert(window.event.clientY );
            var objTop = 100;
            var objHeight = 205 ;
//            if (objTop + objHeight > document.body.clientHeight + document.body.scrollTop){
//                obj_league.style.top=objTop -  objHeight + 'px';
//                obj_league.style.left ='100px';// window.event.clientX - window.event.offsetX
//                
//            }
//            else{
            
                  obj_league.style.top= objTop + 15 + 'px';
                  obj_league.style.left ='10px';// window.event.clientX - window.event.offsetX
//              } 
              window.Frm_AdminHelp.location.href =  'admin_helper.aspx?Parentid=' + eTmWhere  ; 
              
        }

        function Frm_EChipHid(){
            document.getElementById('line_window').style.visibility='hidden';
            window.Frm_AdminHelp.location = "about:blank"  ;
            
        }

        function User_Delete()
        {
            if (confirm('确定删除账号吗?如选择删除,此帐户下的所有帐户及注单一并删除!'))
            {
                return true;
            }else
            {
                return false;
            }
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
                                        &nbsp;&nbsp;<asp:Label ID="TableTit" runat="server"></asp:Label>管理:选择上级帐户
                                        <select id="aid_f" runat="server" class="zaselect_ste" name="aid_f" onchange="ShowPage();">
                                            <option selected="selected" value="">全部</option>
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
                                        <input class="za_button" onclick="AddNewPage();" type="button" value="新增" name="append" id="CmdAdd" runat="server">
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
                        帐户<br />
                        名称</td>
                    <td rowspan="2">
                        帐户<br />
                        ID</td>
                    <td rowspan="2">
                        上级<br />
                        帐户</td>
                    <td rowspan="2">
                        下级<br />
                        数</td>
                    <td rowspan="2">
                        会员数<br />
                        -Max</td>
                    <td colspan="2">
                        管理信用</td>
                    <td colspan="3">
                        占用股份(成数)</td>
                    <td rowspan="2">
                        走单</td>
                    <td rowspan="2">
                        在线状况</td>
                    <td rowspan="2">
                        状况</td>
                    <td colspan="3">
                        功能</td>
                </tr>
                <tr class="mem_index_title" style="height: 15px">
                    <td>
                        额度</td>
                    <td>
                        已用</td>
                    <td>
                        主盘</td>
                    <td>
                        福彩</td>
                    <td>
                        體彩</td>
                    <td>
                        走单
                    </td>
                    <td>
                        帐户
                    </td>
                    <td>
                        操作
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
    <iframe id='UserlineOut' name='UserlineOut' src="about:blank" frameborder="0" width="200px" scrolling="no" height="200px" bgcolor="#99ffff" style="visibility: hidden; height: 20px;"></iframe>
    <br />
    <div class="divPropertyBar" id="line_window" style="visibility: hidden; position: absolute; z-index: 1;">

        <iframe name="Frm_AdminHelp" src="about:blank" width="1024" height="400" frameborder="0"></iframe>
    </div>
</body>
</html>

