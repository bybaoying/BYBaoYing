<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_admin_HelperEdit, App_Web_i89w4dwr" enableEventValidation="false" %>

<html>
<head>
    <title>USEREDIT</title>
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
                
                document.location= "javascript:history.go(-1);"  ;
//                document.location= "<% // Response.Write(PageId.NavigateUrl); %>"  ;
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
                    <td class="mem_index_ctrl_line" colspan ="2">
                    </td>
                </tr>
                <tr class="mem_index_ctrl_bg">
                    <td >
                        &nbsp;&nbsp;<asp:Label ID="TableTit" runat="server"></asp:Label>管理 --修改资料 --<a href="javascript:history.go(-1);">回上一页</a>
                        </td>
                        <td style="text-align: right"></td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line" colspan ="2">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space" colspan ="2">
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table1" class="m_tab_ed" cellspacing="1" cellpadding="0" border="0">
            <tr class="m_title_edit">
                <td colspan="4">
                    <b>基本资料设定</b>
                </td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    上级帐户：</td>
                <td class="tdbg 样式3" colspan="3">
                    <asp:TextBox ID="DLParentAdminId" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        子 帳 號：</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="样式3"><font size="2">
                        <asp:Label ID="LabAdminId" runat="server" Text="0000"></asp:Label>
                        <asp:TextBox ID="TAdminId" runat="server" Width="121px" MaxLength="6"></asp:TextBox></font></span>&nbsp;</td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    <div>
                        密&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 码：</div>
                </td>
                <td class="tdbg" colspan="3">
                    <span class="样式3">
                        <asp:TextBox ID="Tpassword" runat="server" MaxLength="12"></asp:TextBox>不更改请保留空
                        <strong><span style="color: #ff0000">密码长度 6~12 码(仅可接受!#$&amp;*+.=@|等特殊字元)</span></strong></span></td>
            </tr>
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                    名 &nbsp;&nbsp; &nbsp; &nbsp; 称：</td>
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
            <tr class="m_bc_ed">
                <td class="m_mem_ed" width="120">
                </td>
                <td>
                    <asp:Button ID="ButData" runat="server" OnClick="ButData_Click" Text="保存"
                        OnClientClick="return SubChk('Edd');" Width="80px" />
                    <asp:Button ID="ButDataadd" runat="server" OnClick="ButDataadd_Click"
                        Text="添加" OnClientClick="return SubChk('add');" Width="80px" />&nbsp;
                    <input id="CmdCancel" runat="server" name="act23" style="width: 80px" type="button" value="返回" /></td>
            </tr>
        </table>
    </form>
</body>
</html>

