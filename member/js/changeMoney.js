/*Convert Cash to Chinese Cash
*
*
*/
////////////////���ݽ��Сд���룬��̬�����д���///////////////////////////
var strLast="";//�ϴ�������ַ���
var strWithQfw;//ԭʼ�ַ���
var strWithoutQfw;//ȥ��ǧ��λ���ַ���
var intLen=0;//�������ֳ���
function change_amt()
{
	strWithQfw=jhform.txtTranAmt.value;
    //alert(strWithQfw);
	if(strWithQfw=="")
	{
		bigChineseShow.innerHTML="";
		jhform.txtTranAmt.value=""; 
		strLast="";
	}
	else
	{	

		//ȥ��ǧ��λ
		strWithoutQfw=getoff_Qfw(strWithQfw);
		//alert("strWithoutQfw:"+strWithoutQfw);
			
		if(!MycheckFloat(strWithoutQfw)){
			jhform.txtTranAmt.value=strLast;
			return false;
		}
		
	    var dot=strWithoutQfw.indexOf(".");
	    if (dot<0)
	    	dot=strWithoutQfw.length;
	    intLen=(strWithoutQfw.substring(0,dot)).length;
		
		var bigCash=toChineseCash(strWithoutQfw);
		
 		if(bigCash.length>19)
 			bigChineseShow.size="-1";
 		else
 			bigChineseShow.size="4";

	    bigChineseShow.innerHTML=bigCash;
	    
	    //���ǧ��λ��������ʾ��Сд�������
    	strWithQfw = add_Qfw(strWithoutQfw);
    	jhform.txtTranAmt.value=strWithQfw; 
    	jhform.AMOUNT.value=strWithoutQfw; 
    	strLast=strWithQfw;

    }
}

//////////////////////////////////

//��ʽ��Сд�ַ���
function FunFormat()
{	 
	var tradeMoney=document.jhform.txtTranAmt.value;
	if(tradeMoney==null || tradeMoney==""){
		return true;
	}
	if(tradeMoney.indexOf(".")!=-1)
	{
		 
		var i=tradeMoney.indexOf(".");
		tradeMoney=tradeMoney+"00";
		document.jhform.txtTranAmt.value=tradeMoney.substring(0,i+3);
	}
	else
	{ 
		document.jhform.txtTranAmt.value=tradeMoney+".00";
	}
	if(document.jhform.txtTranAmt.value==0.00)
	{	 
		//document.jhform.tranAmt.value="";
		//alert("����Ϊ��");
		return false;
	}
	//document.jhform.tranAmt.value=getoff_Qfw(document.jhform.txtTranAmt.value);
	//if(!isMoney(document.jhform.tranAmt.value)){
		 
		//document.jhform.txtTranAmt.focus();
		//document.jhform.tranAmt.value="";
		//return;
	//}
	 
	return true;
}

var aNum = new Array(10);
aNum[0] = "%u96F6";  //��
aNum[1] = "%u58F9";  //Ҽ
aNum[2] = "%u8d30";  //��
aNum[3] = "%u53c1";  //��
aNum[4] = "%u8086";  //��
aNum[5] = "%u4F0D";  //��
aNum[6] = "%u9646";  //½
aNum[7] = "%u67D2";  //��
aNum[8] = "%u634C";  //��
aNum[9] = "%u7396";  //��

var HUNDREDMILLION = 0
var TENTHOUSAND = 1;
var THOUSAND = 2;
var HUNDRED = 3;
var TEN = 4;
var YUAN = 5;
var JIAO = 6;
var CENT = 7;
var ZHENG = 8;
var aUnit = new Array(9);
aUnit[HUNDREDMILLION] = "%u4EBF";	//��
aUnit[TENTHOUSAND] = "%u4E07";		//��
aUnit[THOUSAND] = "%u4EDF";			//Ǫ
aUnit[HUNDRED] = "%u4F70";			//��
aUnit[TEN] = "%u62FE";				//ʰ
aUnit[YUAN] = "%u5143";				//Ԫ
aUnit[JIAO] = "%u89D2";				//��
aUnit[CENT] = "%u5206";				//��
aUnit[ZHENG] = "%u6574";			//��




