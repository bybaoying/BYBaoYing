<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_ln_lx, App_Web_xt-ylzzg" enableEventValidation="false" %>
<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_TM.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../js/sub_chipEdit.js"></script>

    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>
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
        var ldataload = "��ע���ڽ��С���!!";
        var mChipMoneySum = 0 ;//����ע���Ľ��ϼ�
        var tmQS= new Array();//��Ф����
        tmQS[4]=	'ys';//��
        tmQS[3]=	'ys';//��
        tmQS[2]=	'jq';//ţ
        tmQS[1]=	'ys';//��
        tmQS[12]=	'jq';//��
        tmQS[11]=	'jq';//��
        tmQS[10]=	'jq';//��
        tmQS[9]=	'ys';//��
        tmQS[8]=    'jq';//��
        tmQS[7]=	'jq';//��
        tmQS[6]=	'ys';//��
        tmQS[5]=	'ys';//��
            
        var tmQH= new Array();//��Ф����
        tmQH[4]=	'qx';//��
        tmQH[3]=	'qx';//��
        tmQH[2]=	'qx';//ţ
        tmQH[1]=	'qx';//��
        tmQH[12]=	'hx';//��
        tmQH[11]=	'hx';//��
        tmQH[10]=	'hx';//��
        tmQH[9]=	'hx';//��
        tmQH[8]=    'hx';//��
        tmQH[7]=	'hx';//��
        tmQH[6]=	'qx';//��
        tmQH[5]=	'qx';//��    

        function SelectType(vType ,vObect){
//            parent.SelectBallType(vType,vObect.value);
            
            if (Number(vObect.value)<=0)
            {
//                vObect.focus();
//                alert("ͨ�½���Ϊ��!!");
//                return ;
                
//                document.getElementById("Txtsxje").value = Number(vObect.value);
            }
 
          switch(vType){
               case 'dr'://��
                    DrSaValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"dr");
                 break;
               
               case 'sa': //˫
                    DrSaValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"sa");
                 break;
                
               case 'jq': //����
                    QYValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"jq");
                 break;
               case 'ys': //Ұ��
                    QYValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"ys");
                 break;
               case 'qx': //ǰ��
                    QHValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"qx");
                 break;
               case 'hx': //����
                    QHValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"hx");
                 break;
              }
            
        }
        
        function QHValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue )//��˫ֵ
        {
            var lArrNo = vNoValue.split(".");
            var lquerstr = "";
            var lMoneySum =0;

            for (var i = 0 ; i < (lArrNo.length ); i++){
               if (lArrNo[i] != ""){

                    var  lSelectNo =vTmNoCap + lArrNo[i];
                    if (tmQH[i+1] == vTypeValue)
                    {
                        document.getElementById(lSelectNo).checked = true;
                     }
                }
            } 
        }
        function QYValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue )//��˫ֵ
        {
            var lArrNo = vNoValue.split(".");
            var lquerstr = "";
            var lMoneySum =0;

            for (var i = 0 ; i < (lArrNo.length ); i++){
               if (lArrNo[i] != ""){

                    var  lSelectNo =vTmNoCap + lArrNo[i];
                    if (tmQS[i+1] == vTypeValue)
                    {
                        document.getElementById(lSelectNo).checked = true;
                     }
                }
            } 
        }
        function DrSaValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue)//��˫ֵ
        {
            var lArrNo = vNoValue.split(".");
            var lquerstr = "";
            var lMoneySum =0;

            for (var i = 0 ; i < (lArrNo.length ); i++){
               if (lArrNo[i] != ""){

                    var  lSelectNo =vTmNoCap + lArrNo[i]; 
                    if (document.getElementById(lSelectNo).attributes["dr_sa"].nodeValue == vTypeValue)
                    {
                        document.getElementById(lSelectNo).checked = true;
                     }
                }
            } 
        }
        function SubData()
        {
            if (SubChkOther()==false){
                return false;
            }

//                alert(  document.getElementById('WagerTxt').value )
            mChipMoneySum = 0 ;//����ע���Ľ��ϼ�
            document.getElementById('WagerTxt').value = "" ;
            var lWagerStr= "",lSetValue = "";

            
            lSetValue = SetValue("20","sx6y.sx6n.sx5.sx4.sx3.sx2","551.552.553.554.555.556");
            if (lSetValue == "ChkFalse"){
                return false;
            }  
            lWagerStr = lWagerStr + lSetValue ;
            //�ύ���ݼ��.�޶�
            if (!SubChk(String(mChipMoneySum),document.getElementById('Labxynd').innerHTML)){
                return false;
            }
            document.getElementById('WagerTxt').value = lWagerStr ;
            return true; 
        }
            
   
        var mType_id = 0;//��ǰѡ��ģ���ע���id
 
   
        var mChoose_Nums = 0;//��ǰѡ����
        var mChoose_NumMax = 0;  //��Ҫѡ�����
        var mChoose_NumMin = 0;//��Ҫѡ��С��
        var mChoose_CountNums=0;// �п�ѡ�ؼ���
        var mChoose_Num = 0;//��ǰѡ����
        
        var mess1 =  '����ѡ��';
        var mess11 = '����Ф';
        var mess2 =  '���ѡ��';
        var mess3 =   '�� 6 ����Ф����Ϊһ��,��Ͷע�ڵ�˫��!';
        var mess = '��ѡ��';
    
        
        function SetValue(vClass,vType_Capion,vType_id)//SubData()//�ύ����,������ϼ��
        {
            var lType_Capion = vType_Capion.split(".");//"sx6y.sx6n.sx5.sx4.sx3.sx2", 
            var lArrTmId = vType_id.split(".");// "551.552.553.554.555.556"
            var obj = document ;
            var lquerstr = "";
            var ltmsumje = 0;
            
            var lTmNo ="", lTmCaption ="";
	                              
            for (var i = 0 ; i < (lType_Capion.length ); i++){
               if (lType_Capion[i] != ""){
                    var  lSelectTm ="Txt" + lType_Capion[i];
                    if (document.getElementById(lSelectTm).checked == true){
                        document.getElementById(lSelectTm).checked = false;
                        
                        for (var j=1; j <= 12; j++) {
                            if (document.getElementById('Chksx' + j ).checked)
	                        {

	                              lTmNo += String(j) +";";
	                              lTmCaption += document.getElementById('LabCsx' + j ).innerHTML +";";
	                               
	                              
    //                            document.lt_form.rs_s.value += lobjChk.value +";";
    	                       }
                        } 
                    
                        document.getElementById("TxtTypeId").value = lArrTmId[i];
	                    var  lSelectJe ="Txt" + "sxje";
                        if (!SubChkdz(document.getElementById(lSelectJe).value, document.getElementById("LabDc" + vClass).innerHTML, 
                                document.getElementById("LabDz" + vClass).innerHTML, document.getElementById("LabDd" + vClass).innerHTML)){
                            return "ChkFalse";
                        }
//                        lquerstr = lquerstr +  lType_Capion[i] + "$" + String(  Number(document.getElementById(lSelectJe).value) ) + ";";
                        lTmNo =  lTmNo.substring(0,lTmNo.length-1);
                        lquerstr = lquerstr + lArrTmId[i] + "&" + lTmNo + "$" +  lTmCaption + "$" + String(  Number(document.getElementById(lSelectJe).value) ) + "@";
            
                        ltmsumje = ltmsumje  + Number( document.getElementById(lSelectJe).value ) ;
                        mChipMoneySum = mChipMoneySum  + Number( document.getElementById(lSelectJe).value ) ;
                    }
                }
            }
            

            if (lquerstr == "" ){
                return "";
             }
             else{
//	                alert( "LabDx" + vClass + document.getElementById("LabDx" + vClass ').innerHTML );  // "��ע�������������֣�";
                if (!SubClassChk(String(ltmsumje),document.getElementById("LabDx" + vClass).innerHTML)){
                    return "ChkFalse";
                }
                return vClass + "&" +  lquerstr + "#";
                
//                return   lquerstr ;
            }
        }



        
        function SubChkOther() {
            var obj = document.Form1 ;
//                alert(String(obj.elements.length));
            var checkCount = 0;
            
            var rtypechk = 0;
            for(i=0; i<obj.rtype.length; i++) {
                if (obj.rtype[i].checked)
	                rtypechk ++;
            }

            
            if (rtypechk == 0) {
              alert('��ѡ��Ͷע���!');
              return false;
            }

            var checknum = obj.elements.length;
            for(i=0; i<checknum; i++) {
                if (obj.elements[i].checked && obj.elements[i].type == "checkbox") {
	                checkCount ++;
                }
            }
            if (checkCount < mChoose_NumMin || checkCount > mChoose_NumMax || checkCount == 0) 
            {
                alert(mess + String (mChoose_NumMin) +mess11);
        		
                return false;
            }  
            
//                alert(checkCount);
            return true;
//                alert(mChoose_Nums);
//                if(mChoose_Nums != (mChoose_NumMin + 1)){
//	                alert(mess1);
//	                return false;
//                }
            
//                if(document.getElementById('TxtButData').value =="over")
//                {//������������������������¼�
//                     
//                     alert("��ע���ڽ��С���!!");
//                     return false;
//                }
//                document.getElementById('TxtButData').value="over";
        }
        function Fun_ChooseClick(obj) {
            if (! SubChkBox(obj)){
                return;
            }

        }
        function SubChkBox(obj ) {

            if(obj.checked == false)
            {
                mChoose_Nums--;
            }
 
            //ѡ���������,���6��
            if(obj.checked == true)	{
                mChoose_Nums++;
                if ( mChoose_Nums > mChoose_NumMax ) {
	                
	                mChoose_Nums--; 
	                alert(mess + String (mChoose_NumMax) +mess11);
	                obj.checked = false;
	                
                }
                
                if ( 6 == mChoose_NumMin ) {//���ѡ�������Ф
                    var dr_num =0,lDr_nums= 0; //ѡ�񵥵�����
                    var jq_num =0,lJq_nums= 0; //ѡ����ݵ�����

                    for(i=1; i <= 12; i++) {
                        if (document.getElementById('Chksx' +i).checked)
	                    {
	                        if (document.getElementById('Chksx' +i).attributes["dr_sa"].nodeValue == 'dr')
	                            dr_num ++;
	                        
	                        if (tmQS[i]== 'jq')
	                            jq_num ++;
	                            
//                            document.lt_form.rs_s.value += lobjChk.value +";";
	                   }
                    } 
//                        alert( 'ѡ�񵥵�����' + jq_num);	 
                    if (dr_num == 0 || dr_num == 6)  {//ѡ�񵥵�����
                        lDr_nums = 2;//��Ф�ʲ�: ��Ф���� = (1)ȫѡ�񵥺���Ф ����-��Ф�ʲ�*3   (2)ѡ��5��������Ф ����-��Ф�ʲ�*2   (3)ѡ��4��������Ф ����-��Ф�ʲ�*1  (4)ѡ��3��������Ф ����-��Ф�ʲ�*0
                    }
                    if (dr_num == 1 || dr_num == 5)  {
                        lDr_nums = 1;
                    }  
                    if (dr_num == 2 || dr_num == 4)  {
                        lDr_nums = 0;
                    }
                    if (dr_num == 3 )  {
                        lDr_nums = 0;
                    }   
                    if (jq_num == 0 || jq_num == 6)  {//ѡ�񵥵�����
                        lJq_nums = 2;//��Ф�ʲ�: ��Ф���� = (1)ȫѡ�񵥺���Ф ����-��Ф�ʲ�*3   (2)ѡ��5��������Ф ����-��Ф�ʲ�*2   (3)ѡ��4��������Ф ����-��Ф�ʲ�*1  (4)ѡ��3��������Ф ����-��Ф�ʲ�*0
                    }
                    if (jq_num == 1 || jq_num == 5)  {
                        lJq_nums = 1;
                    }  
                    if (jq_num == 2 || jq_num == 4)  {
                        lJq_nums = 0;
                    }
                    if (jq_num == 3 )  {
                        lJq_nums = 0;
                    }                          
                    obj = document.Form1;
                    for(i=0; i<obj.rtype.length; i++) {
                        if (obj.rtype[i].checked)
                        {

	                        select_sx(obj.rtype[i].value,lDr_nums,lJq_nums);//
                        }
                    }
                          
                }
                
            }
        }
        function reset_num(){
            mChoose_Nums='1';

            return true;
        }

        //��Ф�ʲ�: ��Ф���� = (1)ȫѡ�񵥺���Ф ����-��Ф�ʲ�*3   (2)ѡ��5��������Ф ����-��Ф�ʲ�*2   (3)ѡ��4��������Ф ����-��Ф�ʲ�*1 (4)ѡ��3��������Ф ����-��Ф�ʲ�*0
        var mPldiff = 0;  
        function Select_Item(vCaption,vType_id,vChoose_NumMin,vChoose_NumMax,vChoose_Nums) {            
            mChoose_NumMax = vChoose_NumMax;//��Ҫѡ�����
            mChoose_NumMin = vChoose_NumMin;//��Ҫѡ��С��
            mChoose_CountNums =   vChoose_Nums// �ѿ�ѡ�ؼ���
            
            mType_id= vType_id;
            var  lSelectPl ="Lab" + vCaption ; 
            document.getElementById('Labpl').innerHTML = document.getElementById(lSelectPl).innerHTML;//��ʾ��ǰ����
        }
        function select_sx(vCaption,vDr_nums,vJq_nums) {
                var lDr_nums = vDr_nums;
                var lJq_nums = vJq_nums;
                var obj = document ;
                var  lSelectTm ="Txt" + vCaption;
                if (document.getElementById(lSelectTm).checked == true  ){
                    var  lSelectPl ="Lab" + vCaption ;        
                    if (vCaption =='sx6y' || vCaption == 'sx6n')
                    {//��ѡ����Ф�� 	��Ф���� �谴��˫�������������¼������ʡ�
                        
                        var  lDrPlDiff ="Laba" + vCaption ; 
                        var  lQsPlDiff ="Labb" + vCaption ; 
                        
                        if (Number(document.getElementById(lDrPlDiff).innerHTML) * lDr_nums >Number(document.getElementById(lQsPlDiff).innerHTML) * lJq_nums)
                        {
                            document.getElementById('Labpl').innerHTML = Math.round((Number(document.getElementById(lSelectPl).innerHTML) - Number(document.getElementById(lDrPlDiff).innerHTML) * lDr_nums ) * 100) /100;
                        }
                        else
                        {
                            document.getElementById('Labpl').innerHTML = Math.round((Number(document.getElementById(lSelectPl).innerHTML) - Number(document.getElementById(lQsPlDiff).innerHTML) * lJq_nums ) * 100) /100;
                        } 
                        
                    }
                    else
                    {
                        document.getElementById('Labpl').innerHTML = document.getElementById(lSelectPl).innerHTML;
                    }
                }
        } 
        
        function openLink()
        {
            
            var lReftime = document.getElementById('retime').value; 
            location="?stoptime=" + lReftime ;
        }
        function PageLoad(){

                     
            if (document.getElementById("TableKK") == null)
            { 
            
            }
            else
            {
                var lReftime ="<% =Request.QueryString["stoptime"] %>";
                if (lReftime != "")
                {
                    document.getElementById('retime').value =lReftime;
                }
            }
            ReTimeShow();   
            
        }
        function ReTimeShow()
        {
            if (document.getElementById('retime') != null)
            {
                var lReftime = document.getElementById('retime').value; 
                AutoRefShow(lReftime,"LabReftime");
            }else{
                AutoRefShow(60,"");
            }
        }
            
        function RefTimeBack()
        {
            if (document.getElementById('TableKK') == null){ 
                location='?stoptime=' + "60";
            }else{
                var cw = document.getElementById('FramePlShow');      
                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '20'";
            }
        }
    </script>

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false" --%>
</head>
<body onload="PageLoad();">
    <form id="Form1" onreset="return reset_num();" method="post" runat="server" enableviewstate="true">
        <div class="div_windows">
            <table id="Table4" class="table_windows" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        <table id="Table9" class="Page_Head" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td class="Page_HeadL">
                                </td>
                                <td class="Page_HeadM">
                                    <span class="img_message"> </span> 
                                    <span id="Msg">
                                        <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" style="width: 600px; height: 16px">
                                            <% =Session["TmMessage"] %>
                                        </marquee>
                                    </span>
                                </td>
                                <td class="Page_HeadR">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr> 
                    <td id="Td_Cont" class="Td_Table" runat="server">
                        <table id="TableKK" border="0" cellspacing="1" cellpadding="0" runat="server">
                            <tr>
                                <td>
                                    <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table class="table_ChipTitle" id="Table12" style="width: 100%" height="1" cellspacing="0" cellpadding="0" border="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>��Ф</strong></td>
                                                            <td style="width: 250px">
                                                                (<b>���ʱ��:</b>
                                                                <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                            <td style="text-align: right;">
                                                                <a class="clickRefreshPage" onclick="openLink();">ˢ��</a> :<label id="LabReftime"></label>&nbsp;
                                                                <select id="retime" runat="server" name="retime" onchange="ReTimeShow();">
                                                                    <option value="20">20 s</option>
                                                                    <option value="40">40 s</option>
                                                                    <option selected="selected" value="60">60 s</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <table id="Table1" class="table_ChipInfo" width="100%" cellspacing="0" cellpadding="0" border="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>����:</strong>
                                                                <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                            <td style="width: 250px">
                                                            </td>
                                                            <td style="text-align: right">
                                                                <b>��������: </b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label> </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table id="Table20" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                        <tr class="tr_Chipsend">
                                                            <td style="width: 30px" class="td_Chipsend">
                                                                ���</td>
                                                            <td style="width: 40px">
                                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtsxje" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7"></asp:TextBox></td>
                                                            <td style="width: 150px">
                                                                <asp:Button ID="Button1" runat="server" Text="ȷ��" OnClick="ButOk_Click" class="button_Ok" OnClientClick="return SubData();"></asp:Button><input onmouseup="return reset();" class="button_Reset"
                                                                    type="reset" value="ȡ��">
                                                            </td>
                                                            <td class="td_Chipsend">
                                                                ����<asp:Label ID="Labpl" CssClass="Show_Pl" runat="server">0</asp:Label>
                                                                <input id="TxtButData" runat="server" name="TxtButData" type="text" style="display: none; display: none;" size="2" />
                                                                <input id="WagerTxt" runat="server" readonly="readonly" type="text" style="display: none; display: none;" size="2" />
                                                                <input id="TxtTypeId" runat="server" readonly="readonly" type="text" style="display: none; display: none;" size="2" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            </tbody>
                                    </table>
                                    <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                        <tbody>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont" width="60">
                                                    ���</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtsx6y" type="radio" value="sx6y" onclick="Select_Item('sx6y','551',6,6,12);" name="rtype" runat="server">��Ф��</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtsx6n" type="radio" value="sx6n" onclick="Select_Item('sx6n','552',6,6,12);" name="rtype" runat="server">��Ф����</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtsx5" type="radio" value="sx5" onclick="Select_Item('sx5','553',5,5,12);" name="rtype" runat="server">��Ф</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtsx4" type="radio" value="sx4" onclick="Select_Item('sx4','554',4,4,12);" name="rtype" runat="server">��Ф</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtsx3" type="radio" value="sx3" onclick="Select_Item('sx3','555',3,3,12);" name="rtype" runat="server">��Ф</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtsx2" type="radio" value="sx2" onclick="Select_Item('sx2','556',2,2,12);" name="rtype" runat="server">��Ф</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    ����</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Labsx6y" class="Show_Pl" runat="server">0</asp:Label>
                                                    <asp:Label ID="Labasx6y" runat="server" Style="DISPLAY: none">0</asp:Label>
                                                    <asp:Label ID="Labbsx6y" runat="server" Style="DISPLAY: none">0</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Labsx6n" class="Show_Pl" runat="server">0</asp:Label>
                                                    <asp:Label ID="Labasx6n" runat="server" Style="DISPLAY: none">0</asp:Label>
                                                    <asp:Label ID="Labbsx6n" runat="server" Style="DISPLAY: none">0</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Labsx5" class="Show_Pl" runat="server">0</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Labsx4" class="Show_Pl" runat="server">0</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Labsx3" class="Show_Pl" runat="server">0</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Labsx2" class="Show_Pl" runat="server">0</asp:Label></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table id="TabPlShow" runat="server" border="0" cellpadding="0" cellspacing="1" class="table_Chip">
                                        <tr>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>��Ф</b></td>
                                            <td class="td_Head_set_cen" style="width: 190px">
                                                <b>����</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>��ѡ</b></td>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>��Ф</b></td>
                                            <td class="td_Head_set_cen" style="width: 190px">
                                                <b>����</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>��ѡ</b></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx1" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx1" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx1" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx2" runat="server" Text="ţ"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx2" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx2" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="ţ" />
                                                </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx3" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx3" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx3" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx4" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx4" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx4" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx5" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx5" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx5" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx6" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx6" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx6" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx7" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx7" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx7" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx8" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx8" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx8" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx9" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx9" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx9" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx10" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx10" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx10" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx11" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx11" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx11" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx12" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx12" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx12" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this)" type="checkbox" value="��" />
                                                </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
        <table id="Table3" width="668" class="table_banner" cellspacing="1" style="display: none;">
            <tr>
                <td style="width: 65px;" class="ball_td" align="center">
                    ���ö��</td>
                <td class="list_cen">
                    <asp:Label ID="LabBzname" runat="server" Text="�����(RMB)"></asp:Label>
                    <asp:Label ID="Labxynd" runat="server"></asp:Label>
                </td>
                <td style="width: 65px;" class="ball_td" align="center">
                    ��ע���</td>
                <td class="list_cen">
                    <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table id="Table5" width="668" class="table_banner" cellspacing="1" style="display: none;">
            <tr>
                <td class="ball_td" align="center">
                    ����޶�</td>
                <td class="list_cen">
                    <asp:Label ID="LabDd20" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    ��ע�޶�</td>
                <td class="list_cen">
                    <asp:Label ID="LabDc20" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    �����޶�</td>
                <td class="list_cen">
                    <asp:Label ID="LabDz20" runat="server"></asp:Label>
                </td>
                <td class="ball_td" align="center">
                    �����޶�</td>
                <td class="list_cen">
                    <asp:Label ID="LabDx20" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <iframe id="FramePlShow" name="FramePlShow" src="" width="40" height="0" style="display: none"></iframe>
    </form>
    <div class="divMemPropertyBar" id="line_window" runat="server" style="left: 680px; top: 25px; width: 130px; height: 600px;">
        <iframe id="FrmTmPropertyshow" name="FrmTmPropertyshow" src="about:blank" frameborder="0" scrolling="no" style="height: 100%; width: 100%; border: 0" runat="server"></iframe>
    </div>
</body>
</html>

