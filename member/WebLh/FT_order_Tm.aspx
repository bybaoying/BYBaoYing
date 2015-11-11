<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_FT_order_Tm, App_Web_3mbbw7kj" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Main_left_TM.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../js/FT_Order_tm.js"></script>

    <script language="JavaScript" type="text/javascript">
            if(self == top) location = '/';
//            var isSpecial = "1";
//            var BColor_Index = new Array(0,0,1,1,2,2,0,0,1,1,2,0,0,1,1,2,2,0,0,1,2,2,0,0,1,1,2,2,0,0,1,2,2,0,0,1,1,2,2,0,1,1,2,2,0,0,1,1,2);
//            var BColor_Value = new Array("red","blue","green");
//            var arrChildEveLimitUsed = new Array();
//            var intUseCredit = 0;
//            var chkCredit = 120000 - intUseCredit;
//            var chkMinStake = 10;
            
//            var chkLottoMaxBetLimitValue = 30000;
//            var chkLottoMaxEventLimitValue = 100000;
//            var chkMaxBetLimitValue = 30000;
//            var chkMaxEventLimitValue = 1000000;
//            var chkMaxPayOff = 5000000;
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
            var noBall = "请选择下注球号！";
            var noWager = "请先下注！";
            var stopBall = "号球已经封牌！";
            var WType_NB = "正码" ;
            var WType_SpA = "特码" ;
            
            var WType_SpB = "特码B" ;
            var WType_NSB = "正 1 特";