function toChineseCash( cash )
{
	var integerCash="";
	var decimalCash="";	
	var integerCNCash = "";
	var decimalCNCash = ""
	var dotIndex = 0;
	var cnCash = "";
	var Cash = "";
	
	Cash = javaTrim( cash );
	if( Cash == null || Cash.length == 0 )
		return cnCash;
		
	if( !checkFloat( Cash ) )
		return cnCash;	
			
	dotIndex = Cash.indexOf('.');
	if( dotIndex != -1 ) {
		integerCash = Cash.substring( 0, dotIndex );
		decimalCash = Cash.substring( dotIndex + 1 );	
	}else {
		integerCash = Cash;
		decimalCash = null;
	}
	
	integerCNCash = filterCharacter( integerCash, '0' );
	if( integerCNCash == null )
		integerCNCash = "";
	else
		integerCNCash = convertIntegerToChineseCash( integerCNCash );
	
	decimalCNCash = convertDecimalToChineseCash( decimalCash, false );
	
	if( decimalCNCash == null || decimalCNCash.length == 0 ){
		if( integerCNCash == null || integerCNCash.length == 0 )
			cnCash = aNum[0] + aUnit[YUAN] + aUnit[ZHENG]; //"��Ԫ��"
		else
			cnCash = integerCNCash + aUnit[YUAN] + aUnit[ZHENG]; //"Ԫ��"
	}else {
		if( integerCNCash == null || integerCNCash.length == 0 )
			cnCash = decimalCNCash;
		else
			cnCash = integerCNCash + aUnit[YUAN] + decimalCNCash;  //"Ԫ"
	}
	return unescape(cnCash);	
}

function filterCharacter( filterString, filterChar )
{
	if( filterString == null || filterString.length == 0 )
	{
		return null;
	}
	
	var i = 0;	
	for( ; i < filterString.length; i++ )
	{
		if( filterString.charAt( i ) != filterChar )
			break;
	}
	
	var ret = filterString.substring( i, filterString.length );
	ret = (ret.length > 0) ? ret : null;
	
	return ret;	
}

function convertIntegerToChineseCash( cash )
{
	var tempCash = "";
	var returnCash = "";
	
	if( cash == null || cash.length == 0 )
		return null;
	
	var totalLen = cash.length;
	var times = ((cash.length % 4) > 0) ? ( Math.floor(cash.length/4) + 1 ) : Math.floor(cash.length/4);	
	var remainder = cash.length % 4;
	var i = 0;	
	for( ; i < times; i++ )
	{
		if( i == 0 && (remainder > 0) ) {
			tempCash = cash.substring( 0, remainder );
		}else {
			if( remainder > 0 )
				tempCash = cash.substring( remainder+(i-1)*4, remainder+i*4 );
			else
				tempCash = cash.substring( i*4, i*4+4 );
		}
		
		tempCash = convert4ToChinese( tempCash, false );
		returnCash += tempCash;
		if( tempCash != null && tempCash.length != 0 ) 
			returnCash += getUnit( times - i );
	}
		
	return returnCash;
}

function convert4ToChinese( cash, bOmitBeginZero )
{
	var i = 0;
	var length = cash.length;
	var bBeginZero = false;
	var bMetZero = false;
	var returnCash = "";	
	
	for( ; i < length; i++ )
	{
		if( i == 0 && bOmitBeginZero && cash.charAt(i) == '0' )
		{
			bBeginZero = true;
			continue;
		}
		if( bBeginZero && cash.charAt(i) == '0' )
			continue;
				
		if( cash.charAt(i) != '0' )	{
			if( bMetZero )
				returnCash += aNum[0]; //"��"
			bMetZero = false;
			returnCash += convert( cash.charAt(i) );
			switch( i + (4-length) )
			{
			case 0:
				returnCash += aUnit[THOUSAND]; //"ǧ"
				break;
			case 1:
				returnCash += aUnit[HUNDRED]; //"��"
				break;
			case 2:
				returnCash += aUnit[TEN]; //"ʰ"
				break;
			case 3:
				returnCash += "";
				break;
			default:
				break;				
			}
		}else {
			bMetZero = true;
		}
	}
	
	return returnCash;
}

function getUnit( part )
{
	var returnUnit = "";
	var i = 0;
	
	switch( part )
	{
	case 1:
		returnUnit = "";
		break;
	case 2:
		returnUnit = aUnit[TENTHOUSAND]; // "��"
		break;
	case 3:
		returnUnit = aUnit[HUNDREDMILLION]; //"��"
		break;
	default:
		if( part > 3 )
		{
			for( ; i < part - 3; i++ )
			{
				returnUnit += aUnit[TENTHOUSAND]; // "��"
			}
			returnUnit += aUnit[HUNDREDMILLION]; //"��"
		}
			
		break;
	}
	
	return returnUnit;
}

