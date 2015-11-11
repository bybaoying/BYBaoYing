<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_admin_superEdit, App_Web_i89w4dwr" enableEventValidation="false" %>

<html>
<head>
    <title></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href="../style/control_main.css" rel="stylesheet" type="text/css">

    <script>
//检查信用额度字元限制
function CheckKey(){
             if(event.keyCode == 13) return true;
	if(!(event.keyCode > 47 && event.keyCode < 58 ))
	              {alert("信用额度只能输入数字!!"); return false;}
}

//	if(document.getElementById('password').value=='')
//		{ document.getElementById('password').focus(); alert("密码请务必输入!!"); return false; }
//	if(document.getElementById('password').value.length < 6)
//		{document.getElementById('password').focus(); alert("密码长度不可低於六个字!!"); return false; }
//	if(document.getElementById('repassword').value=='')
//	{ document.getElementById('repassword').focus(); alert("确认密码请务必输入!!"); return false; }

//	if(document.getElementById('maxcredit').value<0 || document.getElementById('maxcredit').value==''){
//	  document.getElementById('maxcredit').focus();
//	  alert("总信用额度请务必输入!!");
//	  return false;
//	}
function SubChk(vChkType){
      if (document.getElementById('DLParentAdminId').selectedIndex == -1){
        alert("再添管理员前，请先添加：股东->总代理->代理!!"); return false;
      }      
      if (  vChkType == 'Edd' ){

          if(document.getElementById('Tpassword').value.length < 6 && document.getElementById('Tpassword').value.length !=0)
		    {document.getElementById('Tpassword').focus(); alert("密码长度不可低於六个字!!"); return false; }
      }
      if (  vChkType == 'add' ){
          var vAdminIdStr = "";
          vAdminIdStr = document.getElementById('LabAdminId').innerHTML + document.getElementById('TAdminId').value;
          if (vAdminIdStr.length < 6){
                alert("帐号字符长度不低於六个字!!");
                document.getElementById('TAdminId').focus();
                 return false;
          }
          if(document.getElementById('Tpassword').value.length < 6)
		    {document.getElementById('Tpassword').focus(); alert("密码长度不可低於六个字!!"); return false; }
      }
      

      
      
      if(document.getElementById('TAdminname').value=='')
		{ document.getElementById('TAdminname').focus(); alert("请输入名称!!"); return false; }

	    if(!confirm("是否确定写入管理员资料?")){return false;}
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
            document.location= "<% Response.Write(PageId.NavigateUrl); %>"  ;
//            location='WebSetup_PlZm.aspx?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=' + document.getElementById('retime').value; 
            return false;
        }

    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0"
    topmargin="0">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line" height="4">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_bg">
                        &nbsp;&nbsp;<asp:Label ID="TableTit" runat="server"></asp:Label>管理 --修改资料 --<a href="WebUser.aspx"></a>
                        <asp:HyperLink ID="PageId" runat="server">回上一页</asp:HyperLink></td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line" height="4">
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table1" class="m_tab_ed" cellspacing="1" cellpadding="0" width="780" border="0">
            <tr class="m_title_edit">
                <td colspan="4">
                    <b>基本资料设定</b>
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    上级帐户：</td>
                <td class="tdbg 样式3" colspan="3">
                    <asp:DropDownList ID="DLParentAdminId" runat="server" AutoPostBack="True" Width="155px"
                        OnSelectedIndexChanged="DLParentAdminId_SelectedIndexChanged">
                    </asp:DropDownList></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        管理帐户：</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="样式3"><font size="2">
                        <asp:Label ID="LabAdminId" runat="server" Text="0000"></asp:Label>
                        <asp:TextBox ID="TAdminId" runat="server" Width="121px" MaxLength="6"></asp:TextBox></font></span>&nbsp;</td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        密&nbsp;&nbsp;&nbsp;&nbsp; 码：</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="样式3">
                        <asp:TextBox ID="Tpassword" runat="server" MaxLength="12"></asp:TextBox>不更改请保留空
                        <strong><span style="color: #ff0000">密码长度 6~12 码(仅可接受!#$&amp;*+.=@|等特殊字元)</span></strong></span></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    名 &nbsp;&nbsp; 称：</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="TAdminname" runat="server" MaxLength="6"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    管理日期：</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="TAdminDate" runat="server"></asp:TextBox>&nbsp;</td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    注册日期：</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="TLogDate" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <table class="m_tab_ed" cellspacing="1" cellpadding="0" width="780" border="0">
            <tbody>
                <tr class="m_title_edit">
                    <td colspan="3">
                        下注资料设定</td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        汇率设定:</td>
                    <td>
                    </td>

                    <td>
                        人民币 ; 目前汇率:<font id="mcy_now" color="#ff0033">0</font></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        会员数量：</td>
                    <td>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtVipNumber" runat="server" onkeypress="return CheckKey();">0</asp:TextBox>会员数量已用：<asp:Label
                            ID="LabVipNumberYY" runat="server" ForeColor="Red">0</asp:Label>
                        <asp:Label ID="ddddd" runat="server" Text="最大可用会员数量："></asp:Label><asp:Label ID="LabVipNumber"
                            runat="server" ForeColor="Red">0</asp:Label>
                        <asp:TextBox ID="TxtVipNumberMin" runat="server" Width="68px" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="TxtVipNumberMax" runat="server" Width="68px" Visible="False"></asp:TextBox></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" width="120" style="height: 24px">
                        信用额度：</td>
                    <td style="height: 24px">
                    </td>
                    <td style="height: 24px">
                        <asp:TextBox ID="Txynd" onkeypress="return CheckKey();" runat="server">10</asp:TextBox>
                        <asp:TextBox ID="TxyndA" runat="server" Width="12px" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="Txyndyy" runat="server" Visible="False"></asp:TextBox><asp:Label
                            ID="Label1" runat="server" Text="最大可用信誉额度："></asp:Label><asp:Label ID="Labxynd" runat="server"
                                ForeColor="Red"></asp:Label></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="height: 25px">
                        主盤-成数：</td>
                    <td style="height: 25px">
                        使用<input id="ChkTmsysUser" runat="server" type="checkbox" checked="CHECKED" /></td>
                    <td style="height: 25px">
                        <asp:DropDownList ID="TProvince" runat="server" Width="155px">
                        </asp:DropDownList><asp:Label ID="Label2" runat="server" Text="最大所占成数："></asp:Label><asp:Label
                            ID="LabPercentNum" runat="server" ForeColor="Red">0</asp:Label>
                        <asp:TextBox ID="TProvinceA" runat="server" Visible="False" Width="12px"></asp:TextBox></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="height: 25px">
                        福彩-成数：</td>
                    <td style="height: 25px">
                        使用<input id="ChkD3sysUser" runat="server" type="checkbox" checked="CHECKED" /></td>
                    <td style="height: 25px">
                        <asp:DropDownList ID="TProvinceD3" runat="server" Width="155px">
                        </asp:DropDownList><asp:Label ID="Label3" runat="server" Text="最大所占成数："></asp:Label><asp:Label
                            ID="LabPercentNumD3" runat="server" ForeColor="Red">0</asp:Label>
                        <asp:TextBox ID="TProvinceAD3" runat="server" Visible="False" Width="12px"></asp:TextBox>
                    </td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="height: 25px">
                        體彩-成数：</td>
                    <td style="height: 25px">
                        使用<input id="ChkP3sysUser" runat="server" type="checkbox" checked="CHECKED" /></td>
                    <td style="height: 25px">
                        <asp:DropDownList ID="TProvinceP3" runat="server" Width="155px">
                        </asp:DropDownList><asp:Label ID="Label4" runat="server" Text="最大所占成数："></asp:Label><asp:Label
                            ID="LabPercentNumP3" runat="server" ForeColor="Red">0</asp:Label>
                        <asp:TextBox ID="TProvinceAP3" runat="server" Visible="False" Width="12px"></asp:TextBox>
                    </td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="height: 25px">
                        </td>
                    <td style="height: 25px">
                        </td>
                    <td style="height: 25px">
                        </td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                    </td>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="ButData" runat="server" Text="保存" OnClick="ButData_Click"
                            OnClientClick="return SubChk('Edd');" Width="80px"></asp:Button>
                        <asp:Button ID="ButDataadd" runat="server" Text="添加" OnClick="ButDataadd_Click"
                            OnClientClick="return SubChk('add');" Width="80px"></asp:Button>&nbsp;
                        <input id="CmdCancel" runat="server" name="act23" style="width: 80px" type="button" value="返回" /></td>
                </tr>
            </tbody>
        </table>
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </form>
</body>
</html>