//            var DrawSpecial = "49" ;
//            var SpecialOverNumber = "25" ;
            var AlertNumberDouble = "号码重复，请重新选择！" ;

            var TmPlStr ;
            
            function SelectTm(vSelectTm)
            {//号码选择反向
//                gTime = gTimeLoad ;//重置下注时间

	            if (document.getElementById(vSelectTm).className=='Td_TmBallfont_click')
	            {
	                document.getElementById(vSelectTm).className='Td_TmBallfont';
	            }
	            else
	            
	            {
	                document.getElementById(vSelectTm).className='Td_TmBallfont_click';

	            }
            }

           function OtherCheck(strGold)
           {//验证提示
                ////請填入下注金額！

                if(strGold == ""){
	                alert(noMoney);
	                return false;
                }
                //下注金額必須為數值
                if(isNaN(strGold) == true){
	                alert(notNumber);
	                return false;
                }
                //不能低於最低下注金額
                var chkMinStake =  document.getElementById('LabDd').innerHTML;
                if(eval(strGold) < chkMinStake){
	                alert(underMinStake+chkMinStake.toString());
	                return false;
                }
                //不能超過本期單场限額
                var chkLottoMaxBetLimitValue = document.getElementById('LabDx').innerHTML;
                if(eval(strGold) > chkLottoMaxBetLimitValue){
	                alert(overLottoMaxBetLimitValue + chkLottoMaxBetLimitValue);
	                return false;
                }
                //不能超過單号限額
                var  chkMaxBetLimitValue =   document.getElementById('LabDz').innerHTML;
                if(eval(strGold) > chkMaxBetLimitValue){
	                alert(overBetLimit + chkMaxBetLimitValue);
	                return false;
                }
                //不能超過單注限額
                var  chkMaxBetLimitValue =   document.getElementById('LabDc').innerHTML;
                if(eval(strGold) > chkMaxBetLimitValue){
	                alert(overDcLimit + chkMaxBetLimitValue);
	                return false;
                }
            }         
            function CheckOK()
            {//把选择的号加入列表框中
                gTime = gTimeLoad ;//重置下注时间
 	            var objGold = document.getElementById('gold');
	            if (OtherCheck(objGold.value) == false){
		            objGold.focus();
		            return;
	            }
	            var intNum = 0;
	            var arrNum = SeleteBall().split(",");

//	            var ArrGame = eval("parent.Game"+isSpecial);
	            //叫匡拒猔瞴腹
	            if (arrNum == "") {
		            alert(noBall);
		            return;
	            }
	     

            var arrTmPl = document.getElementById('TxtTmpl').value.split(",");

	            for (var i = 0 ; i < (arrNum.length - 1); i++){
		            //alert(arrNum.length+":"+i);

//		            intNum = eval(arrNum[i]);
                        
		            if (WagerAdd(arrNum[i],arrTmPl[Number(arrNum[i])-1], objGold.value) == false){
			            //alert("QQ");
			            return;
		            }
	            }
            	
	            SelectColorBall("cancel");
	            objGold.value = "";               

            }
            function WagerAdd(strNum,vTmPlstr,  strGold){
            //把选择的号加入列表框中
//	            switch(isSpecial){
//		            case "1":
//			            var strWType = WType_SpA;
//			            break;
//		            case "28":
//			            var strWType = WType_SpB;
//			            break;

//		            case "4":
//			            var strWType = WType_NB;
//			            break;

//		            case "21":
//		            case "22":
//		            case "23":
//		            case "24":
//		            case "25":
//		            case "26":
//			            var strWType = WType_NSB.replace("1", (parseInt(isSpecial) % 10).toString());
//			            break;

//		            default:
//			            alert("^_^");
//			            return false;
//			            break;
//	            }
	            //腹瞴竒礟
//	            if (strStop == "1") {
//		            alert(strNum + stopBall);
//		            return false;
//	            }
                
                var strWType = WType_SpA;
                
	            var strWOption = strWType + ": " + strNum + " @ "  + vTmPlstr + "    $= " + strGold;
	            var strWValue = strNum +  "#" + strGold + "" ;
	            
//	            with(document.CommonWagerForm){
		            for (var i = 0; i < document.getElementById('WagerList').length; i++) {
			            var arrT = document.getElementById('WagerList').options[i].value.split("#");
			            if(eval(arrT[0]) == eval(strNum)){
				            alert(AlertNumberDouble);
				            ClearWagerData();//把列表框中的数据清空
				            return false;
			            }
		            }
//	            }
	            var WAdd = new Option(strWOption, strWValue);
	            document.getElementById('WagerList').add(WAdd);
                document.getElementById("WagerTxt").value= document.getElementById("WagerTxt").value + strWValue + "@";
	            var lTmje =new Number( document.getElementById('LabTmwinje').innerHTML) ;
//	            alert(lTmje );
	            document.getElementById('LabTmwinje').innerHTML = lTmje + Number( strGold);
            }
            function ClearWagerData(){
            //把列表框中的数据清空
	            var i = 0;
	            for (i = 0; i < document.getElementById('WagerList').length; i++) {
		            document.getElementById('WagerList').remove(i);
		            i--;
	            }
	            document.getElementById('LabTmwinje').innerHTML="0";//可赢金额
	            document.getElementById("WagerTxt").value="";
//                LabTmwinje
            }
            function SeleteBall()
            {//找出选择的球，在表格中
	            var i = 0, strNumbers = "", strNum = "", objNum;

	            for (i=1; i <= 49; i++){
		            strNum = NumFormat(i);
		            objNum = document.getElementById("tm"+strNum);

		            if(objNum.className == "Td_TmBallfont_click"){
			            strNumbers += strNum+",";
		            }
	            }
            	
	            return strNumbers;
            }    
            function SelectColorBall(strColor){
                var i = 0, c = 0, strNum = "", objNum;
                switch(strColor) {
	                case "blue":
		                c = 1;
		                break;
	                case "red":
		                c = 0;
		                break;
	                case "green":
		                c = 2;
		                break;
	                case "cancel":
		                c = 4;
		                break;
	                case "all":
		                c = 5;
		                break;
	                default:
		                return;
		                break;
                }
            	
//            	alert("<% Response.Write(TmPlStr);%>");
                for(i = 1; i < 50 ; i++){
                    strNum = NumFormat(i);
	                objNum = document.getElementById("tm"+strNum);
//	                alert(objNum.className );
	                if (c == 4){
	                    if (objNum.className != 'Td_TmBallfont_Stop'){
		                    objNum.className = "Td_TmBallfont";
		                    continue;
		                }
	                }
            		
	                if (c==5){
	                    if (objNum.className != 'Td_TmBallfont_Stop'){
		                    if(objNum.className == "Td_TmBallfont_click"){
			                    objNum.className = "Td_TmBallfont";
		                    }else{
			                    objNum.className = "Td_TmBallfont_click";
		                    }
		                }
	                }
                }
            }       
            function NumFormat(intNum){
                return (intNum < 10)?("0" + intNum.toString()):intNum.toString();
            }
            function SelectSumNum(intOE){
	            var i = 0, strNum = "", objNum;
	            var intLNum = 0, intRNum = 0, intSum = 0;

	            if(intOE != 1 && intOE != 0)return;
            	
	            for(i = 1; i < 50 ; i++){
	                strNum = NumFormat(i);
	                intLNum = parseInt(strNum.substr(0,1));
	                intRNum = parseInt(strNum.substr(1,1));
	                intSum = intLNum + intRNum;
	                if (intSum % 2 == intOE){
			            objNum = document.getElementById("OddsTip"+strNum);
			            if (objNum.className != 'Td_TmBallfont_Stop'){
			                if(objNum.className == "Td_TmBallfont_click"){
				                objNum.className = "Td_TmBallfont";
			                }else{
				                objNum.className = "Td_TmBallfont_click";
			                }
			           }
		            }
	            }
            }
            function SelectBallType(vTmno){
	            var arrNum = vTmno.split(".");
	            for (var i = 0 ; i < (arrNum.length - 1); i++){
		            SelectTmOk("tm" + arrNum[i]);
	            }
            }
            function SelectTmOk(vSelectTm)
            {//选择指定的号码
                if (document.getElementById(vSelectTm).className != 'Td_TmBallfont_Stop'){
	                document.getElementById(vSelectTm).className = 'Td_TmBallfont_click';
	            }

            }
            function ClickCancel()
            {
                self.location='../App/select_lt.aspx?GameType=TM';
            }
    </script>

