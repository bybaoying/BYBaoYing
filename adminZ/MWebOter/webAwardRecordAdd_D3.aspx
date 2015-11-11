<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_webAwardRecordAdd_Sd, App_Web_hmaezzcm" enableEventValidation="false" %>

<html>
<head>
    <title></title>
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">

    <script src="../Scripts/Calendar30.js" type="text/javascript" language="javascript"
        charset="gb2312"></script>

    <script language="JavaScript" type="text/javascript" >
            WebCalendar.yearFall   = 50;           //定义年下拉框的年差值
            WebCalendar.format     = "yyyy-mm-dd"; //回传日期的格式 | "2003-06-07"
            WebCalendar.timeShow   = false; //是否返回时间  |true
            WebCalendar.drag       = true;//是否允许拖动  | false
            WebCalendar.darkColor  = "#0000D0";    //控件的暗色
            WebCalendar.lightColor = "#FFFFFF";    //控件的亮色
            WebCalendar.btnBgColor = "#FFFFF5";    //控件的按钮背景色
            WebCalendar.wordColor  = "#000080";    //控件的文字颜色
            WebCalendar.wordDark   = "#DCDCDC";    //控件的暗文字颜色
            WebCalendar.dayBgColor = "#E6E6FA";    //日期数字背景色
            WebCalendar.todayColor = "#FF0000";    //今天在日历上的标示背景色
            WebCalendar.DarkBorder = "#D4D0C8";    //日期显示的立体表达色
    </script>

    <script language="JavaScript" type="text/javascript" >
            var mTmid = 0 ;
            function TmClick(vTmno)
            {
                if (mTmid >= 3)
                {
                    return false ;
                }
                else
                {
                    mTmid = mTmid + 1 ;                
                }
                
     

                document.getElementById("TextBox" + String(mTmid)).value= vTmno.innerHTML ;
                
                document.getElementById("TmNoN").innerHTML = String(mTmid) ;

                return false ;
            }
            function TmCancel()
            {
                if (mTmid > 3)
                {
                    mTmid = mTmid - 1 ;
                    return false ;
                }
                if (mTmid <= 0)
                {
                    return false ;
                } 
                document.getElementById("TextBox" + String(mTmid)).value= "" ;
                 mTmid = mTmid - 1 ;
                
               
                return false ;
            }


             function AddWinResult()
            {


                 document.location='WebWinResult.aspx'   ;
            }
            
            function SubCheck()
            {

                
           
                if (document.getElementById("Ttmwinno").value == "")
                {
                    alert( "请写入开奖期数ID号"); 
                    return false ;
                }
                 if ("" == document.getElementById("TtmwinName").value)
                {
                    alert( "请写入开奖名称"); return false ;
                }
                 if ("" == document.getElementById("Ttmwindate").value)
                {
                    alert( "请写入开奖日期"); return false ;
                }
 	            for (var i = 1 ; i < 4 ; i++){
                    if (document.getElementById("TextBox" + String(i)).value ==""){
                        
                        alert( "请写入开奖号码");
                        document.getElementById("TextBox" + String(i)).focus(); 
                        return false ;
                    }
	            }  
                document.getElementById("TmNoN").value = String(3) ;

                return true ;
            }
    </script>

    <link href="../style/members.css" rel="stylesheet" type="text/css">
</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0"
    topmargin="0">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="td_banner_m">
                    <td>
                        &nbsp;&nbsp;开奖记录补录:
                        <asp:HyperLink ID="PageId" runat="server" NavigateUrl="WebWinResult.aspx">回上一页</asp:HyperLink></td>
                </tr>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table2" class="m_tab_ed">
            <tr class="mem_index_cen">
                <td>
                    <table id="TableA" width="208" border="0" align="center" runat="server" style="background-color: #330000">
                        <tr>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30"
                                id="TD1" runat="server">
                                <asp:LinkButton ID="LinkButton0" runat="server" CommandName="0" OnClientClick ="return TmClick(this);">0</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="1" OnClientClick ="return TmClick(this);">1</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="2" OnClientClick ="return TmClick(this);">2</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="3" OnClientClick ="return TmClick(this);">3</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="4" OnClientClick ="return TmClick(this);">4</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30">
                                <asp:LinkButton ID="LinkButton5" runat="server" CommandName="5" OnClientClick ="return TmClick(this);">5</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/r.gif" height="30">
                                <asp:LinkButton ID="LinkButton6" runat="server" CommandName="6" OnClientClick ="return TmClick(this);">6</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton7" runat="server" CommandName="7" OnClientClick ="return TmClick(this);">7</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/g.gif" height="30">
                                <asp:LinkButton ID="LinkButton8" runat="server" CommandName="8" OnClientClick ="return TmClick(this);">8</asp:LinkButton></td>
                            <td class="ball_td" align="center" width="65" background="../imagesBall/b.gif" height="30">
                                <asp:LinkButton ID="LinkButton9" runat="server" CommandName="9" OnClientClick ="return TmClick(this);">9</asp:LinkButton></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table id="Table3" class="m_tab_ed">
            <tr>
                <td class="m_title_edit" colspan="6">
                    信息设置
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" style="text-align: left">
                    开奖期数：</td>
                <td width="50px">
                    <asp:TextBox ID="Ttmwinno" runat="server" MaxLength="5" Width="60px"></asp:TextBox></td>
                <td class="m_mem_ed" style="text-align: left">
                    开奖名称：
                </td>
                <td>
                    <asp:TextBox ID="TtmwinName" runat="server" MaxLength="6" Width="60px"></asp:TextBox></td>
                <td class="m_mem_ed" style="text-align: left">
                    开奖日期：</td>
                <td>
                    <asp:TextBox ID="Ttmwindate" name="Ttmwindate" runat="server" Width="101px"></asp:TextBox><asp:ImageButton
                        ID="ImageButton3" runat="server" ImageUrl="../images/calendar.gif" OnClientClick="calendar(document.getElementById('Ttmwindate'),event);return false;" />
                </td>
            </tr>
        </table>
        <table id="Table1" class="m_tab_ed" runat="server">
            <tr class="m_title_edit">
                <td colspan="3">
                    <p align="center">
                        <asp:Label ID="LabGameCaption" runat="server"></asp:Label>-开奖彩球号码</p>
                        
                        
                </td>
            </tr>
            <tr class="m_title_edit">
                <td align="center">
                    佰</td>
                <td align="center">
                    拾</td>
                <td align="center">
                    个</td>
            </tr>
            <tr class="m_rig">
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox2" runat="server" Width="40px"></asp:TextBox></td>
                <td align="center">
                    <asp:TextBox ID="TextBox3" runat="server" Width="40px"></asp:TextBox></td>
            </tr>
            <tr class="m_rig">
                <td align="center" colspan="3">
                    <input id="Button1" type="button" value="取消" onclick="TmCancel();" />&nbsp;
                    <asp:Button ID="TmOk" runat="server" Text="保存" ToolTip="" OnClick="TmOk_Click" OnClientClick="return SubCheck();">
                    </asp:Button>
                    <asp:textbox id="TmNoN" runat="server" Width="14px" style="display: none">1</asp:textbox></td>
            </tr>
            <tr class="m_rig">
                <td align="left" colspan="3">
                    下期期数:如今年是2093年的第一期,则填写"93001"
                    <br />
                    下期名称:如今年是2093年的第一期,则填写"93001"<br />
                    开奖时间:为球号开码的时间:如2093-01-01 20:30</td>
            </tr>
        </table>
    </form>
</body>
</html>

