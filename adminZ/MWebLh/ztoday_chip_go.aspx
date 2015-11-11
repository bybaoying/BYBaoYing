<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_ztoday_chip_go, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <TITLE>reports_member</TITLE>
    <META http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK 
    href="../style/control_main.css" type=text/css rel=stylesheet>
    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></SCRIPT>
	<script language="JavaScript" type="text/javascript" src="../Scripts/AutoRefreshShow.js"></script>
	<script language="JavaScript" type="text/javascript" >
        if(self == top) location = '/';
        var notNumber = "下注金额仅能输入数字！";
        var underMinStake = "下注金额不可小於最低下注金额：";
        var overLottoMaxBetLimitValue = "对不起，本期有下注金额最高限制：";
        var overBetLimit = "下注金额不可大於单号限额：";
        var overDcLimit = "下註金額不可大於單註限額(可以多次下註)：";
        var overMaxPayOff = "对不起，本期有派彩最高限制：";
        var noMoney = "请填入下注金额！";
        var sureStake = "是否确定下注？";
        var overCredit = "下注金额不可大於信用馀额：";
        var overEventLimit = "下注金额不可大於可用单场限额：";
        var ldataload = "正在进行……!!";
        var mChipMoneySum = 0 ;//保存注单的金额合计



        function SubData()
        {
                mChipMoneySum = 0 ;//保存注单的金额合计
                document.getElementById("WagerTxt").value = "" ;
                var lWagerStr= "",lSetValue = "";
                var lquerstr = "";
                if (!SubChk()){
                    return false;
                }
                
 	            for (var i = 0 ; i < ( 50 ); i++){

	                var  lPN ="PN" + String( i );
	                var  lSelectPN ="SelectPN" + String( i );
	                
	                if ( document.getElementById(lPN) != null){
	                
	                    if ( Number( document.getElementById(lPN).innerHTML ) != Number( document.getElementById(lSelectPN).value ) ){
	                        var  lPNN ="PNN" + String( i );
	                        lquerstr = lquerstr +  document.getElementById(lPNN).innerHTML + "$" + String(  Number(document.getElementById(lSelectPN).value)) + ";";
	                    }
	                }

	            }
                document.getElementById("WagerTxt").value = lquerstr ;

         }


        function SubChk() {

             if(document.getElementById('TxtButData').value =="over") {
             //用来防范，连续点击产生的事件
                 
                 alert(ldataload);//"正在进行……!!"
                 return false;
            }
            document.getElementById('TxtButData').value="over";
            return true;
        }
        function onLoad() {
            lReftime ="<% =Request.QueryString["stoptime"] %>";
            AutoRefShow(lReftime,'Select_Tj=' + document.getElementById('Select_Tj').value + 
	            '&Select_Order=' + document.getElementById('Select_Order').value + '&Pageid=' + document.getElementById('DDPage').value  + '&');
	         
        }

        function ShowPage()  {
        
//	        location='?TmTypeId=' + "<% =Request.QueryString["TmTypeId"] %>" +
//	         '&ltype=' + "<% =Request.QueryString["ltype"] %>" +  '&Pageid=' + document.getElementById('DDPage').value + '&stoptime=' + document.getElementById('retime').value; 
	        location='?Select_Tj=' + document.getElementById('Select_Tj').value + 
	            '&Select_Order=' + document.getElementById('Select_Order').value + '&Pageid=' + document.getElementById('DDPage').value + 
	            '&stoptime=' + document.getElementById('retime').value; 
        }

    </SCRIPT>