</head>
<body  >
    <form id="Form1" name="select_lt" method="post" runat="server" onsubmit="return SubChk();">
        <div class="div_Class">
            <div class="div_Head_a">
                <div id="countdown_num_title" class="m-title" runat="server">
                </div>
            </div>
            <div class="div_Head_b">
                <div class="m-title">
                    <asp:Label ID="LabTzC" runat="server" Text="投注"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="交易单"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="计时:"></asp:Label>
                    <asp:Label ID="LabTime" runat="server"></asp:Label>
                </div>
            </div>
            <div class="div_Head_d">
                <div class="div_table">
                    <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                        <tbody>
                            <tr>
                                <td class="td_Caption_set">
                                    期数:
                                </td>
                                <td>
                                    <span id="Labtmwinno" class="span_set" runat="server"></span>
                                </td>
                                <tr>
                                    <td class="td_Caption_set">
                                        帐户名称:
                                    </td>
                                    <td>
                                        <span id="TxtUsername" class="span_set" runat="server"></span>
                                    </td>
                                </tr>
                            <tr>
                                <td class="td_Caption_set">
                                    信用额度:
                                </td>
                                <td>
                                    <span id="Labxynd" class="span_set" runat="server"></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_Caption_set">
                                    使用幣別:
                                </td>
                                <td>
                                    <span id="LabBzname" class="span_set" runat="server">人民币(RMB)</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="div_table">
                <table id="Table2" class="Main_Table" cellspacing="1" cellpadding="0" border="0">
                    <thead>
                        <tr>
                            <td class="td_Head_set_cen" colspan="2">
                                <asp:Label ID="Label9" runat="server" Text="本場單注最高"></asp:Label>
                                <em>
                                    <asp:Label ID="LabTjeA" runat="server"></asp:Label></em>
                                <asp:Label ID="Label10" runat="server" Text="限制 !!"></asp:Label>
                            </td>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="div_table">
                <table id="Table1" runat="server" cellspacing="1" cellpadding="0" border="0" class="Main_Table">
                    <tr class="Tr_TmShow">
                        <td id="tm01" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">01</font></td>
                        <td id="tm11" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">11</font></td>
                        <td id="tm21" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">21</font></td>
                        <td id="tm31" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">31</font></td>
                        <td id="tm41" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">41</font></td>
                    </tr>
                    <tr class="Tr_TmShow">
                        <td id="tm02" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">02</font></td>
                        <td id="tm12" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">12</font></td>
                        <td id="tm22" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">22</font></td>
                        <td id="tm32" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">32</font></td>
                        <td id="tm42" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">42</font></td>
                    </tr>
                    <tr class="Tr_TmShow">
                        <td id="tm03" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">03</font></td>
                        <td id="tm13" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">13</font></td>
                        <td id="tm23" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">23</font></td>
                        <td id="tm33" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">33</font></td>
                        <td id="tm43" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">43</font></td>
                    </tr>
                    <tr class="Tr_TmShow">
                        <td id="tm04" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">04</font></td>
                        <td id="tm14" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">14</font></td>
                        <td id="tm24" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">24</font></td>
                        <td id="tm34" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">34</font></td>
                        <td id="tm44" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">44</font></td>
                    </tr>
                    <tr class="Tr_TmShow">
                        <td id="tm05" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">05</font></td>
                        <td id="tm15" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">15</font></td>
                        <td id="tm25" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">25</font></td>
                        <td id="tm35" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">35</font></td>
                        <td id="tm45" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">45</font></td>
                    </tr>
                    <tr class="Tr_TmShow">
                        <td id="tm06" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">06</font></td>
                        <td id="tm16" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">16</font></td>
                        <td id="tm26" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">26</font></td>
                        <td id="tm36" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">36</font></td>
                        <td id="tm46" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">46</font></td>
                    </tr>
                    <tr class="Tr_TmShow">
                        <td id="tm07" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">07</font></td>
                        <td id="tm17" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">17</font></td>
                        <td id="tm27" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">27</font></td>
                        <td id="tm37" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">37</font></td>
                        <td id="tm47" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">47</font></td>
                    </tr>
                    <tr class="Tr_TmShow">
                        <td id="tm08" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">08</font></td>
                        <td id="tm18" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">18</font></td>
                        <td id="tm28" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">28</font></td>
                        <td id="tm38" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">38</font></td>
                        <td id="tm48" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">48</font></td>
                    </tr>
                    <tr class="Tr_TmShow">
                        <td id="tm09" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">09</font></td>
                        <td id="tm19" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">19</font></td>
                        <td id="tm29" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">29</font></td>
                        <td id="tm39" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">39</font></td>
                        <td id="tm49" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/g.gif" runat="server">
                            <font class="ballfont">49</font></td>
                    </tr>
                    <tr class="Tr_TmShow">
                        <td id="tm10" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">10</font></td>
                        <td id="tm20" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/b.gif" runat="server">
                            <font class="ballfont">20</font></td>
                        <td id="tm30" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">30</font></td>
                        <td id="tm40" class="Td_TmBallfont" onclick="SelectTm(this.id);" align="center"
                            background="../imagesBall/r.gif" runat="server">
                            <font class="ballfont">40</font></td>
                        <td id="TD2" class="Td_TmBallfont">
                            &nbsp;</td>
                    </tr>
                </table>
                <table cellspacing="1" cellpadding="0" border="0" class="Main_Table">
                    <tr>
                        <td class="TmLabfont" >
                            <strong>
                                <asp:HyperLink ID="ContTmRBall" runat="server" BackColor="Red" ForeColor="Black">红波</asp:HyperLink>
                                &nbsp;
                                <asp:HyperLink ID="ContTmGBall" runat="server" BackColor="Lime">绿波</asp:HyperLink>&nbsp;
                                &nbsp;<asp:HyperLink ID="ContTmBBall" runat="server" BackColor="Blue">蓝波</asp:HyperLink>&nbsp;</strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="TmLabfont" >
                            <strong>
                                <asp:HyperLink ID="ContTmDr" runat="server" BackColor="#80FF80">单</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="ContTmSa" runat="server" BackColor="#80FFFF">双</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="ContTmDa" runat="server" BackColor="#C0C0FF">大</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="ContTmXa" runat="server" BackColor="#FFC0FF">小</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="ContTmHdr" runat="server" BackColor="#80FF80">合单</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="ContTmHSa" runat="server" BackColor="#80FFFF">合双</asp:HyperLink></strong></td>
                    </tr>
                    <tr>
                        <td class="TmLabfont" >
                            <strong>&nbsp;<asp:HyperLink ID="Cont_jq" runat="server" BackColor="#FF80FF">家禽</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="Cont_ys" runat="server" BackColor="#80FFFF">野兽</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="Cont_qx" runat="server" BackColor="#FFFF80">前六</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="Cont_hx" runat="server" BackColor="#80FF80">后六</asp:HyperLink></strong></td>
                    </tr>
                    <tr>
                        <td class="TmLabfont" >
                            <strong>
                                <asp:HyperLink ID="ContPa" runat="server">鼠</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink
                                    ID="ContPb" runat="server">牛</asp:HyperLink>
                                &nbsp;
                                <asp:HyperLink ID="ContPc" runat="server">虎</asp:HyperLink>
                                &nbsp; &nbsp;<asp:HyperLink ID="ContPd" runat="server">兔</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink
                                    ID="ContPe" runat="server">龙</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="ContPf"
                                        runat="server">蛇</asp:HyperLink>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="TmLabfont" >
                            <strong>
                                <asp:HyperLink ID="ContPg" runat="server">马</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink
                                    ID="ContPh" runat="server">羊</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="ContPi"
                                        runat="server">猴</asp:HyperLink>
                                &nbsp; &nbsp;<asp:HyperLink ID="ContPj" runat="server">鸡</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink
                                    ID="ContPk" runat="server">狗</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="ContPl"
                                        runat="server">猪</asp:HyperLink>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="TmLabfont" >
                            <strong>
                                <asp:HyperLink ID="Cont_wx_j" runat="server" BackColor="Yellow">金</asp:HyperLink>&nbsp;
                                &nbsp;<asp:HyperLink ID="Cont_wx_m" runat="server" BackColor="#FFC080">木</asp:HyperLink>&nbsp;
                                &nbsp;<asp:HyperLink ID="Cont_wx_s" runat="server" BackColor="#E0E0E0">水</asp:HyperLink>&nbsp;
                                &nbsp;<asp:HyperLink ID="Cont_wx_h" runat="server" BackColor="#FF80FF">火</asp:HyperLink>&nbsp;
                                &nbsp;<asp:HyperLink ID="Cont_wx_t" runat="server" BackColor="SaddleBrown">土</asp:HyperLink>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="TmLabfont" >
                            <strong><a class="left_snq_cancel_tool" href="javascript:SelectColorBall('all')">不用</a>&nbsp;
                                <a class="left_snq_cancel_tool" href="javascript:SelectColorBall('cancel')">取消</a></strong></td>
                    </tr>
                </table>
            </div>
 
             <div class="div_table">
                <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                    <tr>
                        <td class="td_Caption_set">
                            下注金额:</td>
                         <td class="td_Text_set">
                            <asp:TextBox ID="gold" name="gold" size="8" MaxLength="10" runat="server" CssClass="Ed_TmMoneyfont"
                                onkeypress="return MoneyKey(event);"></asp:TextBox>
                            <input class="left_snq_ok" onclick="CheckOK()" type="button" value="添加" />
                        </td>
                    </tr>
                    <tr>
                        <td runat="server" colspan="2" style="height: 20px" id="Td1">
                            <select id="WagerList" name="WagerList" size="8" style="width: 100%; height: 99px"
                                runat="server" enableviewstate="false">
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            交易金額:</td>
                        <td class="td_Caption_Text">
                                        <asp:Label ID="LabTmwinje" name="LabTmwinje" runat="server"></asp:Label> 
                                        <input class="left_snq_reset" name="ClearBTN" onclick="ClearWagerData()" type="button"
                                            value="重填" /> 
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            最低限額：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDd" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            單注限額：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDc" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            單号限額：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDz" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            單项最高：</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDx" runat="server"></asp:Label></td>
                    </tr>
                </table>
                <br />
            </div>
            <div>
                <span style="left: 28px; position: relative;">
                    <input id="Button1" runat="server" class="no" name="btnCancel" onclick="ClickCancel();"
                        type="button" value="取消交易" /><asp:Button ID="Button3" runat="server" OnClick="ButOk_Click"
                            Text="確定交易" /><br />
                    <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden;
                        width: 3px" type="text" />
                    <input id="WagerTxt" runat="server" name="TxtButData" style="visibility: hidden;
                        width: 3px" type="text" />
                    <input id="TxtTmpl" runat="server" name="TxtButData" style="visibility: hidden; width: 3px"
                        type="text" /></span>
            </div>
    </form>
</body>
</html>

