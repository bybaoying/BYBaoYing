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
            window.UserlineOut.location.href =  lSrc ;//�����ҳ�������ٴ����������������name ������ID
            
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
            if (confirm('ȷ��ɾ���˺���?��ѡ��ɾ��,���ʻ��µ������ʻ���ע��һ��ɾ��!'))
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
                                        &nbsp;&nbsp;<asp:Label ID="TableTit" runat="server"></asp:Label>����:ѡ���ϼ��ʻ�
                                        <select id="aid_f" runat="server" class="zaselect_ste" name="aid_f" onchange="ShowPage();">
                                            <option selected="selected" value="">ȫ��</option>
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
                                        <input class="za_button" onclick="AddNewPage();" type="button" value="����" name="append" id="CmdAdd" runat="server">
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
                        �ʻ�<br />
                        ����</td>
                    <td rowspan="2">
                        �ʻ�<br />
                        ID</td>
                    <td rowspan="2">
                        �ϼ�<br />
                        �ʻ�</td>
                    <td rowspan="2">
                        �¼�<br />
                        ��</td>
                    <td rowspan="2">
                        ��Ա��<br />
                        -Max</td>
                    <td colspan="2">
                        ��������</td>
                    <td colspan="3">
                        ռ�ùɷ�(����)</td>
                    <td rowspan="2">
                        �ߵ�</td>
                    <td rowspan="2">
                        ����״��</td>
                    <td rowspan="2">
                        ״��</td>
                    <td colspan="3">
                        ����</td>
                </tr>
                <tr class="mem_index_title" style="height: 15px">
                    <td>
                        ���</td>
                    <td>
                        ����</td>
                    <td>
                        ����</td>
                    <td>
                        ����</td>
                    <td>
                        �w��</td>
                    <td>
                        �ߵ�
                    </td>
                    <td>
                        �ʻ�
                    </td>
                    <td>
                        ����
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

