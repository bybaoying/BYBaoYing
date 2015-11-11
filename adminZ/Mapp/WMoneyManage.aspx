<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_WMoneyManage, App_Web_mywy7g8u" enableEventValidation="false" %>

<%@ Register Src="WMoneyManToolMenu.ascx" TagName="WMoneyManToolMenu" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../style/control_main.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">

        function Data_Delete(){
            var obj = document.FrmData ;
            var myTable= document.getElementById ("MyTbody");
            var myRows= myTable.rows;
//            alert (obj["SelButY" + String( 0) ].checked);
            var mylength = myRows.length ;
            var lquerstr ="";
            for(i=0; i<mylength; i++) {
	            if (obj["SelButY" + String(i) ].checked) {
	                if(obj["SelButN" + String(i) ].checked)
	                {return false;}
		            lquerstr = lquerstr + obj["SelButY" + String(i) ].value + "=" + obj["Memo" + String(i) ].value  + "&";
	            }
            }
            document.getElementById ("TxtButDataY").value=lquerstr;
            lquerstr="";
            for(i=0; i<mylength; i++) {
	            if (obj["SelButN" +i ].checked) {
	                if(obj["SelButY" + String(i) ].checked) 
	                {return false;}
		            lquerstr = lquerstr + obj["SelButN" + String(i) ].value + "=" + obj["Memo" + String(i) ].value  + "&";
	            }
            }
            document.getElementById ("TxtButDataN").value=lquerstr;//document.getElementById ("SelButY1").checked + document.getElementById ("SelButY1").value;
        
            
	            if(confirm('请对交易审批提交是否确认!'))
	            {
	                }
	            else
	            {
	                return false;
	                }
        }
        function CheckSelect(vNameA,vNameB){
            var obj = document.FrmData ;
            if (obj[vNameA ].checked) {
            
                obj[vNameB ].checked =false;
            }
        }
    </script>

    <script language="JavaScript" type="text/javascript">
        
        

        function select_tab()
        {
            
            lwagers_class = document.getElementById("wagers_class");
            r = lwagers_class.value;
            if(r== "wagers_history"){
                eval("date_ranges.style.display=\"block\";");
                
                
            }else if(r == "wagers_today"){
                 eval("date_ranges.style.display=\"none\";");
            }
        }
        function openQuerPage()
        {
            location="?" + "SelOutInType=" + document.FrmData.SelOutInType.value ;
        }
        
//         Select_TM_num
    </script>

</head>
<body text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="FrmData" runat="server" onsubmit="return Data_Delete();" enableviewstate="False">
        <table  class="m_tab_Head_Rp" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                    <td class="mem_index_ctrl_line" colspan="2">
                    </td>
                </tr>
                <tr class="mem_index_ctrl_bg">
                    <td>
                        交易审批:
                    </td>
                    <td align="right">

                        <script language="JavaScript" type="text/javascript">
        
        function openNewPage(vUlr)
        {
            
            location=vUlr ;
        }  
            
                        </script>

                        <uc1:WMoneyManToolMenu ID="WMoneyManToolMenu1" runat="server" />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line" colspan="2">
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="Table8" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
            <tr>
                <td class="list_lef">
                    记录类型</td>
                <td class="list_cen" style="text-align: left">
                    <select id="SelOutInType" style="width: 120px" runat="server">
                        <option selected="selected" value="0">支出和存入记录</option>
                        <option value="1">支出记录</option>
                        <option value="2">存入记录</option>
                    </select>
                </td>
                <td class="list_lef">
                    <button id="Button2" class="button_Ok" onclick="javascript:openQuerPage( );">
                        确定</button>
                </td>
                <td class="list_lef">
                    <input id="TxtButDataY" type="text" runat="server" style="visibility: hidden" readonly="readOnly" /><input id="TxtButDataN" type="text" runat="server" style="visibility: hidden" readonly="readOnly" /></td>
            </tr>
        </table>
        <table  border="0" cellpadding="0" cellspacing="1" class="rp_m_tab">
            <tr class="m_title_edit">
                <td align="center" width="65">
                    交易码</td>
                <td align="center" width="80">
                    交易日期</td>
                <td align="center" width="100">
                    会员</td>
                <td align="center">
                    银行-帐号</td>
                <td align="center">
                    户名</td>
                <td align="center" width="70">
                    金额</td>
                <td align="center" width="70">
                    支出(RMB)</td>
                <td align="center" width="70">
                    存入(RMB)</td>
                <td align="center">
                    备注</td>
                <td align="center" width="30">
                    同意</td>
                <td align="center" width="30">
                    拒绝</td>
            </tr>
                        <tbody id="MyTbody" runat="server">
            </tbody>
            <tr class="m_rig_re">
                <td align="center" class="tdbg">
                    总计</td>
                <td align="right" colspan="5">
                    <asp:Label ID="labSumCount" runat="server"></asp:Label></td>
                <td align="center">
                    <p align="right">
                        <asp:Label ID="labMoneyOut" runat="server"></asp:Label></p>
                </td>
                <td align="center">
                    <p align="right">
                        <asp:Label ID="labMoneyIn" runat="server"></asp:Label></p>
                </td>
                <td align="center">
                </td>
                <td align="center" colspan="2">
                    <input id="ButData" type="submit" onserverclick="ButDelete_Click" value="提交" runat="server" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
