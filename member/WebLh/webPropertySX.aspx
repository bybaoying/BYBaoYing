<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_webPropertySX, App_Web_3mbbw7kj" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript">
        //通下注
        function SelectBallType(vTmno){
        
            if (Number(document.getElementById("TxtMoney").value)<=0)
            {
                document.getElementById("TxtMoney").focus();
                alert("通下金额不能为零!!");
                return ;
            }
            parent.SelectBallType(vTmno,document.getElementById("TxtMoney").value)
        }
        
        function SelectType(vType){
            parent.SelectType(vType,document.getElementById("TxtMoney"))
        }
    </script>
</head><%--oncontextmenu="window.event.returnValue=false;self.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false"--%>
<body >
    <form id="form1" runat="server"  EnableViewState="False">
        <div  style="width: 120px">
            <table id="Table6" width="100%" class="table_ChipOther" cellspacing="1">
                <tbody>
                    <tr >
                        <td class="td_Head_set_cen"  colspan="2">
                            <b >通下</b><b >金额</b></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label" colspan="2">
                            金额:<input id="TxtMoney" style="width: 55px" type="text" /></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <a  ID="ContTmDr" runat="server" BackColor="#80FF80" href="javascript:SelectType('dr')">单</a>
                            </td>
                        <td align="center" class="td_Label">
                            <a  ID="ContTmSa" runat="server" BackColor="#FF80FF" href="javascript:SelectType('sa')">双</a></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <a ID="Cont_jq" runat="server" BackColor="#FF80FF" href="javascript:SelectType('jq')">家禽</a>
                        </td>
                        <td align="center" class="td_Label">
                            <a ID="Cont_ys" runat="server" BackColor="#80FFFF" href="javascript:SelectType('ys')">野兽</a></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <a ID="Cont_qx" runat="server" BackColor="#FFFF80" href="javascript:SelectType('qx')">前六</a></td>
                        <td align="center" class="td_Label">
                            <a ID="Cont_hx" runat="server" BackColor="#80FF80" href="javascript:SelectType('hx')">后六</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

