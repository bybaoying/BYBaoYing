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

        var notNumber = "��ע�������������֣�";
        var underMinStake = "��ע����С������ע��";
        var overLottoMaxBetLimitValue = "�Բ��𣬱�������ע���������ƣ�";

        var overBetLimit = "��ע���ɴ�춵����޶";
        var overDcLimit = "���]���~���ɴ�춆��]���~(���Զ�����])��";
        var overMaxPayOff = "�Բ��𣬱������ɲ�������ƣ�";
        var noMoney = "��������ע��";
        var sureStake = "�Ƿ�ȷ����ע��";
        var overCredit = "��ע���ɴ�������Ŷ";
        var overEventLimit = "��ע���ɴ�춿��õ����޶";
        var noBall = "��ѡ����ע��ţ�";
        var noWager = "������ע��";
        var stopBall = "�����Ѿ����ƣ�";
        var WType_NB = "����" ;
        var WType_SpA = "����" ;
        
        var WType_SpB = "����B" ;
        var WType_NSB = "�� 1 ��";
//            var DrawSpecial = "49" ;
//            var SpecialOverNumber = "25" ;
        var AlertNumberDouble = "�����ظ���������ѡ��" ;
        var mChoose_NumMin=0;//��Ҫѡ��С��
        var mChoose_Types_Tag ="";//ѡ�����ͱ�ǩ
//            var TmPlStr ;

