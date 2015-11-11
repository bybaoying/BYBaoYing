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
        var tmQS= new Array();//生肖禽兽
        tmQS[4]=	'ys';//兔
        tmQS[3]=	'ys';//虎
        tmQS[2]=	'jq';//牛
        tmQS[1]=	'ys';//鼠
        tmQS[12]=	'jq';//猪
        tmQS[11]=	'jq';//狗
        tmQS[10]=	'jq';//鸡
        tmQS[9]=	'ys';//猴
        tmQS[8]=    'jq';//羊
        tmQS[7]=	'jq';//马
        tmQS[6]=	'ys';//蛇
        tmQS[5]=	'ys';//龙
            
        var tmQH= new Array();//生肖前后肖
        tmQH[4]=	'qx';//兔
        tmQH[3]=	'qx';//虎
        tmQH[2]=	'qx';//牛
        tmQH[1]=	'qx';//鼠
        tmQH[12]=	'hx';//猪
        tmQH[11]=	'hx';//狗
        tmQH[10]=	'hx';//鸡
        tmQH[9]=	'hx';//猴
        tmQH[8]=    'hx';//羊
        tmQH[7]=	'hx';//马
        tmQH[6]=	'qx';//蛇
        tmQH[5]=	'qx';//龙    
//        function backarr() {
//            var aa= new Array();
//            aa[0]=1;
//            aa[1]=2;
//            return aa;
//        }
//        alert(backarr()[0]);
        function SelectType(vType ,vObect){
            mChoose_Nums = 0;//当前选择数
//            parent.SelectBallType(vType,vObect.value);
            
            if (Number(vObect.value)<=0)
            {
//                vObect.focus();
//                alert("通下金额不能为零!!");
//                return ;
                
//                document.getElementById("Txtsxje").value = Number(vObect.value);
            }
 
          switch(vType){
               case 'dr'://单
                    mChoose_Nums = DrSaValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"dr");
                 break;
               
               case 'sa': //双
                    mChoose_Nums = DrSaValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"sa");
                 break;
                
               case 'jq': //家禽
                    mChoose_Nums = QYValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"jq");
                 break;
               case 'ys': //野兽
                    mChoose_Nums = QYValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"ys");
                 break;
               case 'qx': //前六
                    mChoose_Nums = QHValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"qx");
                 break;
               case 'hx': //后六
                    mChoose_Nums = QHValue("1.2.3.4.5.6.7.8.9.10.11.12","Chksx",Number(vObect.value),"hx");
                 break;
              }
              CHorRS();
              Fun_ChooseType();
              document.getElementById("TmNum").innerHTML = mChoose_Nums;//显示选择数
            
        }
        function Fun_ChooseType() {
             if ( mChoose_Types_Tag =="")//选择类型标签
            {
                alert(mMessInfo_Type);// '请选择下注类别！';
	            obj.checked = false;
	            return false;
            }
//            if(mChooseDm == 'R' && obj.checked) {
//	            document.lt_form.Txt_ChooseDm.value = obj.value;//选择正胆码
//	            select_RS('S');
//            }
            document.getElementById("RNumB").innerHTML = "";//显示正码
            document.getElementById("SNumB").innerHTML = "";
            document.lt_form.rs_s.value ="";//存选定的副码
            document.lt_form.Txt_ChoosePmNum.value ="0";//存选定的副码的数量
//            var dd = document.lt_form.lt_sxa;
//            alert(dd);
            var lSNumBll = 0;
//	            numobj = document.lt_form.elements;
            var lObjCaption;
            var lobjChk;
            
//           mChoose_NumMax = vChoose_Max;//需要选最大数
//            mChoose_NumMin = vChoose_Min;//需要选最小数
//            mChoose_CountNums =   vChoose_Nums
            if ( mChoose_Types_Tag =="sx")//选择类型标签 sx ws
            {
                for (i=1; i<=mChoose_CountNums; i++) {// 有可选控件数
       	            lobjChk = document.getElementById("Chk" + mChoose_Types_Tag +i) ;//mChoose_Types_Tag选择类型标签 sx ws
       	            lObjCaption  = document.getElementById("LabC" + mChoose_Types_Tag +i) ;
                    if ( lobjChk.checked == true) 
                    {
	                    if(lobjChk.value == document.lt_form.Txt_ChooseDm.value && document.lt_form.RS.checked ==true){
	                    //正码添加
	                        document.getElementById("RNumB").innerHTML = "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[1] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
	                    }
	                    else{
	                    //副码添加
	                        lSNumBll ++;
		                    document.getElementById("SNumB").innerHTML += "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[2] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
		                    document.lt_form.rs_s.value += lobjChk.value +";";
	                    }
                    }
                }
            }else{
                for (i=0; i<mChoose_CountNums; i++) {// 有可选控件数
       	            lobjChk = document.getElementById("Chk" + mChoose_Types_Tag +i) ;//选择类型标签 sx ws
       	            lObjCaption  = document.getElementById("LabC" + mChoose_Types_Tag +i) ;
                    if ( lobjChk.checked == true) 
                    {
	                    if(lobjChk.value == document.lt_form.Txt_ChooseDm.value && document.lt_form.RS.checked ==true){
	                    //正码添加
	                        document.getElementById("RNumB").innerHTML = "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[1] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
	                    }
	                    else{
	                    //副码添加
	                        lSNumBll ++;
		                    document.getElementById("SNumB").innerHTML += "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[2] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
		                    document.lt_form.rs_s.value += lobjChk.value +";";
	                    }
                    }
                }
            }
            document.lt_form.Txt_ChoosePmNum.value =lSNumBll;//存选定的副码的数量
            if (document.lt_form.RS.checked ==true){
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin-1) ;
            }else{
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin) ;
               }

            if(document.getElementById("RNumB").innerHTML == "") {
	            document.lt_form.Txt_ChooseDm.value = "";//显示正码
	            select_RS('R');//选择 正码
            }
        }
        function QHValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue )//前六后六
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
        function QYValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue )//家禽野兽
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
        function DrSaValue( vNoValue,vTmNoCap,vChipMoney,vTypeValue)//单双值
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
        //检查帐号,名称,密码 字元限制
        function CheckKey()
        {
            if(event.keyCode == 13) return true;
            if(!((event.keyCode > 47 && event.keyCode < 58 ) || event.keyCode == 46 ))
            {
                alert("金额不可使用特殊字符!!"); return false;
            }
        }

        var gTime = '11053';
        var mChoose_NumMax = 0;  //需要选最大数
        var mChoose_NumMin = 0;//需要选最小数
        var mChoose_CountNums=0;// 有可选控件数
        var mChoose_Types_Tag ="";//选择类型标签 生肖/尾数
        var mChoose_Nums = 0;//当前选择数
        var mMessInfo_Min =  '最少选择';
        var mess11 = '个数字';
        var mMessInfo_Max =  '最多选择';
        var mess3 = '请选择正号';
        var mMessInfo_Type = '请选择下注类别！';
        var mChooseDm = 'R';	//设定要选择填入ㄉ号码是 正号 还是 副号
        var num_color = new Array();
        var select_num = new Array();
        var fst = '11053';

        num_color['1'] = 'r.gif'; 
        num_color['2'] = 'b.gif'; 
        num_color['3'] = 'g.gif';  
  
        function Select_Xs_Item(vChoose_Min,vChoose_Max,vChoose_Nums) {

            mChoose_NumMax = vChoose_Max;//需要选最大数
            mChoose_NumMin = vChoose_Min;//需要选最小数
            mChoose_CountNums =   vChoose_Nums// 已可选控件数
            mChoose_Types_Tag ="sx";//选择类型标签
            CHorRS();
        } 
        function Select_Ws_Item(vChoose_Min,vChoose_Max,vChoose_Nums) {

            mChoose_NumMax = vChoose_Max;//需要选最大数
            mChoose_NumMin = vChoose_Min;//需要选最小数
            mChoose_CountNums =   vChoose_Nums// 已可选控件数
            mChoose_Types_Tag ="ws";//选择类型标签
            CHorRS();
        } 
        function select_RS(temp) {	//选择现在要选正号码 是正号还是副号
            if(temp == 'R') {//选正号码
	            mChooseDm = 'R';
	            document.getElementById("RNumT").style.color = "#FF0000";
	            document.getElementById("SNumT").style.color = "#000000";
            } else {//选副号码
	            mChooseDm = 'S';
	            document.getElementById("RNumT").style.color = "#000000";
	            document.getElementById("SNumT").style.color = "#FF0000";
            }	
        }
        function SubChkBox(obj) {

            if(obj.checked == false)
            {
	            mChoose_Nums--;//当前选择数
	            document.getElementById("TmNum").innerHTML = mChoose_Nums;
	            return true;
            }
            if(obj.checked == true)
            {
            
                if ( mChoose_Types_Tag =="")//选择类型标签
                {
                    alert(mMessInfo_Type);// '请选择下注类别！';
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
	            document.getElementById("TmNum").innerHTML = mChoose_Nums;//显示选择数
	            return true;
            }
        }
        function Fun_ChooseClick(obj) {
            if (! SubChkBox(obj)){
                return;
            }
            if(mChooseDm == 'R' && obj.checked) {
	            document.lt_form.Txt_ChooseDm.value = obj.value;//选择正胆码
	            select_RS('S');
            }
            document.getElementById("RNumB").innerHTML = "";//显示正码
            document.getElementById("SNumB").innerHTML = "";
            document.lt_form.rs_s.value ="";//存选定的副码
            document.lt_form.Txt_ChoosePmNum.value ="0";//存选定的副码的数量
//            var dd = document.lt_form.lt_sxa;
//            alert(dd);
            var lSNumBll = 0;
//	            numobj = document.lt_form.elements;
            var lObjCaption;
            var lobjChk;
            
//                        mChoose_NumMax = vChoose_Max;//需要选最大数
//            mChoose_NumMin = vChoose_Min;//需要选最小数
//            mChoose_CountNums =   vChoose_Nums
            if ( mChoose_Types_Tag =="sx")//选择类型标签 sx ws
            {
                for (i=1; i<=mChoose_CountNums; i++) {// 有可选控件数
       	            lobjChk = document.getElementById("Chk" + mChoose_Types_Tag +i) ;//mChoose_Types_Tag选择类型标签 sx ws
       	            lObjCaption  = document.getElementById("LabC" + mChoose_Types_Tag +i) ;
                    if ( lobjChk.checked == true) 
                    {
	                    if(lobjChk.value == document.lt_form.Txt_ChooseDm.value && document.lt_form.RS.checked ==true){
	                    //正码添加
	                        document.getElementById("RNumB").innerHTML = "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[1] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
	                    }
	                    else{
	                    //副码添加
	                        lSNumBll ++;
		                    document.getElementById("SNumB").innerHTML += "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[2] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
		                    document.lt_form.rs_s.value += lobjChk.value +";";
	                    }
                    }
                }
            }else{
                for (i=0; i<mChoose_CountNums; i++) {// 有可选控件数
       	            lobjChk = document.getElementById("Chk" + mChoose_Types_Tag +i) ;//选择类型标签 sx ws
       	            lObjCaption  = document.getElementById("LabC" + mChoose_Types_Tag +i) ;
                    if ( lobjChk.checked == true) 
                    {
	                    if(lobjChk.value == document.lt_form.Txt_ChooseDm.value && document.lt_form.RS.checked ==true){
	                    //正码添加
	                        document.getElementById("RNumB").innerHTML = "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[1] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
	                    }
	                    else{
	                    //副码添加
	                        lSNumBll ++;
		                    document.getElementById("SNumB").innerHTML += "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[2] + ")'><font class='ballfont'>"+ lObjCaption.innerHTML +"</font></span>";
		                    document.lt_form.rs_s.value += lobjChk.value +";";
	                    }
                    }
                }
            }
            document.lt_form.Txt_ChoosePmNum.value =lSNumBll;//存选定的副码的数量
            if (document.lt_form.RS.checked ==true){
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin-1) ;
            }else{
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin) ;
               }

            if(document.getElementById("RNumB").innerHTML == "") {
	            document.lt_form.Txt_ChooseDm.value = "";//显示正码
	            select_RS('R');//选择 正码
            }
        }


        //提交检查	
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
              alert(mMessInfo_Type);// '请选择下注类别！';
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
            //检查选ㄌ 正/副码  检查他有没有选正号
	            alert(mess3);// '请选择正号';
	            select_RS('R');//选择 正码
	            return false;
            }
