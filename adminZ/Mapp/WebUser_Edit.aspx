<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WebUser_Edit, App_Web_i89w4dwr" enableEventValidation="false" %>

<html>
<head>
    <title>USEREDIT</title>
 
    <link href="../style/control_main.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" type="text/javascript" src="../Scripts/JSTrim.js"></script>
    
    <script language="JavaScript" type="text/javascript" >
//������ö����Ԫ����
function CheckKey(){
             if(event.keyCode == 13) return true;
	if(!(event.keyCode > 47 && event.keyCode < 58 ))
	              {alert("���ö��ֻ����������!!"); return false;}
}
function SubChk(vChkType){
   
      if (document.getElementById('DLParentAdminId').selectedIndex == -1){
        alert("����ӻ�Աǰ��������ӣ��ɶ�->�ܴ���->����!!"); return false;
      }
      if (  vChkType == 'Edd' ){

          if(document.getElementById('Tpassword').value.length < 6 && document.getElementById('Tpassword').value.length !=0)
		    {document.getElementById('Tpassword').focus(); alert("���볤�Ȳ��ɵ��������!!"); return false; }
      }
      if (  vChkType == 'add' ){
          var vAdminIdStr = "";
          vAdminIdStr = document.getElementById('LabAdminId').innerHTML + document.getElementById('Tuserid').value;
          if (vAdminIdStr.length < 6){
          
                alert("�ʺ��ַ����Ȳ����������!!");
                document.getElementById('Tuserid').focus();
                 return false;
          }
          if(document.getElementById('Tpassword').value.length < 6)
		    {document.getElementById('Tpassword').focus(); alert("���볤�Ȳ��ɵ��������!!"); return false; }
      }
      

      
      
      if(document.getElementById('Tname').value=='')
		{ document.getElementById('Tname').focus(); alert("�������������!!"); return false; }

//      if(document.getElementById('TAdminname').value=='')
//		{ document.getElementById('TAdminname').focus(); alert("�������������!!"); return false; }
		var lXynd_a = Number(document.getElementById('Txynd').value);
		
	    if (lXynd_a ==0 && (document.getElementById('Txynd').value.trim() =="") )
	    {
	        
	        alert("���ö���������,����Ϊ��!!"); return false;}
//		var lXynd_b = Number(document.getElementById('Labxynd').innerHTML);
//		if (lXynd_a > lXynd_b);
//      alert(document.getElementById('Labxynd').innerHTML);
//      
//      alert(document.getElementById('Txynd').value);
	    if(!confirm("�Ƿ�ȷ��д���Ա����?")){return false;}
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
                        &nbsp;&nbsp;��Ա���� --�޸����� --<a href="WebUser.aspx">����һҳ</a>
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
                    <b>���������趨</b>
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    �ϼ��ʻ���</td>
                <td class="tdbg ��ʽ3" colspan="3">
                    <asp:DropDownList ID="DLParentAdminId" runat="server" AutoPostBack="True" Width="155px" OnSelectedIndexChanged="DLParentAdminId_SelectedIndexChanged">
                    </asp:DropDownList></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        ��Ա�ʻ���</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="��ʽ3"><font size="2">
                        <asp:Label ID="LabAdminId" runat="server" Text="0000"></asp:Label>
                        <asp:TextBox ID="Tuserid" runat="server" Width="121px" MaxLength="6"></asp:TextBox></font></span>&nbsp;</td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        ��&nbsp;&nbsp;&nbsp;&nbsp; �룺</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="��ʽ3">
                        <asp:TextBox ID="Tpassword" runat="server" MaxLength="12"></asp:TextBox>�������뱣���� <strong><span style="color: #ff0000">���볤�� 6~12 ��(���ɽ���!#$&amp;*+.=@|��������Ԫ)</span></strong></span></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    �� &nbsp;&nbsp; �ƣ�</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="Tname" runat="server" MaxLength="6"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    �������ڣ�</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="TxyndDate" runat="server"></asp:TextBox>&nbsp;</td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    ע��ʱ�䣺</td>
                <td class="tdbg" colspan="3">
                    <asp:TextBox ID="Tdate" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <table class="m_tab_ed" cellspacing="1" cellpadding="0" width="780" border="0">
            <tbody>
                <tr class="m_title_edit">
                    <td colspan="2">
                        ��ע�����趨</td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        �����趨��</td>
                    <td style="width: 391px">
                        ����� ; Ŀǰ����:<font id="mcy_now" color="#ff0033">0</font></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        ����/�ֽ�</td>
                    <td style="width: 391px">
                        <input id="TxtCashCreditY" runat="server"  name="CashCredit" type="radio" />ʹ������<input id="TxtCashCreditN" runat="server" name="CashCredit" type="radio" />
                        ʹ���ֽ�&nbsp;
                    </td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        ���ö�ȣ�</td>
                    <td style="width: 391px">
                        <asp:TextBox ID="Txynd" onkeypress="return CheckKey();" runat="server">0</asp:TextBox>
                        <asp:TextBox ID="TxyndA" runat="server" Visible="False" Width="12px"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="������������ȣ�"></asp:Label><asp:Label ID="Labxynd" runat="server"
                            ForeColor="Red"></asp:Label></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" width="120">
                        ���P-�̱�</td>
                    <td style="height: 24px; width: 391px;">
                        <select class="za_select" name="TxtUserLevel" style="width: 155px" id="TxtUserLevel" runat="server">
                            <option value="0" selected>A��</option>
                            <option value="1">B��</option>
                            <option value="2">C��</option>
                            <option value="3">D��</option>
                        </select>
                        &nbsp;&nbsp;
                        ʹ��<input id="ChkTmsysUser" runat="server" type="checkbox" checked="CHECKED" /></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        ����-�̱�</td>
                    <td style="width: 391px">
                        <select class="za_select" name="TxtUserLevel" style="width: 155px" id="TxtUserLevelD3" runat="server">
                            <option value="0" selected>A��</option>
                            <option value="1">B��</option>
                            <option value="2">C��</option>
                            <option value="3">D��</option>
                        </select>
                        &nbsp;
                        ʹ��<input id="ChkD3sysUser" runat="server" type="checkbox" checked="CHECKED" /></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        �w��-�̱�</td>
                    <td style="width: 391px">
                        <select class="za_select" name="TxtUserLevel" style="width: 155px" id="TxtUserLevelP3" runat="server">
                            <option value="0" selected>A��</option>
                            <option value="1">B��</option>
                            <option value="2">C��</option>
                            <option value="3">D��</option>
                        </select>
                        &nbsp;
                        ʹ��<input id="ChkP3sysUser" runat="server" type="checkbox" checked="CHECKED" /></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                        ������룺</td>
                    <td>
                        <asp:TextBox ID="TxtMoneyPwd" runat="server" MaxLength="12"></asp:TextBox>�������뱣���� <strong><span style="color: #ff0000">���볤�� 6~12 ��(���ɽ���!#$&amp;*+.=@|��������Ԫ)</span></strong></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed">
                    </td>
                    <td style="width: 391px">
                        <asp:Button ID="ButData" runat="server" Width="80px" Text="����" OnClick="ButData_Click" OnClientClick="return SubChk('Edd');"></asp:Button>
                        <asp:Button ID="ButDataadd" runat="server" Width="80px" Text="���" OnClick="ButDataadd_Click" OnClientClick="return SubChk('add');"></asp:Button>
                        <input id="CmdCancel" runat="server" name="act23" style="width: 80px" type="button" value="����" /></td>
                </tr>
            </tbody>
        </table>
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </form>
</body>
</html>
