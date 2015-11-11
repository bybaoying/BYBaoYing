<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_webPropertyshow, App_Web_3mbbw7kj" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript">
        //通下注
        function SelectBallType(vTmno){
        
            if (Number(document.getElementById("TxtXa").value)<=0)
            {
                document.getElementById("TxtXa").focus();
                alert("通下金额不能为零!!");
                return ;
            }
            parent.SelectBallType(vTmno,document.getElementById("TxtXa").value)
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
                            金额:<input id="TxtXa" style="width: 55px" type="text" /></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label" style="width: 50%">
                            <asp:HyperLink ID="ContTmRBall" runat="server" BackColor="Red" ForeColor="Black"
                                NavigateUrl="javascript:SelectBallType('01.02.07.08.12.13.18.19.23.24.29.30.34.35.40.45.46.')">红波</asp:HyperLink></td>
                        <td align="center" class="td_Label" style="width: 50%">
                            <asp:HyperLink ID="ContTmGBall" runat="server" BackColor="Lime" ForeColor="Black"
                                NavigateUrl="javascript:SelectBallType('05.06.11.16.17.21.22.27.28.32.33.38.39.43.44.49.')">绿波</asp:HyperLink>
                        </td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label" colspan="2">
                            <asp:HyperLink ID="ContTmBBall" runat="server" BackColor="Blue" ForeColor="Black"
                                NavigateUrl="javascript:SelectBallType('03.04.09.10.14.15.20.25.26.31.36.37.41.42.47.48.')">蓝波</asp:HyperLink></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="ContTmDr" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('01.03.05.07.09.11.13.15.17.19.21.23.25.27.29.31.33.35.37.39.41.43.45.47.')">单</asp:HyperLink>
                            <asp:HyperLink ID="ContTmSa" runat="server" BackColor="#FF80FF" NavigateUrl="javascript:SelectBallType('02.04.06.08.10.12.14.16.18.20.22.24.26.28.30.32.34.36.38.40.42.44.46.48.')">双</asp:HyperLink></td>
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="ContTmDa" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.')">大</asp:HyperLink>
                            <asp:HyperLink ID="ContTmXa" runat="server" BackColor="#FFC0FF" NavigateUrl="javascript:SelectBallType('01.02.03.04.05.06.07.08.09.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.')">小</asp:HyperLink></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="ContTmDrDa" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('25.27.29.31.33.35.37.39.41.43.45.47.')">单大</asp:HyperLink></td>
                        <td style="width: 90px; height: 31px" align="center" class="td_Label">
                            <asp:HyperLink ID="ContTmDrXa" runat="server" BackColor="#FF80FF" NavigateUrl="javascript:SelectBallType('01.03.05.07.09.11.13.15.17.19.21.23.')">单小</asp:HyperLink></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="ContTmSaDa" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('26.28.30.32.34.36.38.40.42.44.46.48.')">双大</asp:HyperLink></td>
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="ContTmSaXa" runat="server" BackColor="#FFC0FF" NavigateUrl="javascript:SelectBallType('02.04.06.08.10.12.14.16.18.20.22.24.')">双小</asp:HyperLink></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="ContTmHdr" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('01.03.05.07.09.10.12.14.16.18.21.23.25.27.29.30.32.34.36.38.41.43.45.47.')">合单</asp:HyperLink></td>
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="ContTmHSa" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBallType('02.04.06.08.11.13.15.17.19.20.22.24.26.28.31.33.35.37.39.40.42.44.46.48.')">合双</asp:HyperLink></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_wx_j" runat="server" BackColor="Yellow">金</asp:HyperLink>
                            <asp:HyperLink ID="Cont_wx_m" runat="server" BackColor="#FFC080">木</asp:HyperLink></td>
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_wx_s" runat="server" BackColor="#8080FF">水</asp:HyperLink>
                            <asp:HyperLink ID="Cont_wx_h" runat="server" BackColor="#FF80FF">火</asp:HyperLink>
                            </td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label" colspan="2">
                            <asp:HyperLink ID="Cont_wx_t" runat="server" BackColor="SaddleBrown">土</asp:HyperLink></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_jq" runat="server" BackColor="#FF80FF">家禽</asp:HyperLink>
                        </td>
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_ys" runat="server" BackColor="#80FFFF">野兽</asp:HyperLink></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_qx" runat="server" BackColor="#FFFF80">前六</asp:HyperLink></td>
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_hx" runat="server" BackColor="#80FF80">后六</asp:HyperLink></td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_1" runat="server">鼠</asp:HyperLink>
                            <asp:HyperLink ID="Cont_2" runat="server">牛</asp:HyperLink>
                            </td>
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_3" runat="server">虎</asp:HyperLink>
                            <asp:HyperLink ID="Cont_4" runat="server">兔</asp:HyperLink>
                        </td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_5" runat="server">龙</asp:HyperLink>
                            <asp:HyperLink ID="Cont_6" runat="server">蛇</asp:HyperLink></td>
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_7" runat="server">马</asp:HyperLink>
                            <asp:HyperLink ID="Cont_8" runat="server">羊</asp:HyperLink>
                        </td>
                    </tr>
                    <tr class="Tr_Label">
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_9" runat="server">猴</asp:HyperLink>
                            <asp:HyperLink ID="Cont_10" runat="server">鸡</asp:HyperLink></td>
                        <td align="center" class="td_Label">
                            <asp:HyperLink ID="Cont_11" runat="server">狗</asp:HyperLink>
                            <asp:HyperLink ID="Cont_12" runat="server">猪</asp:HyperLink></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