function convert( num )
{
	return aNum[parseInt(num)];
}

function convertDecimalToChineseCash( cash, bOmitBeginZero )
{
	var i = 0;
	var bBeginZero = false;
	var bMetZero = false;
	var returnCash = "";
	
	if( cash == null || cash.length == 0 )
		return returnCash;
		
	
	for( ; i < cash.length; i++ )
	{
		if( i >= 2 )
			break;
		if( i == 0 && bOmitBeginZero && cash.charAt(i) == '0' )
		{
			bBeginZero = true;
			continue;
		}
		if( bBeginZero && cash.charAt(i) == '0' )
			continue;
				
		if( cash.charAt(i) != '0' )	{
			//if( bMetZero )
			//	returnCash += aNum[0]; //"��"
			bMetZero = false;
			returnCash += convert( cash.charAt(i) );
			switch( i )
			{
			case 0:
				returnCash += aUnit[JIAO]; //"��"
				break;
			case 1:
				returnCash += aUnit[CENT]; //"��"
				break;
			default:
				break;				
			}
		}else {
			bMetZero = true;
		}
	}
	
	return returnCash;	
}

//////////add by xushengang //////////

//ȥ�� ","
function getoff_Qfw(cash){
    var len=cash.length;
    var ch="";
    var newCash="";
    for (var ii=0;ii<len;ii++){
        ch=cash.charAt(ii);
        if (ch!=","){newCash=newCash+ch;}
    }
    //alert("newCash"+newCash);
    return newCash;
}


//����","
function add_Qfw(cash)
{
    var len=cash.length;
    var cashNew="";//����","���ַ���
    var tt=0;//��������ÿ��һ��"," tt �� 1 
    var t=0;//���","�ĸ���
    if(intLen>3)
    	{
    		t=(intLen-intLen%3)/3;
    	}
    else
    	return cash;
    
    //�������ֳ��Ȳ���3�ı���
    if(intLen%3 !=0)
    {
	    for (var ii=0;ii<len;ii++)
	    {
	       cashNew=cashNew+cash.charAt(ii);
		       if (ii== (intLen%3+3*tt-1) &&  tt<t)
		       {
		        tt=tt+1;
		       	cashNew=cashNew+",";
		       }
	    }
	}
	//�������ֳ�����3�ı���
	else
	{
		tt=tt+1;
	    for (var ii=0;ii<len;ii++)
	    {
	       cashNew=cashNew+cash.charAt(ii);
		       if (ii== (3*tt-1) &&  tt<t)
		       {
		        tt=tt+1;
		       	cashNew=cashNew+",";
		       }
	    }	
	
	}
    return cashNew;
}


/*****************************************/
//�ж���ֵ,�Ƿ�Ϊ������
function MycheckFloat(str) { 
	var length1 , i , j;
	var string1="";
   
    var ofstr=getoff_Qfw(str);
    var oflen=ofstr.length;
    if(oflen>0 && ofstr.charAt(oflen-1)==" ") return(false);
  
    str = javaTrim(str);
    string1=str;
	length1 = string1.length;
	if (length1 == 0) 
	{
		alert( "���󣡿մ���");
		return(false); 
	}
	if(str == "0.00")
	{
	    //alert("����Ϊ0����������д��");
	    return(false);
	}
	
   if (str.charAt(0)=="0" )
   {
	   if(length1 > 1){
	    var num=0;
	    for(var i = 0; i < oflen; i++){
                var c = ofstr.charAt(i);
                if(c==0) num++;
            }
            if(num==oflen || (num==oflen-1 && ofstr.charAt(oflen-3)==".")){
                alert("����Ϊ0����������д��");
                return(false);
            }
        }

      	if(length1 == 4 && str == "0.00")
      	{
	        alert("����Ϊ0����������д��");
	        return(false);
        }
      	/*else
      	{
      	    if(!(str.charAt(1)=="."))
      	    {
		alert("�����λ����Ϊ0����������д��");
		return(false);
	    }
	}*/
    }
    if(str.charAt(0)==".")
    return false;
	j=0;
	for (i = 0 ; i < length1 ; i++) {  //�ж�ÿλ����
		if(isNaN(parseInt(str.charAt(i),10)))  {
			if(str.charAt(i) != ".")  {
				//alert( "������������ֵ�����ݣ�");					
				return(false); 
			} else  {j++;
			if(length1 - i > 3 ){
			//alert("С�����ֻ������λ��");
			 return(false);}
			  }
 		}		
	}
	if(j > 1) {
		//alert( "����С����ֻ����һ��!");			
		return(false);
	}

	return (true);
}