//	            if (document.lt_form.RS.checked ) {
//	            //检查选ㄌ 正/副码  检查他有没有选正号

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
	            alert('请写入金额');
	            return false;
            }
            return true;
        	
        }




    
   
       function  GroupNumber(vUnitNum,vTypeNum)
       {//求vUnitNum个数字，进行vTypeNum形式的组合，共有几种情况
           if (vTypeNum==0)
           {
                return 0;
            }
           var i,j,k,m,n;
    	   
           k = vUnitNum - vTypeNum;
           var lTypeNum = vTypeNum ;//求VlTypeNum的阶乘
            for( i=vTypeNum - 1; i > 0; i -- ) {
                lTypeNum = i *  lTypeNum

            }
            
           k = vUnitNum - vTypeNum;//求vUnitNum - vTypeNum的阶乘
           var lGroupNumber = vUnitNum ;
            for( i=vUnitNum-1; i > k; i -- ) {
                lGroupNumber = i *  lGroupNumber
            }
            return lGroupNumber /  lTypeNum
//C16(5)=(16*15*14*13*12*11)/(6*5*4*3*2*1)=8008
//这是你考虑5个数字顺序的方法，如果考虑顺序就是
//A16（5）=16*15*14*13*12*11=5765760 
       }

        
        function CHorRS() {//
            var lSNumBll = document.lt_form.Txt_ChoosePmNum.value;//选择的平码（副号）数
            
            if (document.lt_form.RS.checked ==true){
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin-1) ;
            }else{
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,mChoose_NumMin) ;
               }
            if(document.lt_form.RS.checked) {
                select_RS('R'); //选择 正码
//	            eval("RNumT.style.display=\"\";");
//	            eval("RNumB.style.display=\"\";");
//	            eval("SNumT.style.display=\"\";");
//	            eval("SNumB.style.display=\"\";");
	            document.getElementById("RNumT").style.display="";
	            document.getElementById("RNumB").style.display="";//显示正码
	            document.getElementById("SNumT").style.display="";
	            document.getElementById("SNumB").style.display="";
             
            } else {
                //选择副码
                if (!(document.lt_form.Txt_ChooseDm.value=="" || document.lt_form.Txt_ChooseDm.value == "00"))
                {//
                    lobjname ="chk"+Number(document.lt_form.Txt_ChooseDm.value);
       	            obj = document.getElementById(lobjname)  ;
       	            obj.checked = false; //取消副码
                    Fun_ChooseClick(obj) ;
                    
                    document.lt_form.Txt_ChooseDm.value = "";//正码
                    document.getElementById("RNumB").innerHTML  = "";//显示正码

                }
                
//	            eval("RNumT.style.display=\"none\";");
//	            eval("RNumB.style.display=\"none\";");
//	            eval("SNumT.style.display=\"none\";");
	            
	            document.getElementById("RNumT").style.display="none";
	            document.getElementById("RNumB").style.display="none";//显示正码
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
            
            var arrTm = lquerstr.split(";");//返回选的号码类及号码ID
            var ltmZno= "";//正码号
            if (document.lt_form.RS.checked) {
                ltmZno = document.lt_form.Txt_ChooseDm.value ;//正码
            }
//            window.open('FT_order_Lm.aspx?TmClassId=' + arrTm[1] + '&TmTypeId=' +  arrTm[0] + 
//                '&TmNo=' + document.lt_form.rs_s.value + '&TmZNo=' + ltmZno  + 
//                '&TmJe=' + document.lt_form.TxtLm.value,'bbnet_mem_order');//地址不变，重新打开不刷新页面
            window.parent.bbnet_mem_order.location.href='FT_order_Lm.aspx?TmClassId=' + arrTm[1] + '&TmTypeId=' +  arrTm[0] + 
                '&TmNo=' + document.lt_form.rs_s.value + '&TmZNo=' + ltmZno  + 
                '&TmJe=' + document.lt_form.TxtLm.value;
        }         

        function SendDataA()
        {
            window.parent.bbnet_mem_order.location.href='FT_order_Lm.aspx?TmClassId=20&TmTypeId=555&TmNo=01;02;鼠;虎;龙;&TmZNo=00&TmJe=10';
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
                                <li id="linkZm1" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage('A');">连肖</a></li>
                                <li id="linkZm2" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openchanagePage('B');">连尾</a></li>
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
                                                                <strong>连肖</strong></td>
                                                            <td style="width: 250px">
                                                                (<b>香港时间:</b>
                                                                <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                            <td style="text-align: right;">
                                                                <a class="clickRefreshPage" onclick="openLink();">刷新</a> :<label id="LabReftime"></label>&nbsp;
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
                                                                <strong>期数:</strong>
                                                                <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                            <td style="width: 250px">
                                                                </>
                                                                &nbsp;</td>
                                                            <td style="text-align: right">
                                                                <strong>开奖日期:
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
                                                                金额</td>
                                                            <td style="width: 40px">
                                                                <asp:TextBox onkeypress="return MoneyKey(event);" ID="TxtLm" runat="server" CssClass="Ed_TmMoneyfont" MaxLength="7"></asp:TextBox></td>
                                                            <td style="width: 150px">
                                                                <input id="ButSend" type="button" onclick="SendData();" class="button_Ok" value="发送" />
                                                                <input onclick="javascript:mChoose_Nums=0;" type="reset" value="取消" class="button_Reset" name="btnSubmit">
                                                                <input id="TxtButData" runat="server" name="TxtButData" type="text" maxlength="1" size="1" style="visibility: hidden; width: 4px; display: none;" /></td>
                                                            <td class="td_Chipsend">
                                                                <asp:Label ID="Label1" runat="server" Text="选号："></asp:Label>
                                                                <asp:Label ID="TmNum" runat="server"></asp:Label>
                                                                <asp:Label ID="Label3" runat="server" Text="组成"></asp:Label>
                                                                <asp:Label ID="GroupNum" runat="server"></asp:Label>
                                                                <asp:Label ID="Label2" runat="server" Text="单。"></asp:Label>&nbsp;
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
                                                    类别</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx2Y" onclick="Select_Xs_Item(2,11,12);" type="radio" value="CH_3" name="rtype" runat="server">二肖碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx3Y" onclick="Select_Xs_Item(3,11,12);" type="radio" value="CH_32" name="rtype" runat="server">三肖碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx4Y" onclick="Select_Xs_Item(4,11,12);" type="radio" value="CH_2" name="rtype" runat="server">四肖碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx5Y" onclick="Select_Xs_Item(5,11,12);" type="radio" value="CH_2S" name="rtype" runat="server">五肖碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx2N" onclick="Select_Xs_Item(2,11,12);" type="radio" value="CH_2SP" name="rtype" runat="server">二肖不碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx3N" onclick="Select_Xs_Item(3,11,12);" type="radio" value="CH_2SP" name="rtype" runat="server">三肖不碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx4N" onclick="Select_Xs_Item(4,11,12);" type="radio" value="CH_2SP" name="rtype" runat="server">四肖不碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlx5N" onclick="Select_Xs_Item(5,11,12);" type="radio" value="CH_2SP" name="rtype" runat="server">五肖不碰</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    赔率</td>
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
                                                    首肖<br />
                                                    赔率</td>
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
                                                    类别</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlw2" onclick="Select_Ws_Item(2,11,10);" type="radio" value="CH_3" name="rtype" runat="server">二尾碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlw3" onclick="Select_Ws_Item(3,11,10);" type="radio" value="CH_32" name="rtype" runat="server">三尾碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlw4" onclick="Select_Ws_Item(4,11,10);" type="radio" value="CH_2" name="rtype" runat="server">四尾碰</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlw5" onclick="Select_Ws_Item(5,11,10);" type="radio" value="CH_2S" name="rtype" runat="server">五尾碰</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    赔率</td>
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
                                                    零尾<br />
                                                    赔率</td>
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
                                                <span> 正/副号</span></td>
                                            <td id="RNumT" onclick="select_RS('R');" width="40" class="TmLabfont">
                                                正号</td>
                                            <td id="RNumB" align="center" width="40" runat="server" class="Td_TmBallfont">
                                            </td>
                                            <td id="SNumT" onclick="select_RS('S');" width="40" class="TmLabfont">
                                                副号</td>
                                            <td id="SNumB" align="center" class="Td_TmBallfont">&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                    <table id="TabPlShowSx" runat="server" border="0" cellpadding="0" cellspacing="1" class="table_Chip">
                                        <tr>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>生肖</b></td>
                                            <td class="td_Head_set_cen" style="width: 190px">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>勾选</b></td>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>生肖</b></td>
                                            <td class="td_Head_set_cen" style="width: 190px">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen">
                                                <b>勾选</b></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx1" runat="server" Text="鼠"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx1" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx1" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="1" valuea="鼠" tabindex="1" />
                                                <asp:Label ID="LabPsx1" runat="server" Style="display: none" Text="鼠"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx2" runat="server" Text="牛"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx2" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx2" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="2" valuea="牛" tabindex="2" />
                                                <asp:Label ID="LabPsx2" runat="server" Style="display: none" Text="牛"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx3" runat="server" Text="虎"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx3" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx3" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="3" valuea="虎" tabindex="3" />
                                                <asp:Label ID="LabPsx3" runat="server" Style="display: none" Text="虎"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx4" runat="server" Text="兔"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx4" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx4" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="4" valuea="兔" tabindex="4" />
                                                <asp:Label ID="LabPsx4" runat="server" Style="display: none" Text="兔"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx5" runat="server" Text="龙"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx5" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx5" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="5" valuea="龙" tabindex="5" />
                                                <asp:Label ID="LabPsx5" runat="server" Style="display: none" Text="龙"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx6" runat="server" Text="蛇"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx6" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx6" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="6" valuea="蛇" tabindex="6" />
                                                <asp:Label ID="LabPsx6" runat="server" Style="display: none" Text="蛇"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx7" runat="server" Text="马"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx7" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx7" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="7" valuea="马" tabindex="7" />
                                                <asp:Label ID="LabPsx7" runat="server" Style="display: none" Text="马"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx8" runat="server" Text="羊"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx8" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx8" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="8" valuea="羊" tabindex="8" />
                                                <asp:Label ID="LabPsx8" runat="server" Style="display: none" Text="羊"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx9" runat="server" Text="猴"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx9" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx9" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="9" valuea="猴" tabindex="9" />
                                                <asp:Label ID="LabPsx9" runat="server" Style="display: none" Text="猴"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx10" runat="server" Text="鸡"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx10" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx10" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="10" valuea="鸡" tabindex="10" />
                                                <asp:Label ID="LabPsx10" runat="server" Style="display: none" Text="鸡"></asp:Label></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx11" runat="server" Text="狗"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx11" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx11" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="11" valuea="狗" tabindex="11" />
                                                <asp:Label ID="LabPsx11" runat="server" Style="display: none" Text="狗"></asp:Label></td>
                                            <td class="TmLabfont">
                                                <asp:Label ID="LabCsx12" runat="server" Text="猪"></asp:Label></td>
                                            <td class="TmLabValuefont">
                                                <asp:Label ID="LabVsx12" runat="server"></asp:Label>
                                            </td>
                                            <td class="Td_TmMoneyfont">
                                                <input id="Chksx12" runat="server" class="checkSy" name="lt_sx" onclick="Fun_ChooseClick(this);" type="checkbox" value="12" valuea="猪" tabindex="12" />
                                                <asp:Label ID="LabPsx12" runat="server" Style="display: none" Text="猪"></asp:Label></td>
                                        </tr>
                                    </table>
                                    <table id="TabPlShowWs" class="table_Chip" border="0" cellspacing="1" cellpadding="0" runat="server">
                                        <tr>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>尾数</b></td>
                                            <td class="td_Head_set_cen" style="width: 190px">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen">
                                                <strong>勾选</strong></td>
                                            <td class="td_Head_set_cen" style="width: 70px">
                                                <b>尾数</b></td>
                                            <td class="td_Head_set_cen" style="width: 190px">
                                                <b>号码</b></td>
                                            <td class="td_Head_set_cen">
                                                <strong>勾选</strong></td>
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
                    信用额度</td>
                <td class="td_Label">
                    <asp:Label ID="LabBzname" runat="server" Text="人民币(RMB)"></asp:Label>
                    <asp:Label ID="Labxynd" runat="server"></asp:Label>
                </td>
                <td style="width: 65px;" class="td_Label" align="center">
                    下注金额</td>
                <td class="td_Label">
                    <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table id="Table5" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
            <tr>
                <td class="td_Label" align="center">
                    最低限额</td>
                <td class="td_Label">
                    <asp:Label ID="LabDdAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDd02" runat="server"></asp:Label>
                    <asp:Label ID="LabDd03" runat="server"></asp:Label>
                    <asp:Label ID="LabDd04" runat="server"></asp:Label>
                    <asp:Label ID="LabDd14" runat="server"></asp:Label>
                    <asp:Label ID="LabDd37" runat="server"></asp:Label></td>
                <td class="td_Label" align="center">
                    单注限额</td>
                <td class="td_Label">
                    <asp:Label ID="LabDcAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDc02" runat="server"></asp:Label>
                    <asp:Label ID="LabDc03" runat="server"></asp:Label>
                    <asp:Label ID="LabDc04" runat="server"></asp:Label>
                    <asp:Label ID="LabDc14" runat="server"></asp:Label>
                    <asp:Label ID="LabDc37" runat="server"></asp:Label></td>
                <td class="td_Label" align="center">
                    单号限额</td>
                <td class="td_Label">
                    <asp:Label ID="LabDzAA" runat="server"></asp:Label>
                    <asp:Label ID="LabDz02" runat="server"></asp:Label>
                    <asp:Label ID="LabDz03" runat="server"></asp:Label>
                    <asp:Label ID="LabDz04" runat="server"></asp:Label>
                    <asp:Label ID="LabDz14" runat="server"></asp:Label>
                    <asp:Label ID="LabDz37" runat="server"></asp:Label></td>
                <td class="td_Label" align="center">
                    单项限额</td>
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

