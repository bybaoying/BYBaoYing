<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_admin_pasword, App_Web_i89w4dwr" enableEventValidation="false" %>

<html>
<head>
    <title></title>
    <link href="../style/members.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">
        //检查信用额度字元限制
        function CheckKey(){
                     if(event.keyCode == 13) return true;
	        if(!(event.keyCode > 47 && event.keyCode < 58 ))
	                      {alert("信用额度只能输入数字!!"); return false;}
        }
        function SubChk(){
	        if(document.getElementById('password').value=='')
		        { document.getElementById('password').focus(); alert("密码请务必输入!!"); return false; }
	        if(document.getElementById('password').value.length < 6)
		        {document.getElementById('password').focus(); alert("密码长度不可低於六个字!!"); return false; }
	        if(document.getElementById('repassword').value=='')
	        { document.getElementById('repassword').focus(); alert("确认密码请务必输入!!"); return false; }

	        if(document.getElementById('maxcredit').value<0 || document.getElementById('maxcredit').value==''){
	          document.getElementById('maxcredit').focus();
	          alert("总信用额度请务必输入!!");
	          return false;
	        }
                
	        if(!confirm("是否确定写入会员资料?")){return false;}

        }


        function Chg_Mcy(a){
	        curr=new Array();
	        curr_now=new Array();
        	
          
            if (document.getElementById('ratio').value==''){
              tmp=document.getElementById('currency').options[document.getElementById('currency').selectedIndex].value;
	          ratio=eval(curr[tmp]);
              ratio_now=eval(curr_now[tmp]);
            }else{
	          ratio=eval(document.getElementById('ratio').value);
              ratio_now=eval(document.getElementById('ratio_now').value);
            }
            if (a=='mx')
            {
              tmp_count=ratio*eval(document.getElementById('maxcredit').value);
              tmp_count=Math.round(tmp_count*100);
	          tmp_count=tmp_count/100;
              document.getElementById('mcy_mx').innerHTML=tmp_count;
            }
            if (a=='now')
            {
              document.getElementById('mcy_now').innerHTML=ratio_now;
            }
        }
                function ShowPage()
                {

                    return false;
                }
        var mSystype;
        function PageLoad(){
            mSystype = "<% = mSysType %>" ;

            switch (mSystype)
            {  
                case "":
                      document.getElementById("ClickTM").setAttribute("className", "m_ClickType_Open");
                      document.getElementById("ClickTM").setAttribute("class", "m_ClickType_Open");
                      break;
                case "TM":
                      document.getElementById("ClickTM").setAttribute("className", "m_ClickType_Open");
                      document.getElementById("ClickTM").setAttribute("class", "m_ClickType_Open");
                    break;
                case "D3":
                     document.getElementById("ClickD3").setAttribute("className", "m_ClickType_Open");
                     document.getElementById("ClickD3").setAttribute("class", "m_ClickType_Open");
                    break;
                case "P3":
                     document.getElementById("ClickP3").setAttribute("className", "m_ClickType_Open");
                     document.getElementById("ClickP3").setAttribute("class", "m_ClickType_Open");
                    break;
            }
        }
        function HrefType(UrlStr,vType)
        {
             
            location= UrlStr + '?' + vType ;
           
        }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0" onload="PageLoad();">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr>
                    <td class="td_banner_m">
                        &nbsp;&nbsp;<asp:Label ID="TableTit" runat="server"></asp:Label>管理 --修改资料 --<a href="WebUser.aspx"></a>
                    </td>
                </tr>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="mem_index_ctrl_space">
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table1" class="m_tab_ed" cellspacing="1" cellpadding="0" width="780" border="0">
            <tr class="m_title_edit">
                <td colspan="8">
                    <b>资料管理</b></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120" style="height: 25px">
                    用 户 名：</td>
                <td colspan="5">
                    <asp:Label ID="UserNameA" runat="server" Width="132px"></asp:Label></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120" style="height: 25px">
                    信用额度：</td>
                <td colspan="5">
                    <asp:Label ID="Txynd" runat="server" Width="132px"></asp:Label></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        初始密码：</div>
                </td>
                <td colspan="5">
                    <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    新密码：</td>
                <td colspan="5">
                    <asp:TextBox ID="newpwd" runat="server" TextMode="Password"></asp:TextBox><strong><span style="color: #ff0000">密码长度 6~12 码且需英数混用(仅可接受!#$&amp;*+.=@|等特殊字元)同组密码限用30天</span></strong>
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    确认密码：</td>
                <td colspan="5">
                    <asp:TextBox ID="newpwda" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr class="mem_index_cen">
                <td class="m_mem_ed" width="120">
                </td>
                <td colspan="5">
                    &nbsp; &nbsp;
                    <asp:Button ID="cmdOKy" runat="server" Height="26px" OnClick="cmdOKy_Click" Text="确定" Width="128px" /></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    会员数量：</td>
                <td colspan="5">
                    <asp:Label ID="LabVipNumber" runat="server" ForeColor="Red">0</asp:Label></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    主盤-成数：</td>
                <td>
                    <asp:Label ID="LabPercentNum" runat="server" ForeColor="Red">0</asp:Label>
                    <input id="ChkTmsysUser" runat="server" checked="checked" disabled="disabled" type="checkbox" /></td>
                <td class="m_mem_ed" width="120">
                    福彩-成数：</td>
                <td>
                    &nbsp;<asp:Label ID="LabPercentNumD3" runat="server" ForeColor="Red">0</asp:Label>
                    <input id="ChkD3sysUser" runat="server" checked="checked" disabled="disabled" type="checkbox" /></td>
                <td class="m_mem_ed" width="120">
                    體彩-成数：</td>
                <td>
                    &nbsp;<asp:Label ID="LabPercentNumP3" runat="server" ForeColor="Red">0</asp:Label><input id="ChkP3sysUser" runat="server" checked="checked" disabled="disabled" type="checkbox" /></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    主盤-信用：</td>
                <td>
                    <asp:Label ID="Labxynd" runat="server" ForeColor="Red"></asp:Label></td>
                <td class="m_mem_ed" width="120">
                    福彩-信用：</td>
                <td>
                    <asp:Label ID="LabxyndD3" runat="server" ForeColor="Red"></asp:Label></td>
                <td class="m_mem_ed" width="120">
                    體彩-信用：</td>
                <td>
                    <asp:Label ID="LabxyndP3" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
        <br />
        <table id="TabSysType" runat="server">
            <tr>
                <td id="Td1" style="width: 74px">
                </td>
                <td id="TdClickTM" runat="server">
                    <a id="ClickTM" class="m_ClickType_Close" href="javascript:HrefType('','SysType=TM')">[主盤]</a>
                </td>
                <td id="Td3">
                    |
                </td>
                <td id="TdClickD3" runat="server">
                    <a id="ClickD3" class="m_ClickType_Close" href="javascript:HrefType('','SysType=D3')">[福彩]</a>
                </td>
                <td id="Td5">
                    |
                </td>
                <td id="TdClickP3" runat="server">
                    <a id="ClickP3" class="m_ClickType_Close" href="javascript:HrefType('','SysType=P3')">[體彩]</a>
                </td>
            </tr>
        </table>
        <table class="m_tab_ed" cellspacing="1" cellpadding="0" border="0" id="TableA" runat="server">
            <tbody>
                <tr class="m_title_edit2">
                    <td style="width: 120px;" rowspan="2">
                        项目</td>
                    <td colspan="4">
                        退水设定</td>
                    <td colspan="4">
                        限额设定</td>
                </tr>
                <tr class="m_title_edit2">
                    <td>
                        A盘</td>
                    <td>
                        B盘</td>
                    <td>
                        C盘</td>
                    <td>
                        D盘</td>
                    <td>
                        单项最小</td>
                    <td id="CapTmTypeDx" runat="server">
                        单项-最大</td>
                    <td id="CapTmTypeDz" runat="server">
                        单号-最大</td>
                    <td id="CapTmTypeDc" runat="server">
                        单注-最大</td>
                </tr>
                <tr class="mem_index_cen">
                    <td align="middle" bgcolor="#ffffff" colspan="12" style="height: 20px" id="Cont_Edit" runat="server">
                        <asp:Button ID="ButData" runat="server" OnClick="ButData_Click" Text="确定" Width="40px" />
                        &nbsp; &nbsp;&nbsp; &nbsp;
                        <input class="za_button" id="Button1" onclick="document.location='WebUser.aspx'" type="button" value="取消" name="FormsButton2">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