</head>
<body onLoad="onLoad();" text=#000000 vLink=#0000ff aLink=#0000ff bgColor=#ffffff leftMargin=0 topMargin=0>
    <form id="form1" runat="server">
        <TABLE class=title_m_tab cellSpacing=0 cellPadding=0  border=0>
          <TBODY>
          <TR>
            <TD  class="mem_index_ctrl_line"  colSpan=2 ></TD></TR>
          <TR  class="mem_index_ctrl_bg">
          <TD class="mem_index_ctrl_bg" style="height: 22px; ">&nbsp;&nbsp; 排序:   
            <SELECT class=za_select  onchange="ShowPage();"  
            name=Select_Tj id="Select_Tj" runat="server"> <OPTION value=1 selected>按球号</OPTION> <OPTION 
              value=2>按金额</OPTION> </SELECT> <SELECT class="za_select"   
             onchange="ShowPage();"  name="Select_Order" id="Select_Order" runat="server"> <OPTION value=1 
              selected>升幂(由小到大)</OPTION> <OPTION 
            value=2>降幂(由大到小)</OPTION></SELECT> -- 总页数: <SELECT   
            class=zaselect_ste onchange="ShowPage();" name=page_f id="DDPage" runat="server"> 
              <OPTION value=1 selected>1</OPTION></SELECT> /&nbsp;
              <asp:Label ID="ContSumPage" runat="server"></asp:Label>
              页&nbsp;
            <FONT color=#ff0000></FONT></TD>
            <TD style="text-align: right" ><strong>
            <a class="click_text" onclick ="ShowPage();">刷新</a>:</strong>
            <asp:Label ID="LabReftime"
                  runat="server"></asp:Label>&nbsp;
                <select id="retime" runat="server" name="retime" onchange="ShowPage();">
                    <option selected="selected" value="-1">不刷新</option>
                    <option value="20">20 sec</option>
                    <option value="40">40 sec</option>
                    <option value="60">60 sec</option>
                    <option value="120">120 sec</option>
                    <option value="180">180 sec</option>
                </select></TD></TR>
          <TR>
            <TD  class="mem_index_ctrl_line"  colSpan=2 ></TD></TR>
          <TR>
            <TD    colSpan=2 class="mem_index_ctrl_space"></TD></TR>  </TBODY></TABLE>
        <TABLE class=rp_m_tab cellSpacing=1 cellPadding=0 width=780 border=0 id="TableA" runat="server">
          <TBODY>
          <TR class=m_title_reall>
              <td >
                  球号</td>
            <TD style="width: 70px">
                种类</TD>
            <TD style="width: 40px">
                笔数</TD>

            <TD width=80>
                金额</TD>
            <TD width="40px">
                赔率</TD>
                
              <TD width=80>
                可蠃金额</TD>
           <TD style="width: 40px">
                 退水</TD> 

            <TD style="width: 80px">
                退金</TD>

             <TD width=30>成数</TD>
            <TD width=50>
                股金</TD>
              <td width="80">
                  走单</td>
                </TR>
              <tr class="m_rig_re">
                  <td>
                      <p align="center" class="tdbg">
                          小计</p>
                  </td>
                  <td id="TdtmnoCount_a" runat="server" colspan="2">
                  </td>
                  <td width="80" id="Tdtmje_a" runat="server">
                  </td>
                  <td id="TdTmTypePlje_a" runat="server" colspan="2">
                  </td>
                  <td id="TdTmTypeFs_a" runat="server" colspan="2">
                  </td>
                  <td id="TdTmjePercent_a" runat="server" colspan="2">
                  </td>
                  <td runat="server" colspan="1">
                      <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();"
                          Text="确定" Width="58px" Visible="False" /></td>
              </tr>
              <tr class="m_rig_to">
                  <td>
                      <p align="center" class="tdbg">
                          总计</p>
                  </td>
                  <td id="TdtmnoCount_s" runat="server" colspan="2">
                  </td>
                  <td width="80" id="Tdtmje_s" runat="server">
                  </td>
                  <td id="TdTmTypePlje_s" runat="server" colspan="2">
                  </td>
                  <td id="TdTmTypeFs_s" runat="server" colspan="2">
                  </td>
                  <td id="TdTmjePercent_s" runat="server" colspan="2">
                  </td>
                  <td runat="server" colspan="1">
                      <input id="WagerTxt" runat="server" readonly="readonly"  type="text" style="visibility: hidden; width: 1px" />
                      <input id="TxtButData" runat="server" name="TxtButData"
                               type="text" style="visibility: hidden; width: 1px" /></td>
              </tr>
                
                
          </TBODY></TABLE>
    </form>
</body>
</html>



