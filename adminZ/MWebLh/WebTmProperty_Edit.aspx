<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_WebTmProperty_Edit, App_Web_wtmgu-sw" enableEventValidation="false" %>

<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../style/control_main.css" rel="stylesheet" type="text/css">
	
    <SCRIPT>
        //检查信用额度字元限制
        function CheckKey(){
                     if(event.keyCode == 13) return true;
	        if(!(event.keyCode > 47 && event.keyCode < 58 ))
	                      {alert("信用额度只能输入数字!!"); return false;}
        }
function SubChk(vChkType){
   
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
		{ document.getElementById('TAdminname').focus(); alert("名称请务必输入!!"); return false; }


	    if(!confirm("是否确定写入子帐号资料?")){return false;}
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
//          
    //            location='WebSetup_PlZm.aspx?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=' + document.getElementById('retime').value; 
                history.back();
                return false;
            }

    </SCRIPT>
</HEAD>
	<body text=#000000 vLink=#0000ff aLink=#0000ff bgColor=#ffffff leftMargin=0 topMargin=0>
		<form id="Form1" method="post" runat="server"  >
            <TABLE class="title_m_tab" cellSpacing=0 cellPadding=0  border=0>
                <TBODY>
                  <TR>
                    <TD class="mem_index_ctrl_line"></TD></TR>
                  <TR>
                    <TD class=mem_index_ctrl_bg >&nbsp;&nbsp;<asp:Label ID="TableTit" runat="server"></asp:Label>管理 --设置生肖号码  </TD></TR>
                    <TR>
                    <TD class="mem_index_ctrl_line"></TD>
                </TR> <TR>
                    <TD class="mem_index_ctrl_space"></TD></TR>
                </TBODY>
            </TABLE>
			<TABLE  id="Table1" 
				  class="m_tab_ed" cellSpacing=1 cellPadding=0 border=0>
				<TR class="m_title_edit">
					<TD  colSpan="4">
                        生肖编辑器
					</TD>
				</TR>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px; height: 18px;">
                        鼠.前肖.野兽</td>
                    <td style="height: 18px"  >
                        <asp:TextBox ID="TDsx1" runat="server" Width="300px"></asp:TextBox></td>
                    <td class="m_mem_ed" style="width: 120px; height: 18px;">
                        马.后肖.家禽</td>
                    <td style="height: 18px" >
                        <asp:TextBox ID="TDsx7" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        牛.前肖.家禽</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx2" runat="server" Width="300px"></asp:TextBox></td>
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        羊.后肖.家禽</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx8" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px">
                        虎.前肖.野兽</td>
                    <td>
                        <asp:TextBox ID="TDsx3" runat="server" Width="300px"></asp:TextBox></td>
                    <td class="m_mem_ed" style="width: 120px">
                        猴.后肖.野兽</td>
                    <td>
                        <asp:TextBox ID="TDsx9" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        兔.前肖.野兽</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx4" runat="server" Width="300px"></asp:TextBox></td>
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        鸡.后肖.家禽</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx10" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        龙.前肖.野兽</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx5" runat="server" Width="300px"></asp:TextBox></td>
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        狗.后肖.家禽</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx11" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        蛇.前肖.野兽</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx6" runat="server" Width="300px"></asp:TextBox></td>
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        猪.后肖.家禽</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx12" runat="server" OnTextChanged="TDsx12_TextChanged" Width="300px"></asp:TextBox></td>
                </tr>

                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px">
                    </td>
                        <td colspan="3" align="center">
                            <asp:Button ID="ButData" runat="server" Height="20px" OnClick="ButData_Click" Text="保存" OnClientClick="return SubChk('Edd');" />&nbsp;
                            <input id="CmdCancel" class="za_button" name="FormsButton2" onclick="ShowPage();"
                                type="button" value="取消" /></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px; height: 18px;">
                        金</td>
                    <td style="height: 18px"  >
                        <asp:TextBox ID="TDsx32" runat="server" Width="300px"></asp:TextBox></td>
                    <td class="m_mem_ed" style="width: 120px; height: 18px;">
                        木</td>
                    <td style="height: 18px" >
                        <asp:TextBox ID="TDsx33" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        水</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx34" runat="server" Width="300px"></asp:TextBox></td>
                    <td class="m_mem_ed" style="width: 120px; height: 18px">
                        火</td>
                    <td style="height: 18px">
                        <asp:TextBox ID="TDsx35" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px">
                        土</td>
                    <td>
                        <asp:TextBox ID="TDsx36" runat="server" Width="300px"></asp:TextBox></td>
                    <td class="m_mem_ed" style="width: 120px">
                        </td>
                    <td>
                        </td>
                </tr>
                <tr class="m_bc_ed">
                    <td class="m_mem_ed" style="width: 120px">
                    </td>
                        <td colspan="3" align="center">
                            <asp:Button ID="ButDataWX" runat="server" Height="20px" OnClick="ButDataWX_Click" Text="保存" OnClientClick="return SubChk('Edd');" />&nbsp;
                            <input id="Button2" class="za_button" name="FormsButton2" onclick="ShowPage();"
                                type="button" value="取消" /></td>
                </tr>
			</TABLE>
		</form>
	</body>
</HTML>


