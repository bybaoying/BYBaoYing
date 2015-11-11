<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_FT_order_Lm, App_Web_3mbbw7kj" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Main_left_TM.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript" src="../js/Lm_Chip_Tag.js"></script>
    <script language="JavaScript" type="text/javascript" src="../js/FT_Order_tm.js"></script>
    <script language="JavaScript" type="text/javascript" src="../js/Sub_GroupStr.js"></script>
    
    <script language="JavaScript" type="text/javascript">
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
        var mChoose_NumMin=0;//需要选最小数
        var mChoose_Types_Tag ="";//选择类型标签
//            var TmPlStr ;

//            alert(TmPlStr);
//            var arrTmPl = TmPlStr.split(",");

        
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
            var chkMinStake =  document.getElementById("LabDd").innerHTML;
            if(eval(strGold) < chkMinStake){
                alert(underMinStake+chkMinStake.toString());
                return false;
            }
            //不能超過本期單场限額
            var chkLottoMaxBetLimitValue = document.getElementById("LabDx").innerHTML;
            if(eval(strGold) > chkLottoMaxBetLimitValue){
                alert(overLottoMaxBetLimitValue+chkLottoMaxBetLimitValue);
                return false;
            }
            //下注金额不可大於单号限额：
            var  chkMaxBetLimitValue =   document.getElementById("LabDz").innerHTML;
            if(eval(strGold) > chkMaxBetLimitValue){
                alert(overBetLimit + chkMaxBetLimitValue);
                return false;
            }
            //"下注金额不可大於单注限额："
            var  chkMaxBetLimitValue =   document.getElementById("LabDc").innerHTML;
            if(eval(strGold) > chkMaxBetLimitValue){
                alert(overDcLimit + chkMaxBetLimitValue);
                return false;
            }

        }   
            
        function SubData()
        {
            var lTableObj = document.getElementById("TabChip");
            var lgold =0 ;
            document.getElementById("LabTmwinje").innerHTML = '0';
            var lTxtChipCoun = lTableObj.rows.length;
            var strWValue ="";
             
           for(i=0; i<lTxtChipCoun; i++) {
                
                var  lChipMoney ="TxtChip" + lTableObj.rows[i].ln ;
                var  lChipNoTag = lTableObj.rows[i].cells[0].innerHTML ;//注单标签
                
                var  lChipNo = lTableObj.rows[i].cells[0].attributes["ChipNo"].nodeValue ;//注单号
//                alert(lChipNo);
                if (document.getElementById(lChipMoney) != null) {
                    var strGold = Number(document.getElementById(lChipMoney).value)
                    if (strGold != 0)
                    {
                        if (OtherCheck(strGold) == false){
		                    document.getElementById(lChipMoney).focus();
		                    return false;
	                    }
 		                lgold = lgold + strGold ;
// 		                strWValue = strWValue + lChipNo +  "#" + lChipNoTag +  "#" + strGold + "@" ;
 		                strWValue = strWValue + lChipNo +  "$" + lChipNoTag +  "$" + strGold + "@" ;//#类分隔
// 		                strWValue = strWValue + lChipNo +  "#" + strGold + "@" ;
                    }
                        
                }
            }
            document.getElementById("LabTmwinje").innerHTML = lgold;
            document.getElementById("WagerTxt").value= strWValue ;
            
            if (!SubChk()){
                
                return false;
            }
            return true; 
//            return false;
//            document.getElementById("WagerTxt").value = lWagerStr ;
//                return false;
        }     
            function CheckOK()
            {//把选择的号加入列表框中
                gTime = gTimeLoad ;//重置下注时间
 	            var objGold = document.getElementById('gold');
	            if (OtherCheck(objGold.value) == false){
		            objGold.focus();
		            return;
	            }
	            TableClear('TabChip');//把列表框中的数据清空
	            ShowData();

            }
            
        function TableAddRow(obj,strWType,vSysid,vChipNoTag,vChipNo,vTmPlstr,  strGold){
            
            var newTr = obj.insertRow(-1); //添加一行
           
            newTr.id='Chtr' + vSysid ;
            newTr.ln =    vSysid ;  
 
            newTr.setAttribute("className", "list_cen");//在IE中转换为class=list_cen好用 在谷歌中是 className="list_cen"不好用
            newTr.setAttribute("class", "list_cen");//在IE中转换为class="list_cen"不好用 在谷歌中是 class="list_cen"好用
//                newTr.onmousedown=function(){light_bar(this,'clk');}   
//                newTr.onmouseover=function(){light_bar(this,'ovr');}  
//                newTr.onmouseout=function(){light_bar(this,'out');}  

            //添加两列//设置列内容和属性
            var strWOption = vSysid + ":[" + vChipNoTag + "] @"  + vTmPlstr + "= $" + strGold;
            
            var newTd = newTr.insertCell(-1);//
            newTd.innerHTML =  vChipNoTag ;
            newTd.setAttribute ("ChipNo" ,vChipNo);
            var newTd = newTr.insertCell(-1);
            newTd.innerHTML =  "@"  + vTmPlstr + "= $"+ "<input size='3' onKeyPress='return CheckKey()' onKeyUp=\"Sumje('TabChip')\" id='TxtChip" + vSysid + 
            "' value='" + strGold + "'>";
            newTd = newTr.insertCell(-1);//
            newTd.innerHTML ="<input type=button class=\"button_delete\" className=\"button_delete\"  onclick=\"TableDelRow('TabChip'," + vSysid + ")\">";
//            newTd.setAttribute("className", "button_delete);//在IE中转换为class=list_cen好用 在谷歌中是 className="list_cen"不好用
//            newTd.setAttribute("class", "button_delete");//在IE中转换为class="list_cen"不好用 在谷歌中是 class="list_cen"好用 

        }
        function Sumje(vTableid)
        {
            var lTableObj = document.getElementById(vTableid);
//            var obj = document.lt_form ;
            var lgold =0 ;
            document.getElementById("LabTmwinje").innerHTML  = '0';
            var lTxtChipCoun = lTableObj.rows.length;
 
           for(i=0; i<lTxtChipCoun; i++) {
                
                var  lChipMoney ="TxtChip" + lTableObj.rows[i].ln ;

                if (document.getElementById(lChipMoney) != null) {
                    var strGold = Number(document.getElementById(lChipMoney).value)
                    if (strGold != 0)
                    {
 		                lgold = lgold + strGold ;
                    }
                }
            }
   
            document.getElementById("LabTmwinje").innerHTML = lgold;
        }
        function TableDelRow(Tableid,lineid)
        {
            var TableObj = document.getElementById(Tableid);
            for(i=0; i<TableObj.rows.length;i++)
            {
            
                if(TableObj.rows[i].id == 'Chtr' + lineid)
                {
                    TableObj.deleteRow(i);
                    Sumje('TabChip' );
                    return;
                }
            }
            
         }
        function TableClear(Tableid)
        {
            var TableObj = document.getElementById(Tableid);
            var lTabRowsnum = TableObj.rows.length ;
            for(i=0; i< lTabRowsnum ;i++)
            {
                TableObj.deleteRow(0);
            }
         }


        function loadData()
        {
     
//                document.getElementById('gold').value = "<% =Request.QueryString["Tmje"] %>";
            if (OtherCheck(document.getElementById('gold').value) == false){
                return;
            }
            ShowData();
        }
            
        function FunTypeMaxmin(vTmClassId,vTmTypeId) 
        {

			 switch(vTmTypeId) {
                case "413"://连码二全中
	                mChoose_NumMin = 2;
	                break;
                case "411":
	                mChoose_NumMin = 3;
	                break;//连码三中三
                case "412":
	                mChoose_NumMin = 3;
	                break;//连码三中二
                case "414":
	                mChoose_NumMin = 2;
	                break;//连码二中特
                case "415":
	                mChoose_NumMin = 2;
	                break;//连码特串
                case '2501':
                    mChoose_NumMin = 5;
                    break;//五不中 	 
	            case '2502':
	                mChoose_NumMin = 8;
	                break;//八不中
	            
	            case '551':
	                mChoose_NumMin = 6;
	                break;//六肖中
	            case '552':
	                mChoose_NumMin = 6;
	                break;//六肖不中
	            case '553':
	                mChoose_NumMin = 5;
	                break;//五肖
	            case '554':
	                mChoose_NumMin = 4;
	                break;//四肖
	            case '555':
	                mChoose_NumMin = 3;
	                break;//三肖
                case '556':
	                mChoose_NumMin = 2;
	                break;//二肖
                case '3801'://二肖碰
                    mChoose_NumMin = 2;
	                break;
                case '3802'://三肖碰
                    mChoose_NumMin = 3;
	                break;
                case '3803'://四肖碰
                    mChoose_NumMin = 4;
	                break;
                case '3804'://五肖碰
                    mChoose_NumMin = 5;
	                break;
	                
                case '3805'://二肖不碰
                    mChoose_NumMin = 2;
	                break;
                case '3806'://三肖不碰
                    mChoose_NumMin = 3;
	                break;
                case '3807'://四肖不碰
                    mChoose_NumMin = 4;
	                break;
                case '3808'://五肖不碰
                    mChoose_NumMin = 5;
	                break;
	                
                case '3901'://二尾碰
                    mChoose_NumMin = 2;
	                break;
                case '3902'://三尾碰
                    mChoose_NumMin = 3;
	                break;
                case '3903'://四尾碰
                    mChoose_NumMin = 4;
	                break;
                case '3904'://五尾碰  
                    mChoose_NumMin = 5;
	                break;	                
	                
                default:

	                break;
            }   
            
 

        }
        function ShowData()
        {
            var lTmClassId =  "<% =Request.QueryString["TmClassId"] %>";
            var lTmTypeId =  "<% =Request.QueryString["TmTypeId"] %>";
//                TmClassId=09&TmTypeId=411
//                TmNo=13;15;17;18;&TmZNo=00&TmJe=
            FunTypeMaxmin(lTmClassId,lTmTypeId ); 
//            alert(Group10Str("0;1;2;3;4;5;6;7;8;9;10;"));
     
            var lTmNo = "<% =Request.QueryString["TmNo"] %>"; 
            var lChipNoArr ;
            var lTmNoTag;
            var lGroupNoStr;
            var lTmZNo = "<% =Request.QueryString["TmZNo"] %>"; //提取是否选择了正号
            var lWType = 0;
//                alert(lTmClassId,lTmNo);
            if (lTmZNo == "00" || lTmZNo == "")
            {//提取是否选择了正号,没有选正号
			     switch(mChoose_NumMin) {
                    case 2:
                        lGroupNoStr = Group2Str(lTmNo);
	                    break;
                    case 3:
	                    lGroupNoStr = Group3Str(lTmNo);
	                    break;
                    case 4:
	                    lGroupNoStr = Group4Str(lTmNo);
	                    break;
                    case 5:
	                    lGroupNoStr = Group5Str(lTmNo);
	                    lWType = 1;
	                    break;
	                case 6:
	                    lGroupNoStr = Group6Str(lTmNo);
	                    break;
	                case 7:
	                    lGroupNoStr = Group7Str(lTmNo);
	                    break;
                    case 8:
	                    lGroupNoStr = Group8Str(lTmNo); 
	                    lWType = 2;
	                    break;
                }
//                alert(lGroupNoStr);
                lChipNoArr = lGroupNoStr.split("!")
            }
            else
            {//选择了正号
			     switch(mChoose_NumMin) {

                    case 2:
                       
	                    break;
                    case 3:
	                    lGroupNoStr = Group2Str(lTmNo);
	                    break;
                    case 4:
	                    lGroupNoStr = Group3Str(lTmNo);
	                    break;
                    case 5:
	                    lGroupNoStr = Group4Str(lTmNo);
	                    lWType = 1;
	                    break;
                    case 6:
	                    lGroupNoStr = Group5Str(lTmNo);
	                    break;
	                case 7:
	                    lGroupNoStr = Group6Str(lTmNo);
	                    break;
                    case 8:
	                    lGroupNoStr = Group7Str(lTmNo);
	                    lWType = 2;
	                    break;
                }
            
                if (mChoose_NumMin == 2)
                {
                
                    lChipNoArr = lGroupNoStr.split(";");//组一的，
                }
                else
                {
                    lChipNoArr = lGroupNoStr.split("!");
                }
                
            }
           

            var lTmje = 0;
            var lChipNoStr;
            var lBackValue  ;
            var lChoosePl =false;//选择赔率，true 选择高次赔率
            var TableObj = document.getElementById('TabChip');
            for (var i = 0 ; i < (lChipNoArr.length - 1); i++){
                if (lTmZNo == "00" || lTmZNo == ""){//提取是否选择了正号,没有选正号
                    lChipNoStr = lChipNoArr[i];
                }
                else {//选择了正号
                    lChipNoStr = lTmZNo + ';' + lChipNoArr[i];
                }
                switch(lTmClassId) {

                    case '38':
                        lBackValue = ChipNoSx_TagStr(lChipNoStr);//进行组合标签 连肖
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '43':
                        lBackValue = ChipNoSx_TagStr(lChipNoStr);//进行组合标签 连肖
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '44':
                        lBackValue = ChipNoSx_TagStr(lChipNoStr);//进行组合标签 连肖
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '45':
                        lBackValue = ChipNoSx_TagStr(lChipNoStr);//进行组合标签 连肖
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                        
                    case '39':
                        lBackValue = ChipNoWs_TagStr(lChipNoStr);//进行组合标签 尾数
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break; 
                    case '46':
                        lBackValue = ChipNoWs_TagStr(lChipNoStr);//进行组合标签 尾数
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '47':
                        lBackValue = ChipNoWs_TagStr(lChipNoStr);//进行组合标签 尾数
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '48':
                        lBackValue = ChipNoWs_TagStr(lChipNoStr);//进行组合标签 尾数
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    default:
                        lTmNoTag = lChipNoStr; 
                        break;
                }
                if (lChoosePl == true)
                {//选择赔率，true 选择高次赔率
                    TableAddRow(TableObj, lWType,i+1,lTmNoTag,lChipNoStr,document.getElementById("LabPL").attributes["value"].nodeValue ,document.getElementById('gold').value);
                }
                else
                {
                    TableAddRow(TableObj, lWType,i+1,lTmNoTag,lChipNoStr,document.getElementById("LabPL").innerHTML,document.getElementById('gold').value);
                }
                
                lTmje = lTmje + Number( document.getElementById('gold').value);
            
            }
            Sumje('TabChip' );
        }
        function ClickCancel()
        {
            self.location='../App/select_lt.aspx?GameType=TM';
        }
    </script>

    <%--leftmargin="0" topmargin="0" oncontextmenu="window.event.returnValue=false" document.btype.value="parent.body.document.btype.value"
    style="background-image: url(../images/order_bk.gif); background-repeat: repeat-y"--%>
