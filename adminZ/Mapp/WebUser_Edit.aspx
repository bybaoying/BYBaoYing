<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WebUser_Edit, App_Web_i89w4dwr" enableEventValidation="false" %>

<html>
<head>
    <title>USEREDIT</title>
 
    <link href="../style/control_main.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" type="text/javascript" src="../Scripts/JSTrim.js"></script>
    
    <script language="JavaScript" type="text/javascript" >
//检查信用额度字元限制
function CheckKey(){
             if(event.keyCode == 13) return true;
	if(!(event.keyCode > 47 && event.keyCode < 58 ))
	              {alert("信用额度只能输入数字!!"); return false;}
}
function SubChk(vChkType){
   
      if (document.getElementById('DLParentAdminId').selectedIndex == -1){
        alert("再添加会员前，请先添加：股东->总代理->代理!!"); return false;
      }
      if (  vChkType == 'Edd' ){

          if(document.getElementById('Tpassword').value.length < 6 && document.getElementById('Tpassword').value.length !=0)
		    {document.getElementById('Tpassword').focus(); alert("密码长度不可低於六个字!!"); return false; }
      }
      if (  vChkType == 'add' ){
          var vAdminIdStr = "";
          vAdminIdStr = document.getElementById('LabAdminId').innerHTML + document.getElementById('Tuserid').value;
          if (vAdminIdStr.length < 6){
          
                alert("帐号字符长度不低於六个字!!");
                document.getElementById('Tuserid').focus();
                 return false;
          }
          if(document.getElementById('Tpassword').value.length < 6)
		    {document.getElementById('Tpassword').focus(); alert("密码长度不可低於六个字!!"); return false; }
      }
      

      
      
      if(document.getElementById('Tname').value=='')
		{ document.getElementById('Tname').focus(); alert("名称请务必输入!!"); return false; }

//      if(document.getElementById('TAdminname').value=='')
//		{ document.getElementById('TAdminname').focus(); alert("名称请务必输入!!"); return false; }
		var lXynd_a = Number(document.getElementById('Txynd').value);
		
	    if (lXynd_a ==0 && (document.getElementById('Txynd').value.trim() =="") )
	    {
	        
	        alert("信用额度务必输入,不能为零!!"); return false;}
//		var lXynd_b = Number(document.getElementById('Labxynd').innerHTML);
//		if (lXynd_a > lXynd_b);
//      alert(document.getElementById('Labxynd').innerHTML);
//      
//      alert(document.getElementById('Txynd').value);
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


    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="Form1" method="post" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line" height="4">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_bg">
                        &nbsp;&nbsp;会员管理 --修改资料 --<a href="WebUser.aspx">回上一页</a>
                    </td>
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
                    <asp:DropDownList ID="DLParentAdminId" runat="server" AutoPostBack="True" Width="155px" OnSelectedIndexChanged="DLParentAdminId_SelectedIndexChanged">
                    </asp:DropDownList></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        会员帐户：</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="样式3"><font size="2">
                        <asp:Label ID="LabAdminId" runat="server" Text="0000"></asp:Label>
                        <asp:TextBox ID="Tuserid" runat="server" Width="121px" MaxLength="6"></asp:TextBox></font></span>&nbsp;</td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        密&nbsp;&nbsp;&nbsp;&nbsp; 码：</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="样式3">
                        <asp:TextBox ID="Tpassword" runat="server" MaxLength="12"></asp:TextBox>不更改请保留空 <strong><span style="color: #ff0000">密码长度 6~12 码(仅可接受!#$&amp;*+.=@|等特殊字元)</span></strong></span></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    名 &nbsp;&nbsp; 称：</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="Tname" runat="server" MaxLength="6"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    管理日期：</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="TxyndDate" runat="server"></asp:TextBox>&nbsp;</td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    注册时间：</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="Tdate" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <table class="m_tab_ed" cellspacing="1" cellpadding="0" width="780" border="0">
            <tbody>
                <tr class="m_title_edit">
                    <td colspan="2">
                        下注资料设定</td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        汇率设定：</td>
                    <td style="width: 391px">
                        人民币 ; 目前汇率:<font id="mcy_now" color="#ff0033">0</font></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        信用/现金：</td>
                    <td style="width: 391px">
                        <input id="TxtCashCreditY" runat="server"  name="CashCredit" type="radio" />使用信用<input id="TxtCashCreditN" runat="server" name="CashCredit" type="radio" />
                        使用现金&nbsp;
                    </td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        信用额度：</td>
                    <td style="width: 391px">
                        <asp:TextBox ID="Txynd" onkeypress="return CheckKey();" runat="server">0</asp:TextBox>
                        <asp:TextBox ID="TxyndA" runat="server" Visible="False" Width="12px"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="最大可用信誉额度："></asp:Label><asp:Label ID="Labxynd" runat="server"
                            ForeColor="Red"></asp:Label></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" width="120">
                        主盤-盘别：</td>
                    <td style="height: 24px; width: 391px;">
                        <select class="za_select" name="TxtUserLevel" style="width: 155px" id="TxtUserLevel" runat="server">
                            <option value="0" selected>A盘</option>
                            <option value="1">B盘</option>
                            <option value="2">C盘</option>
                            <option value="3">D盘</option>
                        </select>
                        &nbsp;&nbsp;
                        使用<input id="ChkTmsysUser" runat="server" type="checkbox" checked="CHECKED" /></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        福彩-盘别：</td>
                    <td style="width: 391px">
                        <select class="za_select" name="TxtUserLevel" style="width: 155px" id="TxtUserLevelD3" runat="server">
                            <option value="0" selected>A盘</option>
                            <option value="1">B盘</option>
                            <option value="2">C盘</option>
                            <option value="3">D盘</option>
                        </select>
                        &nbsp;
                        使用<input id="ChkD3sysUser" runat="server" type="checkbox" checked="CHECKED" /></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        體彩-盘别：</td>
                    <td style="width: 391px">
                        <select class="za_select" name="TxtUserLevel" style="width: 155px" id="TxtUserLevelP3" runat="server">
                            <option value="0" selected>A盘</option>
                            <option value="1">B盘</option>
                            <option value="2">C盘</option>
                            <option value="3">D盘</option>
                        </select>
                        &nbsp;
                        使用<input id="ChkP3sysUser" runat="server" type="checkbox" checked="CHECKED" /></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        提款密码：</td>
                    <td>
                        <asp:TextBox ID="TxtMoneyPwd" runat="server" MaxLength="12"></asp:TextBox>不更改请保留空 <strong><span style="color: #ff0000">密码长度 6~12 码(仅可接受!#$&amp;*+.=@|等特殊字元)</span></strong></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                    </td>
                    <td style="width: 391px">
                        <asp:Button ID="ButData" runat="server" Width="80px" Text="保存" OnClick="ButData_Click" OnClientClick="return SubChk('Edd');"></asp:Button>
                        <asp:Button ID="ButDataadd" runat="server" Width="80px" Text="添加" OnClick="ButDataadd_Click" OnClientClick="return SubChk('add');"></asp:Button>
                        <input id="CmdCancel" runat="server" name="act23" style="width: 80px" type="button" value="返回" /></td>
                </tr>
            </tbody>
        </table>
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </form>
</body>
</html>