//**************ȥ���ַ���ǰ��Ŀո�************
function javaTrim(string){
	var length1, i, j;
	var string1 = "";
	
	length1 = string.length;
	for (i = 0 ; i < length1 ; i++)	{
		if(string.charAt(i) != " ")	{
			for (j = i ; j < length1 ; j++) 
				string1 = string1 + string.charAt(j);
				break;
		}
	}	
	length1 = string1.length;
	string = string1;
	string1 = "";
	for (i = length1 - 1 ; i >= 0 ; i--) {
		if(string.charAt(i) != " ") {
			for (j = 0 ; j <= i ; j++) 
				string1 = string1 + string.charAt(j);
				break;	
		}
	}
	string = string1;	
	return(string)	
}

//�ж���ֵ,�Ƿ�Ϊ������
function checkFloat(string) { 
	var length1 , i , j;
	var string1="";
   
    var ofstr=getoff_Qfw(string);
    var oflen=ofstr.length;
    if(oflen>0 && ofstr.charAt(oflen-1)==" ") return(false);

  
    string1 = javaTrim(string)
	length1 = string1.length;
	if (length1 == 0) 
	{
		alert( "���󣡿մ���");
		return(false); 
	}
       if (string.charAt(0)=="0" )
	{
		if(length1 > 1){
		var num=0;
		for(var i = 0; i < oflen; i++){
	            var c = ofstr.charAt(i);
	            if(c==0) num++;
	        }
	        if(num==oflen || (num==oflen-1 && ofstr.charAt(oflen-3)==".")){
                    alert("����Ϊ0����������д��");
                    return(false);
                }
	    }

	    if(length1 == 4 && string == "0.00")
	    {
	        alert("����Ϊ0����������д��");
	        return(false);
	    }
	    /*else
	    {
	        if(!(string.charAt(1)=="."))
	        {
		     alert("�����λ����Ϊ0����������д��");
		     return(false);
		}
	    }*/
	}
	
	j=0;
	for (i = 0 ; i < length1 ; i++) {  //�ж�ÿλ����
		if(isNaN(parseInt(string.charAt(i),10)))  {
			if(string.charAt(i) != ".")  {
				alert( "������������ֵ�����ݣ�");					
				return(false); 
			} else  {j++;
			if(length1 - i > 3 ){
			alert("С�����ֻ������λ��");
			 return(false);}
			  }
 		}		
	}
	if(j > 1) {
		alert( "����С����ֻ����һ��!");			
		return(false);
	}

	return (true);
}

//FormatAmt 20061017
function FormatAmt(Amt){
var inputStr = Amt
if(inputStr=="") return
var w = inputStr.indexOf("-")
if(w==0){
inputStr = inputStr.substring(1,inputStr.length)
}
var i = inputStr.indexOf(".")
var StrPo = ""
var blea = false
if ((inputStr.length - i - 1)!=0&&i!=-1){
StrPo = inputStr.substring(i,inputStr.length)
if(StrPo.length==2){
StrPo = StrPo + "0"
}
blea = true
}else{
StrPo = ".00"
}
var StrInt = inputStr
if(blea){
StrInt = inputStr.substring(0,i)
}
var h = StrInt.length
var m = h%3
var StrZh=""
var po = true
if (m!=0&&h>3){
StrZh=StrInt.substring(0,m)+","
StrInt = StrInt.substring(m,h)
}else if (h<4){
if(h == 0){
StrInt = h
}
StrZh=StrInt+StrPo
po = false
}
var k = (h - m)/3
if(po){
for (var n = 1 ;n<k+1 ;n++ ){
StrZh = StrZh+StrInt.substring(0,3)
if (n!=k){
StrZh = StrZh + ","
}else{
StrZh = StrZh  + StrPo
}
StrInt = StrInt.substring(3,(h-m))
}
}
if(w==0){
StrZh = "-" +StrZh
}
document.write(StrZh)
}

// FormatAmtCapital
function FormatAmtCapital(amt){
	var Capital = toChineseCash(amt);
	document.write(Capital);
}