</head>
<body onload="loadData();">
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
                         </tr>
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
            <table id="TableA" class="Main_Table" cellspacing="1" cellpadding="0" border="0">
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
                <tr>
                    <td class="td_cen_caption" colspan="2">
                        <br/>
                        <asp:Label ID="LabTzName" runat="server" Text="AAAA"></asp:Label>@ <em>
                            <asp:Label ID="LabPL" name="LabPL" runat="server" Text=""></asp:Label>
                            <asp:Label ID="LabPLB" runat="server" name="LabPL" Text=""></asp:Label></em></td>
                </tr>
            </table>
        </div>
        <form id="Form1" name="select_lt" method="post" runat="server">
            <div class="div_table">
                <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                    <tr>
                        <td class="td_Caption_set">
                            下注金额:</td>
                        <td class="td_Text_set">
                            <asp:TextBox ID="gold" name="gold" size="4" MaxLength="10" runat="server" CssClass="Ed_TmMoneyfont"
                                onkeypress="return MoneyKey(event);" style="width: 40px;height: 16px"></asp:TextBox>
                            <input class="left_snq_ok" onclick="CheckOK()" type="button" value="添加" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 20px">
                            <table id="" cellspacing="1" cellpadding="0" border="0" class="Main_Table">
                                <thead>
                                    <tr>
                                        <td class="td_Head_set_cen">
                                            号码</td>
                                        <td class="td_Head_set_cen">
                                            赔率/金额</td>
                                        <td class="td_Head_set_cen">
                                            操作</td>
                                    </tr>
                                </thead>
                                <tbody id="TabChip" runat="server">
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            交易金額:</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabTmwinje" name="LabTmwinje" runat="server"></asp:Label>
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
            </div>
            <div class="div_sendsub">
                
                    <input id="WagerTxt" runat="server" name="WagerTx" type="text" style="visibility: hidden;
                        width: 3px; display: none;" />
                    <input id="TxtButData" runat="server" name="TxtButData" style="visibility: hidden;
                        width: 3px; display: none;" type="text" />
                    <input type="button" name="btnCancel" value="取消交易" onclick="ClickCancel();" class="no"
                        id="Button1" runat="server"/>&nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="ButCmdData" runat="server" OnClick="ButOk_Click" Text="確定交易" Width="73px"
                        OnClientClick="return SubData();" />  
            </div></form>
            <div style="height: 80px;">
            </div>
        
    </div>
</body>
</html>

