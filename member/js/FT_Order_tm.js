// JScript 文件

var count_win=false;
var gTimeLoad = '90';
var gTime = '90';
var lButMessagebox = "您是否确认下注！！";
window.setTimeout("countdown()", 1000);
function Win_Redirect()
{
//	var i=document.getElementById("uid").value;+i

	ClickCancel();
}
function countdown()
{
//    alert (gTime);
    document.getElementById("LabTime").innerHTML = gTime;
    gTime --;
    
    if(gTime <= '0' ) 
    {

        Win_Redirect();

    }else
    {


        if ( gTime>'0')
        {
            setTimeout("countdown()","1000");
        }
    }
}
function CheckKey()
{
	if(event.keyCode == 13) return false;
	if((event.keyCode < 48 || event.keyCode > 57) && (event.keyCode > 95 || event.keyCode < 106))
	{alert("下注金额仅能输入数字!!");
	 return false;}
	//if (isNaN(event.keyCode) == true)){alert("下注金额仅能输入数字!!"); return false;}

}
    function MoneyKey(e)
    {
        var key = window.event ? event.keyCode:e.charCode;
        if(key == 13 || key == 0) return true;
        if(!(key > 47 && key < 58 ) && key != 45  && key != 43) 
        {
//          alert( key );  // "下注金额仅能输入数字！";46 "." 43 "+" 45 "-" ASCII 字符
          return false;
        }
    }
function SumKey(){

		if(document.getElementById("gold").value!='')

	{
        var tmp_var=document.getElementById("gold").value * document.getElementById("LabPL").innerHTML;
		tmp_var=Math.round(tmp_var*100);
		tmp_var=tmp_var/100;
		
//		document.getElementById("pc").innerHTML=tmp_var;
        document.getElementById("LabTmwinje").innerHTML=tmp_var;//可赢金额
//        alert( document.getElementById("TDTmwinje").innerHTML );
//		document.getElementById("LabPL").innerHTML = "tmp_var";
//		count_win=true;
		
	}
}
function SubChk()
{
//    val lTmwinje = document.getElementById("LabTmwinje").innerHTML ;
//    alert(lTmwinje + "请输入下注金额!!");
     var lTmwinje = document.getElementById("LabTmwinje").innerHTML ;

//     lTmwinje = document.getElementById("LabTmwinje").innerHTML ;
     if(lTmwinje == ''|| lTmwinje == '0')
     {
//          document.getElementById("gold").focus();
          alert("请输入下注金额!!");
          return false;
     }
     if(isNaN(lTmwinje) == true)
     {
//          document.getElementById("gold").focus();
          alert("只能输入数字!!");
          return false;
     }

    if(Number(lTmwinje) > Number(document.getElementById("LabDx").innerHTML))
    {
//         document.getElementById("gold").focus();
         alert("对不起,本场有下注金额最高: "+document.getElementById("LabDx").innerHTML +" 元限制!!");
         return false;
     }



        if(eval(lTmwinje*1) > eval(document.getElementById("Labxynd").innerHTML))
        {
//             document.getElementById("gold").focus();
             alert("下注金额不可大于可用额度!!");
             return false;
        }

    if(document.getElementById("TxtButData").value =="over")
    {//用来防范，连续点击产生的事件
         
         alert("下注正在进行……!!");
         return false;
    }
    if (window.confirm(lButMessagebox) == false )//lButMessagebox = "您是否确认下注！！";
    {
        return false;
    }
    document.getElementById("TxtButData").value="over";
    return true;

}
function CountWinGold()
{
	if(document.getElementById("LabTmwinje").value==''|| document.getElementById("LabTmwinje").value=='0')
	{
//		document.getElementById("gold").focus();

		alert("请输入下注金额!!");
	}
    //下注金額必須為數值
    if(isNaN(document.getElementById("LabTmwinje").value) == true){
        alert(notNumber);
        return false;
    }
}
function CountWinGold1()
{
	if(document.getElementById("gold").value=='')
	{
		document.getElementById("gold").focus();
		alert('1未输入下注金额!!!');
	}
	else
	{
        var tmp_var=document.getElementById("gold").value * document.getElementById("LabTmwinje").value;
        tmp_var=tmp_var-document.getElementById("gold").value;
        tmp_var=Math.round(tmp_var*100);
        tmp_var=tmp_var/100;
		document.getElementById("LabTmwinje").value = tmp_var;
		count_win=true;
	}
}
function Open_div()
{
	var show_str;
	if (document.getElementById("LabTmwinje").value!='0')
	{
		show_str="可赢金额："+document.getElementById("LabTmwinje").value+"<br>是否确定下注?";
	}
	else
	{	
		show_str="是否确定下注?<br>";
	}	

}
function Close_div()
{
	document.getElementById('gWager').style.display = "none";
	document.getElementById("btnCancel").disabled = false;
	document.getElementById("Submit").disabled = false;
//	document.getElementById("gold").readOnly=false;
	return false;
}
function Sure_wager()
{
	document.getElementById('gWager').style.display = "none";
	document.forms[0].submit();
}