//            alert(TmPlStr);
//            var arrTmPl = TmPlStr.split(",");

        
       function OtherCheck(strGold)
       {//��֤��ʾ
            ////Ո������ע���~��

            if(strGold == ""){
                alert(noMoney);
                return false;
            }
            //�U��ע���~��횞锵ֵ
            if(isNaN(strGold) == true){
                alert(notNumber);
                return false;
            }
            //���ܵ�������ע���~
            var chkMinStake =  document.getElementById("LabDd").innerHTML;
            if(eval(strGold) < chkMinStake){
                alert(underMinStake+chkMinStake.toString());
                return false;
            }
            //���ܳ��^���چγ����~
            var chkLottoMaxBetLimitValue = document.getElementById("LabDx").innerHTML;
            if(eval(strGold) > chkLottoMaxBetLimitValue){
                alert(overLottoMaxBetLimitValue+chkLottoMaxBetLimitValue);
                return false;
            }
            //��ע���ɴ�춵����޶
            var  chkMaxBetLimitValue =   document.getElementById("LabDz").innerHTML;
            if(eval(strGold) > chkMaxBetLimitValue){
                alert(overBetLimit + chkMaxBetLimitValue);
                return false;
            }
            //"��ע���ɴ�춵�ע�޶"
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
                var  lChipNoTag = lTableObj.rows[i].cells[0].innerHTML ;//ע����ǩ
                
                var  lChipNo = lTableObj.rows[i].cells[0].attributes["ChipNo"].nodeValue ;//ע����
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
 		                strWValue = strWValue + lChipNo +  "$" + lChipNoTag +  "$" + strGold + "@" ;//#��ָ�
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
            {//��ѡ��ĺż����б����
                gTime = gTimeLoad ;//������עʱ��
 	            var objGold = document.getElementById('gold');
	            if (OtherCheck(objGold.value) == false){
		            objGold.focus();
		            return;
	            }
	            TableClear('TabChip');//���б���е��������
	            ShowData();

            }
            
        function TableAddRow(obj,strWType,vSysid,vChipNoTag,vChipNo,vTmPlstr,  strGold){
            
            var newTr = obj.insertRow(-1); //���һ��
           
            newTr.id='Chtr' + vSysid ;
            newTr.ln =    vSysid ;  
 
            newTr.setAttribute("className", "list_cen");//��IE��ת��Ϊclass=list_cen���� �ڹȸ����� className="list_cen"������
            newTr.setAttribute("class", "list_cen");//��IE��ת��Ϊclass="list_cen"������ �ڹȸ����� class="list_cen"����
//                newTr.onmousedown=function(){light_bar(this,'clk');}   
//                newTr.onmouseover=function(){light_bar(this,'ovr');}  
//                newTr.onmouseout=function(){light_bar(this,'out');}  

            //�������//���������ݺ�����
            var strWOption = vSysid + ":[" + vChipNoTag + "] @"  + vTmPlstr + "= $" + strGold;
            
            var newTd = newTr.insertCell(-1);//
            newTd.innerHTML =  vChipNoTag ;
            newTd.setAttribute ("ChipNo" ,vChipNo);
            var newTd = newTr.insertCell(-1);
            newTd.innerHTML =  "@"  + vTmPlstr + "= $"+ "<input size='3' onKeyPress='return CheckKey()' onKeyUp=\"Sumje('TabChip')\" id='TxtChip" + vSysid + 
            "' value='" + strGold + "'>";
            newTd = newTr.insertCell(-1);//
            newTd.innerHTML ="<input type=button class=\"button_delete\" className=\"button_delete\"  onclick=\"TableDelRow('TabChip'," + vSysid + ")\">";
//            newTd.setAttribute("className", "button_delete);//��IE��ת��Ϊclass=list_cen���� �ڹȸ����� className="list_cen"������
//            newTd.setAttribute("class", "button_delete");//��IE��ת��Ϊclass="list_cen"������ �ڹȸ����� class="list_cen"���� 

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
                case "413"://�����ȫ��
	                mChoose_NumMin = 2;
	                break;
                case "411":
	                mChoose_NumMin = 3;
	                break;//����������
                case "412":
	                mChoose_NumMin = 3;
	                break;//�������ж�
                case "414":
	                mChoose_NumMin = 2;
	                break;//���������
                case "415":
	                mChoose_NumMin = 2;
	                break;//�����ش�
                case '2501':
                    mChoose_NumMin = 5;
                    break;//�岻�� 	 
	            case '2502':
	                mChoose_NumMin = 8;
	                break;//�˲���
	            
	            case '551':
	                mChoose_NumMin = 6;
	                break;//��Ф��
	            case '552':
	                mChoose_NumMin = 6;
	                break;//��Ф����
	            case '553':
	                mChoose_NumMin = 5;
	                break;//��Ф
	            case '554':
	                mChoose_NumMin = 4;
	                break;//��Ф
	            case '555':
	                mChoose_NumMin = 3;
	                break;//��Ф
                case '556':
	                mChoose_NumMin = 2;
	                break;//��Ф
                case '3801'://��Ф��
                    mChoose_NumMin = 2;
	                break;
                case '3802'://��Ф��
                    mChoose_NumMin = 3;
	                break;
                case '3803'://��Ф��
                    mChoose_NumMin = 4;
	                break;
                case '3804'://��Ф��
                    mChoose_NumMin = 5;
	                break;
	                
                case '3805'://��Ф����
                    mChoose_NumMin = 2;
	                break;
                case '3806'://��Ф����
                    mChoose_NumMin = 3;
	                break;
                case '3807'://��Ф����
                    mChoose_NumMin = 4;
	                break;
                case '3808'://��Ф����
                    mChoose_NumMin = 5;
	                break;
	                
                case '3901'://��β��
                    mChoose_NumMin = 2;
	                break;
                case '3902'://��β��
                    mChoose_NumMin = 3;
	                break;
                case '3903'://��β��
                    mChoose_NumMin = 4;
	                break;
                case '3904'://��β��  
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
            var lTmZNo = "<% =Request.QueryString["TmZNo"] %>"; //��ȡ�Ƿ�ѡ��������
            var lWType = 0;
//                alert(lTmClassId,lTmNo);
            if (lTmZNo == "00" || lTmZNo == "")
            {//��ȡ�Ƿ�ѡ��������,û��ѡ����
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
            {//ѡ��������
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
                
                    lChipNoArr = lGroupNoStr.split(";");//��һ�ģ�
                }
                else
                {
                    lChipNoArr = lGroupNoStr.split("!");
                }
                
            }
           

            var lTmje = 0;
            var lChipNoStr;
            var lBackValue  ;
            var lChoosePl =false;//ѡ�����ʣ�true ѡ��ߴ�����
            var TableObj = document.getElementById('TabChip');
            for (var i = 0 ; i < (lChipNoArr.length - 1); i++){
                if (lTmZNo == "00" || lTmZNo == ""){//��ȡ�Ƿ�ѡ��������,û��ѡ����
                    lChipNoStr = lChipNoArr[i];
                }
                else {//ѡ��������
                    lChipNoStr = lTmZNo + ';' + lChipNoArr[i];
                }
                switch(lTmClassId) {

                    case '38':
                        lBackValue = ChipNoSx_TagStr(lChipNoStr);//������ϱ�ǩ ��Ф
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '43':
                        lBackValue = ChipNoSx_TagStr(lChipNoStr);//������ϱ�ǩ ��Ф
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '44':
                        lBackValue = ChipNoSx_TagStr(lChipNoStr);//������ϱ�ǩ ��Ф
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '45':
                        lBackValue = ChipNoSx_TagStr(lChipNoStr);//������ϱ�ǩ ��Ф
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                        
                    case '39':
                        lBackValue = ChipNoWs_TagStr(lChipNoStr);//������ϱ�ǩ β��
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break; 
                    case '46':
                        lBackValue = ChipNoWs_TagStr(lChipNoStr);//������ϱ�ǩ β��
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '47':
                        lBackValue = ChipNoWs_TagStr(lChipNoStr);//������ϱ�ǩ β��
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    case '48':
                        lBackValue = ChipNoWs_TagStr(lChipNoStr);//������ϱ�ǩ β��
                        lTmNoTag =lBackValue[0];
                        lChoosePl =lBackValue[1];
                        break;
                    default:
                        lTmNoTag = lChipNoStr; 
                        break;
                }
                if (lChoosePl == true)
                {//ѡ�����ʣ�true ѡ��ߴ�����
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
                <asp:Label ID="LabTzC" runat="server" Text="Ͷע"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="���׵�"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="��ʱ:"></asp:Label>
                <asp:Label ID="LabTime" runat="server"></asp:Label>
            </div>
        </div>
        <div class="div_Head_d">
            <div class="div_table">
                <table cellspacing="0" cellpadding="0" border="0" class="Head_Table">
                    <tbody>
                        <tr>
                            <td class="td_Caption_set">
                                ����:
                            </td>
                            <td>
                                <span id="Labtmwinno" class="span_set" runat="server"></span>
                            </td>
                         </tr>
                        <tr>
                            <td class="td_Caption_set">
                                �ʻ�����:
                            </td>
                            <td>
                                <span id="TxtUsername" class="span_set" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_Caption_set">
                                ���ö��:
                            </td>
                            <td>
                                <span id="Labxynd" class="span_set" runat="server"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_Caption_set">
                                ʹ�Îńe:
                            </td>
                            <td>
                                <span id="LabBzname" class="span_set" runat="server">�����(RMB)</span>
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
                            <asp:Label ID="Label9" runat="server" Text="������ע���"></asp:Label>
                            <em>
                                <asp:Label ID="LabTjeA" runat="server"></asp:Label></em>
                            <asp:Label ID="Label10" runat="server" Text="���� !!"></asp:Label>
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
                            ��ע���:</td>
                        <td class="td_Text_set">
                            <asp:TextBox ID="gold" name="gold" size="4" MaxLength="10" runat="server" CssClass="Ed_TmMoneyfont"
                                onkeypress="return MoneyKey(event);" style="width: 40px;height: 16px"></asp:TextBox>
                            <input class="left_snq_ok" onclick="CheckOK()" type="button" value="���" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 20px">
                            <table id="" cellspacing="1" cellpadding="0" border="0" class="Main_Table">
                                <thead>
                                    <tr>
                                        <td class="td_Head_set_cen">
                                            ����</td>
                                        <td class="td_Head_set_cen">
                                            ����/���</td>
                                        <td class="td_Head_set_cen">
                                            ����</td>
                                    </tr>
                                </thead>
                                <tbody id="TabChip" runat="server">
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            ���׽��~:</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabTmwinje" name="LabTmwinje" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            ������~��</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDd" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            ��ע���~��</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDc" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            �κ����~��</td>
                        <td class="td_Caption_Text">
                            <asp:Label ID="LabDz" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="td_Caption_set">
                            ������ߣ�</td>
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
                    <input type="button" name="btnCancel" value="ȡ������" onclick="ClickCancel();" class="no"
                        id="Button1" runat="server"/>&nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="ButCmdData" runat="server" OnClick="ButOk_Click" Text="�_������" Width="73px"
                        OnClientClick="return SubData();" />  
            </div></form>
            <div style="height: 80px;">
            </div>
        
    </div>
</body>
</html>

