<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WebPlAutoSetup, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <link href="../style/members.css" rel="stylesheet" type="text/css"/>

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">
     function new_win(html_name,winname,w,h){
          if(winname=='') winname='WINDOWS';
          if(w=='') w=640;
          if(h=='') h=480;
          //undefined
          winformat="width="+w+",height="+h;
//         toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=no,
            winformat= "";
          winid = window.open(html_name,winname ,winformat)
    }
        function HrefType(UrlStr,vType)
        {
            
            location= UrlStr + '?' + vType ;
           
        }
        
        
        var mSystype;
        function PageLoad(){
            mSystype = "<% = mSysType %>" ;

            switch (mSystype)
            {  
                case "":
                      document.getElementById("ClickTM").setAttribute("class", "m_ClickType_Open");
                      
                      break;
                case "TM":
//                      document.getElementById("ClickTM").setAttribute("className", "m_ClickType_Open");
                      document.getElementById("ClickTM").setAttribute("class", "m_ClickType_Open");
                    break;
                case "D3":
                     document.getElementById("ClickD3").setAttribute("class", "m_ClickType_Open");
                    break;
                case "P3":
                     document.getElementById("ClickP3").setAttribute("class", "m_ClickType_Open");
                    break;
            }
        }
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0" onload="PageLoad();">
    <form id="form1" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="td_banner_b">
                    </td>
                </tr>
                <tr class="td_banner_m">
                    <td>
                        &nbsp;&nbsp;ȫ�Զ���������:
                    </td>
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
        <br />
        <table id="TabSysType" runat="server">
            <tr>
                <td id="AdminHelperaA" style="width: 74px">
                </td>
                <td id="TdClickTM" runat="server">
                    <a id="ClickTM" class="m_ClickType_Close" href="javascript:HrefType('','SysType=TM')">[���P]</a>
                </td>
                <td id="AdminLevel1A">
                    |
                </td>
                <td id="TdClickD3" runat="server">
                    <a id="ClickD3" class="m_ClickType_Close" href="javascript:HrefType('','SysType=D3')">[����]</a>
                </td>
                <td id="AdminLevel2A">
                    |
                </td>
                <td id="TdClickP3" runat="server">
                    <a id="ClickP3" class="m_ClickType_Close" href="javascript:HrefType('','SysType=P3')">[�w��]</a>
                </td>
            </tr>
        </table>
        <table class="m_tab_ed" cellspacing="1" cellpadding="0" border="0" id="TableA" runat="server">
            <tbody>
                <tr class="m_title_edit" align="center">
                    <td>
                        <div align="center">
                            ��Ŀ</div>
                    </td>
                    <td>
                        <div align="center">
                            ��/ͣ</div>
                    </td>
                    <td>
                        <div align="center">
                            �������</div>
                    </td>
                    <td>
                        <div align="center">
                            ������</div>
                    </td>
                    <td>
                        <div align="center">
                            ��������</div>
                    </td>
                    <td>
                        <div align="center">
                            �������</div>
                    </td>
                    <td>
                        <div align="center">
                            �Զ����</div>
                    </td>
                    <td>
                        <div align="center">
                            �̲�B</div>
                    </td>
                    <td>
                        <div align="center">
                            �̲�C</div>
                    </td>
                    <td>
                        <div align="center">
                            �̲�D</div>
                    </td>
                </tr>
                <tr align="center" class="mem_index_cen">
                    <td colspan="13">
                        <asp:Button ID="ButData" runat="server" Width="85px" Text="�޸��ύ" OnClick="ButData_Click"></asp:Button></td>
                </tr>
                <tr align="center" class="mem_index_cen">
                    <td align="left" colspan="13">
                        ��������ÿ��ע����ע�����ڻ���������������ʿ�ʼ����!<br />
                        ������:ÿһ�ε������ʵ���ע����ֵ!<br />
                        ��������:ÿһ�ε������ʵķ���.<br />
                        �������:���ʵ�������͵ĵ�λ.<br />
                        �Զ����:���Զ���Ŵ�ʱ,��ǰ�����ʵ��ڻ�С��������ʺ�,���Զ��رյ�ǰ�ĺ���!</td>
                </tr>
                <tr align="center" class="mem_index_cen">
                    <td align="left" colspan="13">
                        �̲ΪA����B�̡�C�̡�D��֮��ĲA�����ʱ��ʱ��BCD����A��Ϊ�������ű䶯�����̲�B(ΪA����B��֮���)=-0.5 ��A������=41ʱ &nbsp;��B������=40.5</td>
                </tr>
                <tr align="center" class="mem_index_cen">
                    <td align="left" colspan="13">
                        �����Զ�����:<br />
                        1.��'��/ͣ'��Ŀ��,������Ϊ'����'.<br />
                        2.����������ֻ�С���ע�����ڵ��ڡ��������Żᰴ���õ������Զ����.<br />
                        3.�ڻ�Աÿһ��Ͷע��,���ʽ�����ʱ��Ͷע����Զ��������.<br />
                        ��������= ��ǰ����-��������*(��ǰע�����-�������)/������</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
