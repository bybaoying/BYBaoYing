<%@ page language="C#" autoeventwireup="true" inherits="member_WebLh_ln_Yxlx, App_Web_xt-ylzzg" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_TM.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript" src="../Scripts/JS_Page_tab.js"></script>
    <script language="JavaScript" type="text/javascript" src="../js/sub_chipEdit.js"></script>


    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>
    
    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
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
            
        var tmQH= new Array();//��Фǰ��Ф
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
//        function backarr() {
//            var aa= new Array();
//            aa[0]=1;
//            aa[1]=2;
//            return aa;
//        }
//        alert(backarr()[0]);
        function SelectType(vType ,vObect){
            mChoose_Nums = 0;//��ǰѡ����
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
                    mChoose_Nums = DrSaValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"dr");
                 break;
               
               case 'sa': //˫
                    mChoose_Nums = DrSaValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"sa");
                 break;
                
               case 'jq': //����
                    mChoose_Nums = QYValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"jq");
                 break;
               case 'ys': //Ұ��
                    mChoose_Nums = QYValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"ys");
                 break;
               case 'qx': //ǰ��
                    mChoose_Nums = QHValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"qx");
                 break;
               case 'hx': //����
                    mChoose_Nums = QHValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"hx");
                 break;
              }
              CHorRS();
              Fun_ChooseType();
              document.getElementById("TmNum").innerHTML = mChoose_Nums;//��ʾѡ����
            
        }
        function Fun_ChooseType() {
             if ( mChoose_Types_Tag =="")//ѡ�����ͱ�ǩ
            {
                alert(mMessInfo_Type);// '��ѡ����ע���';
	            obj.checked = false;
	            return false;
            }
//            if(mChooseDm == 'R' && obj.checked) {
//	            document.lt_form.Txt_ChooseDm.value = obj.value;//ѡ��������
//	            select_RS('S');
//            }
            document.getElementById("RNumB").innerHTML = "";//��ʾ����
            document.getElementById("SNumB").innerHTML = "";
            document.lt_form.rs_s.value ="";//��ѡ���ĸ���
            document.lt_form.Txt_ChoosePmNum.value ="0";//��ѡ���ĸ��������
//            var dd = document.lt_form.lt_sxa;
//            alert(dd);
            var lSNumBll = 0;
//	            numobj = document.lt_form.elements;
            var lObjCaption;
            var lobjChk;
            
//           mChoose_NumMax = vChoose_Max;//��Ҫѡ�����
//            mChoose_NumMin = vChoose_Min;//��Ҫѡ��С��
//            mChoose_CountNums =   vChoose_Nums
            if ( mChoose_Types_Tag =="sx")//ѡ�����ͱ�ǩ sx ws
            {
                for (i=1; i<=mChoose_CountNums; i++) {// �п�ѡ�ؼ���
       	            lobjChk = document.getElementById("Chk" + mChoose_Types_Tag +i) ;//mChoose_Types_Tagѡ�����ͱ�ǩ sx ws
       	            lObjCaption  = document.getElementById("LabC" + mChoose_Types_Tag +i) ;
                    if ( lobjChk.checked == true) 
                    {
	                    if(lobjChk.value == document.lt_form.Txt_ChooseDm.value && document.lt_form.RS.checked ==true){
	                    //�������
	                        document.getElementById("RNumB").innerHTML = "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[1] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
	                    }
	                    else{
	                    //�������
	                        lSNumBll ++;
		                    document.getElementById("SNumB").innerHTML += "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[2] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
		                    document.lt_form.rs_s.value += lobjChk.value +";";
	                    }
                    }
                }
            }else{
                for (i=0; i<mChoose_CountNums; i++) {// �п�ѡ�ؼ���
       	            lobjChk = document.getElementById("Chk" + mChoose_Types_Tag +i) ;//ѡ�����ͱ�ǩ sx ws
       	            lObjCaption  = document.getElementById("LabC" + mChoose_Types_Tag +i) ;
                    if ( lobjChk.checked == true) 
                    {
	                    if(lobjChk.value == document.lt_form.Txt_ChooseDm.value && document.lt_form.RS.checked ==true){
	                    //�������
	                        document.getElementById("RNumB").innerHTML = "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[1] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
	                    }
	                    else{
	                    //�������
	                        lSNumBll ++;
		                    document.getElementById("SNumB").innerHTML += "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[2] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
		                    document.lt_form.rs_s.value += lobjChk.value +";";
	                    }
                    }
                }
            }
            document.lt_form.Txt_ChoosePmNum.value =lSNumBll;//��ѡ���ĸ��������
            if (document.lt_form.RS.checked ==true){
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin-1) ;
            }else{
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin) ;
               }

            if(document.getElementById("RNumB").innerHTML == "") {
	            document.lt_form.Txt_ChooseDm.value = "";//��ʾ����
	            select_RS('R');//ѡ�� ����
            }
        }
        function QHValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue )//ǰ������
        {
            var arrNo = vNoValue.split(".");
            var lquerstr = "";
            var lMoneySum =0;

            for (var i = 0 ; i < (arrNo.length ); i++){
               if (arrNo[i] != ""){

                    var  lSelectNo =vTmNoCap + arrNo[i];
                    if (tmQH[i+1] == vTypeValue)
                    {
                        document.getElementById(lSelectNo).checked = true;
                     }else
                     {
                        document.getElementById(lSelectNo).checked = false;
                     }
                }
            } 
            
            return 6;
        }
        function QYValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue )//����Ұ��
        {
            var arrNo = vNoValue.split(".");
            var lquerstr = "";
            var lMoneySum =0;

            for (var i = 0 ; i < (arrNo.length ); i++){
               if (arrNo[i] != ""){

                    var  lSelectNo =vTmNoCap + arrNo[i];
                    if (tmQS[i+1] == vTypeValue)
                    {
                        document.getElementById(lSelectNo).checked = true;
                     }
                     else
                     {
                        document.getElementById(lSelectNo).checked = false;
                     }
                }
            } 
            return 6;
        }
        function DrSaValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue)//��˫ֵ
        {
            var arrNo = vNoValue.split(".");
            var lquerstr = "";
            var lMoneySum =0;

            for (var i = 0 ; i < (arrNo.length ); i++){
               if (arrNo[i] != ""){

                    var  lSelectNo =vTmNoCap + arrNo[i];
                    if (document.getElementById(lSelectNo).attributes["dr_sa"].nodeValue  == vTypeValue)
                    {
                        document.getElementById(lSelectNo).checked = true;
                     }
                     else
                     {
                        document.getElementById(lSelectNo).checked = false;
                     }
                }
            } 
            return 6;
        }
        //����ʺ�,����,���� ��Ԫ����
        function CheckKey()
        {
            if(event.keyCode == 13) return true;
            if(!((event.keyCode > 47 && event.keyCode < 58 ) || event.keyCode == 46 ))
            {
                alert("����ʹ�������ַ�!!"); return false;
            }
        }

        var gTime = '11053';
        var mChoose_NumMax = 0;  //��Ҫѡ�����
        var mChoose_NumMin = 0;//��Ҫѡ��С��
        var mChoose_CountNums=0;// �п�ѡ�ؼ���
        var mChoose_Types_Tag ="";//ѡ�����ͱ�ǩ ��Ф/β��
        var mChoose_Nums = 0;//��ǰѡ����
        var mMessInfo_Min =  '����ѡ��';
        var mess11 = '������';
        var mMessInfo_Max =  '���ѡ��';
        var mess3 = '��ѡ������';
        var mMessInfo_Type = '��ѡ����ע���';
        var mChooseDm = 'R';	//�趨Ҫѡ������ɺ����� ���� ���� ����
        var num_color = new Array();
        var select_num = new Array();
        var fst = '11053';

        num_color['1'] = 'r.gif'; 
        num_color['2'] = 'b.gif'; 
        num_color['3'] = 'g.gif';  
  
        function Select_Xs_Item(vChoose_Min,vChoose_Max,vChoose_Nums) {

            mChoose_NumMax = vChoose_Max;//��Ҫѡ�����
            mChoose_NumMin = vChoose_Min;//��Ҫѡ��С��
            mChoose_CountNums =   vChoose_Nums// �ѿ�ѡ�ؼ���
            mChoose_Types_Tag ="sx";//ѡ�����ͱ�ǩ
            CHorRS();
        } 
        function Select_Ws_Item(vChoose_Min,vChoose_Max,vChoose_Nums) {

            mChoose_NumMax = vChoose_Max;//��Ҫѡ�����
            mChoose_NumMin = vChoose_Min;//��Ҫѡ��С��
            mChoose_CountNums =   vChoose_Nums// �ѿ�ѡ�ؼ���
            mChoose_Types_Tag ="ws";//ѡ�����ͱ�ǩ
            CHorRS();
        } 
        function select_RS(temp) {	//ѡ������Ҫѡ������ �����Ż��Ǹ���
            if(temp == 'R') {//ѡ������
	            mChooseDm = 'R';
	            document.getElementById("RNumT").style.color = "#FF0000";
	            document.getElementById("SNumT").style.color = "#000000";
            } else {//ѡ������
	            mChooseDm = 'S';
	            document.getElementById("RNumT").style.color = "#000000";
	            document.getElementById("SNumT").style.color = "#FF0000";
            }	
        }
        function SubChkBox(obj) {

            if(obj.checked == false)
            {
	            mChoose_Nums--;//��ǰѡ����
	            document.getElementById("TmNum").innerHTML = mChoose_Nums;
	            return true;
            }
            if(obj.checked == true)
            {
            
                if ( mChoose_Types_Tag =="")//ѡ�����ͱ�ǩ
                {
                    alert(mMessInfo_Type);// '��ѡ����ע���';
		            obj.checked = false;
		            return false;
	            }
	            if ( mChoose_Nums >= mChoose_NumMax ) 
	            {
		            alert(mMessInfo_Max + mChoose_NumMax + mess11);
		            obj.checked = false;
		            return false;
	            }
	            mChoose_Nums++;
	            document.getElementById("TmNum").innerHTML = mChoose_Nums;//��ʾѡ����
	            return true;
            }
        }
        function Fun_ChooseClick(obj) {
            if (! SubChkBox(obj)){
                return;
            }
            if(mChooseDm == 'R' && obj.checked) {
	            document.lt_form.Txt_ChooseDm.value = obj.value;//ѡ��������
	            select_RS('S');
            }
            document.getElementById("RNumB").innerHTML = "";//��ʾ����
            document.getElementById("SNumB").innerHTML = "";
            document.lt_form.rs_s.value ="";//��ѡ���ĸ���
            document.lt_form.Txt_ChoosePmNum.value ="0";//��ѡ���ĸ��������
//            var dd = document.lt_form.lt_sxa;
//            alert(dd);
            var lSNumBll = 0;
//	            numobj = document.lt_form.elements;
            var lObjCaption;
            var lobjChk;
            
//                        mChoose_NumMax = vChoose_Max;//��Ҫѡ�����
//            mChoose_NumMin = vChoose_Min;//��Ҫѡ��С��
//            mChoose_CountNums =   vChoose_Nums
            if ( mChoose_Types_Tag =="sx")//ѡ�����ͱ�ǩ sx ws
            {
                for (i=1; i<=mChoose_CountNums; i++) {// �п�ѡ�ؼ���
       	            lobjChk = document.getElementById("Chk" + mChoose_Types_Tag +i) ;//mChoose_Types_Tagѡ�����ͱ�ǩ sx ws
       	            lObjCaption  = document.getElementById("LabC" + mChoose_Types_Tag +i) ;
                    if ( lobjChk.checked == true) 
                    {
	                    if(lobjChk.value == document.lt_form.Txt_ChooseDm.value && document.lt_form.RS.checked ==true){
	                    //�������
	                        document.getElementById("RNumB").innerHTML = "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[1] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
	                    }
	                    else{
	                    //�������
	                        lSNumBll ++;
		                    document.getElementById("SNumB").innerHTML += "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[2] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
		                    document.lt_form.rs_s.value += lobjChk.value +";";
	                    }
                    }
                }
            }else{
                for (i=0; i<mChoose_CountNums; i++) {// �п�ѡ�ؼ���
       	            lobjChk = document.getElementById("Chk" + mChoose_Types_Tag +i) ;//ѡ�����ͱ�ǩ sx ws
       	            lObjCaption  = document.getElementById("LabC" + mChoose_Types_Tag +i) ;
                    if ( lobjChk.checked == true) 
                    {
	                    if(lobjChk.value == document.lt_form.Txt_ChooseDm.value && document.lt_form.RS.checked ==true){
	                    //�������
	                        document.getElementById("RNumB").innerHTML = "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[1] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
	                    }
	                    else{
	                    //�������
	                        lSNumBll ++;
		                    document.getElementById("SNumB").innerHTML += "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[2] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
		                    document.lt_form.rs_s.value += lobjChk.value +";";
	                    }
                    }
                }
            }
            document.lt_form.Txt_ChoosePmNum.value =lSNumBll;//��ѡ���ĸ��������
            if (document.lt_form.RS.checked ==true){
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin-1) ;
            }else{
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin) ;
               }

            if(document.getElementById("RNumB").innerHTML == "") {
	            document.lt_form.Txt_ChooseDm.value = "";//��ʾ����
	            select_RS('R');//ѡ�� ����
            }
        }


        //�ύ���	
        function ZSubChk(obj) {
            var checkCount = 0;
            var checknum = obj.elements.length;
            var rtypechk = 0;
            for(i=0; i<obj.rtype.length; i++) {
	            if (obj.rtype[i].checked) {
		            rtypechk ++;
	            }
            }
            if (rtypechk == 0) {
              alert(mMessInfo_Type);// '��ѡ����ע���';
              return false;
            }
//	            for(i=0; i<obj.TmNo.length; i++) {
//		            if (obj.TmNo[i].checked) {
//			            checkCount ++;
//		            }
//	            }
            for(i=0; i<checknum; i++) {
	            if (obj.elements[i].type == "checkbox" && obj.elements[i].checked) {
		            checkCount ++; 
	            }
            }
            if (checkCount > (mChoose_NumMax + 1)) 
            {
                alert(mMessInfo_Max + mChoose_NumMax +mess11);
                return false;
            }         
            if (document.lt_form.RS.checked && document.lt_form.Txt_ChooseDm.value == '') {
            //���ѡ�� ��/����  �������û��ѡ����
	            alert(mess3);// '��ѡ������';
	            select_RS('R');//ѡ�� ����
	            return false;
            }
//	            if (document.lt_form.RS.checked ) {
//	            //���ѡ�� ��/����  �������û��ѡ����

//	            }
//	            else{
//                }
//            alert(checkCount);
            if(checkCount < (mChoose_NumMin))
            {
                alert( mMessInfo_Min + mChoose_NumMin + mess11 );
                return false;
            }
            if (Number(document.lt_form.TxtLm.value)==0)
            {
	            alert('��д����');
	            return false;
            }
            return true;
        	
        }




    
   
       function  GroupNumber(vUnitNum,vTypeNum)
       {//��vUnitNum�����֣�����vTypeNum��ʽ����ϣ����м������
           if (vTypeNum==0)
           {
                return 0;
            }
           var i,j,k,m,n;
    	   
           k = vUnitNum - vTypeNum;
           var lTypeNum = vTypeNum ;//��VlTypeNum�Ľ׳�
            for( i=vTypeNum - 1; i > 0; i -- ) {
                lTypeNum = i *  lTypeNum

            }
            
           k = vUnitNum - vTypeNum;//��vUnitNum - vTypeNum�Ľ׳�
           var lGroupNumber = vUnitNum ;
            for( i=vUnitNum-1; i > k; i -- ) {
                lGroupNumber = i *  lGroupNumber
            }
            return lGroupNumber /  lTypeNum
//C16(5)=(16*15*14*13*12*11)/(6*5*4*3*2*1)=8008
//�����㿼��5������˳��ķ������������˳�����
//A16��5��=16*15*14*13*12*11=5765760 
       }

        
        function CHorRS() {//
            var lSNumBll = document.lt_form.Txt_ChoosePmNum.value;//ѡ���ƽ�루���ţ���
            
            if (document.lt_form.RS.checked ==true){
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin-1) ;
            }else{
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin) ;
               }
            if(document.lt_form.RS.checked) {
                select_RS('R'); //ѡ�� ����
//	            eval("RNumT.style.display=\"\";");
//	            eval("RNumB.style.display=\"\";");
//	            eval("SNumT.style.display=\"\";");
//	            eval("SNumB.style.display=\"\";");
	            document.getElementById("RNumT").style.display="";
	            document.getElementById("RNumB").style.display="";//��ʾ����
	            document.getElementById("SNumT").style.display="";
	            document.getElementById("SNumB").style.display="";
             
            } else {
                //ѡ����
                if (!(document.lt_form.Txt_ChooseDm.value=="" || document.lt_form.Txt_ChooseDm.value == "00"))
                {//
                    lobjname ="chk"+Number(document.lt_form.Txt_ChooseDm.value);
       	            obj = document.getElementById(lobjname)  ;
       	            obj.checked = false; //ȡ������
                    Fun_ChooseClick(obj) ;
                    
                    document.lt_form.Txt_ChooseDm.value = "";//����
                    document.getElementById("RNumB").innerHTML  = "";//��ʾ����

                }
                
//	            eval("RNumT.style.display=\"none\";");
//	            eval("RNumB.style.display=\"none\";");
//	            eval("SNumT.style.display=\"none\";");
	            
	            document.getElementById("RNumT").style.display="none";
	            document.getElementById("RNumB").style.display="none";//��ʾ����
	            document.getElementById("SNumT").style.display="none";
//	            document.getElementById("SNumB").style.display="none";
//		            eval("SNumB.style.display=\"none\";");
            }	

        }
        function SendData()
        {//
            var obj = document.lt_form ;
            if (!ZSubChk(obj)){
                return;
                }
            
            var lquerstr = "";
           for(i=0; i<obj.rtype.length; i++) {
	            if (obj.rtype[i].checked) {
		            lquerstr = obj.rtype[i].value;
	            }
            }
            
            var arrTm = lquerstr.split(";");//����ѡ�ĺ����༰����ID
            var ltmZno= "";//�����
            if (document.lt_form.RS.checked) {
                ltmZno = document.lt_form.Txt_ChooseDm.value ;//����
            }
//            window.open('FT_order_Lm.aspx?TmClassId=' + arrTm[1] + '&TmTypeId=' +  arrTm[0] + 
//                '&TmNo=' + document.lt_form.rs_s.value + '&TmZNo=' + ltmZno  + 
//                '&TmJe=' + document.lt_form.TxtLm.value,'bbnet_mem_order');//��ַ���䣬���´򿪲�ˢ��ҳ��
            window.parent.bbnet_mem_order.location.href='FT_order_Lm.aspx?TmClassId=' + arrTm[1] + '&TmTypeId=' +  arrTm[0] + 
                '&TmNo=' + document.lt_form.rs_s.value + '&TmZNo=' + ltmZno  + 
                '&TmJe=' + document.lt_form.TxtLm.value;
        }         

        function SendDataA()
        {
            window.parent.bbnet_mem_order.location.href='FT_order_Lm.aspx?TmClassId=20&TmTypeId=555&TmNo=01;02;��;��;��;&TmZNo=00&TmJe=10';
        } 

        
        function openchanagePage(vClassid)
        {
            location='?Classid=' + vClassid ;
        } 
        

        function chanagePage()
        {
            location='?Classid=' + "<% =Request.QueryString["Classid"] %>" ;
        }
        function openNewPage(vClassid)
        {
            if (document.getElementById('retime') != null)
            {
                var lReftime = document.getElementById('retime').value; 
                location='?Classid=' + vClassid +  "&stoptime=" + lReftime ;
            }else{
                location='?Classid=' + vClassid  ;
            }
        }   
        function openLink()
        {
            var lReftime = document.getElementById('retime').value; 
            location='?Classid=' + "<% =Request.QueryString["Classid"] %>" + "&stoptime=" + lReftime ;
        }

        var mClassid;
        function PageLoad(){
            
            mClassid = "<% =Request.QueryString["Classid"] %>" ;
            

                                     
            if (document.getElementById("TableKK") == null){
                document.getElementById("line_window").style.visibility='hidden';
                window.FrmTmPropertyshow.location = "about:blank" ;
            }
            else
            {
                var lReftime ="<% =Request.QueryString["stoptime"] %>";
                if (lReftime != ""){
                    document.getElementById('retime').value =lReftime;
                }  
                 
                document.getElementById("line_window").style.visibility='visible';  
                if (document.getElementById("FrmTmPropertyshow") !=null){
                    window.FrmTmPropertyshow.location.href = "webPropertySX.aspx" ;
                }
                CHorRS();
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
            if (document.getElementById("TableKK") == null){ 
                location='?stoptime=' + "60";
            }else{
                var cw = document.getElementById("FramePlShow");      
//                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '" +  mClassid + "'";
                if (mClassid=="A")
                {
                    cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '38' or tmClassId = '43'  or tmClassId = '44'  or tmClassId = '45' ";
                }else{
                    cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '39' or tmClassId = '46'  or tmClassId = '47'  or tmClassId = '48' ";
                }
            }
        }


    </script>

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false" --%>
</head>
<body onload="PageLoad();">
    <form id="lt_form" name="lt_form" method="post" runat="server" enableviewstate="False">
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
                    <td class="Td_TabPage">
                        <div id="tab">
                            <ul>
                                <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('A');">��Ф</a></li>
                                <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openchanagePage('B');">��β</a></li>
                                <li id="space"><span></span></li>
                            </ul>
                        </div>
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
                                                    <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
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
                                                <td>
                                                    <table class="table_ChipInfo" id="Table2" border="0" cellspacing="1" cellpadding="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>����:</strong>
                                                                <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                            <td style="width: 250px">
                                                                </>
                                                                &nbsp;</td>
                                                            <td style="text-align: right">
                                                                <strong>��������:
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></strong></td>
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
                                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="TxtLm" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7"></asp:TextBox></td>
                                                            <td style="width: 150px">
                                                                <input id="ButSend" type="button" onclick="SendData();" class="button_Ok" value="����" />
                                                                <input onclick="javascript:mChoose_Nums=0;" type="reset" value="ȡ��" class="button_Reset" name="btnSubmit">
                                                                <input id="TxtButData" runat="server" name="TxtButData" type="text" maxlength="1" size="1" style="visibility: hidden; width: 4px; display: none;" /></td>
                                                            <td class="td_Chipsend">
                                                                <asp:Label ID="Label1" runat="server" Text="ѡ�ţ�"></asp:Label>
                                                                <asp:Label ID="TmNum" runat="server"></asp:Label>
                                                                <asp:Label ID="Label3" runat="server" Text="���"></asp:Label>
                                                                <asp:Label ID="GroupNum" runat="server"></asp:Label>
                                                                <asp:Label ID="Label2" runat="server" Text="����"></asp:Label>&nbsp;
                                                                <input name="Txt_ChooseDm" type="hidden" size="3"><input name="rs_s" type="hidden" size="3"><input name="Txt_ChoosePmNum" type="hidden" size="3"></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table id="Tab_Chip_TypeSx" class="table_Chip" cellspacing="1" cellpadding="0" border="0" runat="server">
                                        <tbody>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    ���</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx2Y" onclick="Select_Xs_Item(2,11,12);" type="radio" value="CH_3" name="rtype" runat="server">��Ф��</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx3Y" onclick="Select_Xs_Item(3,11,12);" type="radio" value="CH_32" name="rtype" runat="server">��Ф��</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx4Y" onclick="Select_Xs_Item(4,11,12);" type="radio" value="CH_2" name="rtype" runat="server">��Ф��</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx5Y" onclick="Select_Xs_Item(5,11,12);" type="radio" value="CH_2S" name="rtype" runat="server">��Ф��</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx2N" onclick="Select_Xs_Item(2,11,12);" type="radio" value="CH_2SP" name="rtype" runat="server">��Ф����</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx3N" onclick="Select_Xs_Item(3,11,12);" type="radio" value="CH_2SP" name="rtype" runat="server">��Ф����</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx4N" onclick="Select_Xs_Item(4,11,12);" type="radio" value="CH_2SP" name="rtype" runat="server">��Ф����</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx5N" onclick="Select_Xs_Item(5,11,12);" type="radio" value="CH_2SP" name="rtype" runat="server">��Ф����</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    ����</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx2Y" class="Show_Pl" runat="server">.</asp:Label>
                                                </td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx3Y" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx4Y" class="Show_Pl" runat="server">.</asp:Label>
                                                </td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx5Y" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx2N" class="Show_Pl" runat="server">.</asp:Label>
                                                </td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx3N" class="Show_Pl" runat="server">.</asp:Label>
                                                </td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx4N" class="Show_Pl" runat="server">.</asp:Label>
                                                </td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx5N" class="Show_Pl" runat="server">.</asp:Label>
                                                </td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    ��Ф<br />
                                                    ����</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx2YB" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx3YB" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx4YB" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx5YB" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx2NB" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx3NB" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx4NB" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablx5NB" class="Show_Pl" runat="server">.</asp:Label></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table id="Tab_Chip_TypeWs" class="table_Chip" cellspacing="1" cellpadding="0" border="0" runat="server">
                                        <tbody>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    ���</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlw2" onclick="Select_Ws_Item(2,11,10);" type="radio" value="CH_3" name="rtype" runat="server">��β��</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlw3" onclick="Select_Ws_Item(3,11,10);" type="radio" value="CH_32" name="rtype" runat="server">��β��</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlw4" onclick="Select_Ws_Item(4,11,10);" type="radio" value="CH_2" name="rtype" runat="server">��β��</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlw5" onclick="Select_Ws_Item(5,11,10);" type="radio" value="CH_2S" name="rtype" runat="server">��β��</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    ����</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablw2" class="Show_Pl" runat="server">.</asp:Label>
                                                </td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablw3" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablw4" class="Show_Pl" runat="server">.</asp:Label>
                                                </td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablw5" class="Show_Pl" runat="server">.</asp:Label></td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    ��β<br />
                                                    ����</td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablw2B" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablw3B" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablw4B" class="Show_Pl" runat="server">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <asp:Label ID="Lablw5B" class="Show_Pl" runat="server">.</asp:Label></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table id="RSTable" class="table_Chip" cellspacing="1" cellpadding="0" border="0" >
                                        <tr class="Tr_TmShow">
                                            <td width="80px"  class="TmLabfont">
                                                <input id="RS" onclick="CHorRS();" type="checkbox" class="checkSy" value="R" name="RS" runat="server"/>
                                                <span> ��/����</span></td>
                                            <td id="RNumT" onclick="select_RS('R');" width="40" class="TmLabfont">
                                                ����</td>
                                            <td id="RNumB" align="center" width="40" runat="server" class="Td_TmBallfont">
                                            </td>
                                            <td id="SNumT" onclick="select_RS('S');" width="40" class="TmLabfont">
                                                ����</td>
                                            <td id="SNumB" align="center" class="Td_TmBallfont">&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                    <table id="TabPlShowSx" runat="server" border="0" cellpadding="0" cellspacing="1" class="table_Chip">
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
                                                <input id="Chksx1" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="1" valuea="��" tabindex="1" />
                                                <asp:Label ID="LabPsx1" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx2" runat="server" Text="ţ"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx2" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx2" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="2" valuea="ţ" tabindex="2" />
                                                <asp:Label ID="LabPsx2" runat="server" Style="display: none" Text="ţ"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx3" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx3" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx3" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="3" valuea="��" tabindex="3" />
                                                <asp:Label ID="LabPsx3" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx4" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx4" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx4" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="4" valuea="��" tabindex="4" />
                                                <asp:Label ID="LabPsx4" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx5" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx5" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx5" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="5" valuea="��" tabindex="5" />
                                                <asp:Label ID="LabPsx5" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx6" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx6" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx6" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="6" valuea="��" tabindex="6" />
                                                <asp:Label ID="LabPsx6" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx7" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx7" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx7" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="7" valuea="��" tabindex="7" />
                                                <asp:Label ID="LabPsx7" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx8" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx8" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx8" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="8" valuea="��" tabindex="8" />
                                                <asp:Label ID="LabPsx8" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx9" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx9" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx9" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="9" valuea="��" tabindex="9" />
                                                <asp:Label ID="LabPsx9" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx10" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx10" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx10" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="10" valuea="��" tabindex="10" />
                                                <asp:Label ID="LabPsx10" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx11" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx11" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx11" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="11" valuea="��" tabindex="11" />
                                                <asp:Label ID="LabPsx11" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx12" runat="server" Text="��"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx12" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx12" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="12" valuea="��" tabindex="12" />
                                                <asp:Label ID="LabPsx12" runat="server" Style="display: none" Text="��"></asp:Label></td>
                                        </tr>
                                    </table>
                                    <table id="TabPlShowWs" class="table_Chip" border="0" cellspacing="1" cellpadding="0" runat="server">
                                        <tr>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>β��</b></td>
                                            <td class="td_Head_set_cen" style="width: 190px">
                                                <b>����</b></td>
                                            <td class="td_Head_set_cen">
                                                <strong>��ѡ</strong></td>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>β��</b></td>
                                            <td class="td_Head_set_cen" style="width: 190px">
                                                <b>����</b></td>
                                            <td class="td_Head_set_cen">
                                                <strong>��ѡ</strong></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws1" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws1" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws1" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="1" name="lt_sx" tabindex="13" runat="server" /></td>
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws2" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws2" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws2" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="2" name="lt_sx" tabindex="14" runat="server" /></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws3" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws3" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws3" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="3" name="lt_sx" tabindex="15" runat="server" /></td>
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws4" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws4" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws4" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="4" name="lt_sx" tabindex="16" runat="server" /></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws5" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws5" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws5" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="5" name="lt_sx" tabindex="17" runat="server" /></td>
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws6" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws6" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws6" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="6" name="lt_sx" tabindex="18" runat="server" /></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws7" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws7" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws7" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="7" name="lt_sx" tabindex="19" runat="server" /></td>
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws8" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws8" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws8" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="8" name="lt_sx" tabindex="20" runat="server" /></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws9" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws9" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws9" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="9" name="lt_sx" tabindex="21" runat="server" /></td>
                                            <td align="center" class="TmLabfont">
                                                <asp:Label ID="LabCws0" runat="server"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVws0" runat="server"></asp:Label></td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chkws0" onclick="Fun_ChooseClick(this);" class="checkSy" type="checkbox" value="0" name="lt_sx" tabindex="22" runat="server" /></td>
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
        <table id="Table3" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
            <tr>
                <td style="width: 65px;" class="td_Label" align="center">
                    ���ö��</td>
                <td class="td_Label">
                    <asp:Label ID="LabBzname" runat="server" Text="�����(RMB)"></asp:Label>
                    <asp:Label ID="Labxynd" runat="server"></asp:Label>
                </td>
                <td style="width: 65px;" class="td_Label" align="center">
                    ��ע���</td>
                <td class="td_Label">
                    <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table id="Table5" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
            <tr>
                <td class="td_Label" align="center">
                    ����޶�</td>
                <td class="td_Label">
                    <asp:Label ID="LabDdAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDd02" runat="server"></asp:Label>
                    <asp:Label ID="LabDd03" runat="server"></asp:Label>
                    <asp:Label ID="LabDd04" runat="server"></asp:Label>
                    <asp:Label ID="LabDd14" runat="server"></asp:Label>
                    <asp:Label ID="LabDd37" runat="server"></asp:Label></td>
                <td class="td_Label" align="center">
                    ��ע�޶�</td>
                <td class="td_Label">
                    <asp:Label ID="LabDcAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDc02" runat="server"></asp:Label>
                    <asp:Label ID="LabDc03" runat="server"></asp:Label>
                    <asp:Label ID="LabDc04" runat="server"></asp:Label>
                    <asp:Label ID="LabDc14" runat="server"></asp:Label>
                    <asp:Label ID="LabDc37" runat="server"></asp:Label></td>
                <td class="td_Label" align="center">
                    �����޶�</td>
                <td class="td_Label">
                    <asp:Label ID="LabDzAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDz02" runat="server"></asp:Label>
                    <asp:Label ID="LabDz03" runat="server"></asp:Label>
                    <asp:Label ID="LabDz04" runat="server"></asp:Label>
                    <asp:Label ID="LabDz14" runat="server"></asp:Label>
                    <asp:Label ID="LabDz37" runat="server"></asp:Label></td>
                <td class="td_Label" align="center">
                    �����޶�</td>
                <td class="td_Label">
                    <asp:Label ID="LabDxAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDx02" runat="server"></asp:Label>
                    <asp:Label ID="LabDx03" runat="server"></asp:Label>
                    <asp:Label ID="LabDx04" runat="server"></asp:Label>
                    <asp:Label ID="LabDx14" runat="server"></asp:Label>
                    <asp:Label ID="LabDx37" runat="server"></asp:Label></td>
            </tr>
        </table>
        <iframe id="FramePlShow" name="FramePlShow" src="" width="40" height="0" style="visibility: hidden"></iframe>
    </form>
    <div class="divMemPropertyBar" id="line_window" runat="server" style="left: 680px; top: 25px; width: 130px; height: 600px;">
        <iframe id="FrmTmPropertyshow" name="FrmTmPropertyshow" src="about:blank" frameborder="0" scrolling="no" style="height: 100%; width: 100%; border: 0" runat="server"></iframe>
    </div>
</body>
</html>

