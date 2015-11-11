// JScript 文件

var count_win=false;
var gTimeLoad = '90';
var gTime = '90';
var lButMessagebox = "您是否确认下注！！";
window.setTimeout("countdown()", 1000);
function Win_Redirect()
{
//	var i=document.getElementById('uid').value;+i
//	self.location='select_lt.aspx';
	ClickCancel();
}
function countdown()
{
//    alert (gTime);
    document.getElementById('LabTime').innerHTML = gTime;
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
function SumKey(){

		if(document.getElementById('gold').value!='')

	{
        var tmp_var=document.getElementById('gold').value * document.getElementById('LabPL').innerHTML;
		tmp_var=Math.round(tmp_var*100);
		tmp_var=tmp_var/100;
		
//		document.getElementById('pc').innerHTML=tmp_var;
        document.getElementById('LabTmwinje').innerHTML=tmp_var;//可赢金额
//        alert( document.getElementById('TDTmwinje').innerHTML );
//		document.getElementById('LabPL').innerHTML = "tmp_var";
//		count_win=true;
		
	}
}
function SubChk()
{
     if (Number(document.getElementById('gold').value )== 0)
     {
          document.getElementById('gold').focus();
          alert("请输入下注金额!!");
          return false;
     }
     if(isNaN(document.getElementById('gold').value) == true)
     {
          document.getElementById('gold').focus();
          alert("只能输入数字!!");
          return false;
     }

     if(isNaN(document.getElementById('LabPL').innerHTML) == true)
     {
 
          alert("对不起!单号已封,不能提交.");
          return false;
     }
    



   var strGold = document.getElementById('gold').value;

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
    if (document.getElementById('LabDc') !=   null)
    {
//        alert(document.getElementById('LabDc !=   null);
        var  chkMaxBetLimitValue =   document.getElementById('LabDc').innerHTML;
        if(eval(strGold) > chkMaxBetLimitValue){
            alert(overDcLimit + chkMaxBetLimitValue);
            return false;
        }
    }

    if(document.getElementById('TxtButData').value =="over")
    {//用来防范，连续点击产生的事件
         
         alert("下注正在进行……!!");
         return false;
    }
    if (window.confirm(lButMessagebox) == false )//lButMessagebox = "您是否确认下注！！";
    {
        return false;
    }
    document.getElementById('TxtButData').value="over";


}
function CountWinGold()
{
	if(document.getElementById('gold').value=='')
	{
		document.getElementById('gold').focus();

//		alert("请输入下注金额!!");
	}
	else
	{
        var tmp_var=document.getElementById('gold').value * document.getElementById('LabPL').innerHTML;
		tmp_var=Math.round(tmp_var*100);
		tmp_var=tmp_var/100;
		
//		document.getElementById('pc').innerHTML=tmp_var;
        document.getElementById('LabTmwinje').innerHTML=tmp_var;//可赢金额
//        alert( document.getElementById('TDTmwinje').innerHTML );
//		document.getElementById('LabPL').innerHTML = "tmp_var";
		count_win=true;
		
	}
}
function CountWinGold1()
{
	if(document.getElementById('gold').value=='')
	{
		document.getElementById('gold').focus();
		alert('1未输入下注金额!!!');
	}
	else
	{
        var tmp_var=document.getElementById('gold').value * document.getElementById('LabTmwinje').value;
        tmp_var=tmp_var-document.getElementById('gold').value;
        tmp_var=Math.round(tmp_var*100);
        tmp_var=tmp_var/100;
		document.getElementById('LabTmwinje').value = tmp_var;
		count_win=true;
	}
}
function Open_div()
{
	var show_str;
	if (document.getElementById('LabTmwinje').value!='0')
	{
		show_str="可赢金额："+document.getElementById('LabTmwinje').value+"<br>是否确定下注?";
	}
	else
	{	
		show_str="是否确定下注?<br>";
	}	

}
function Close_div()
{
	document.getElementById('gWager').style.display = "none";
	document.getElementById('btnCancel').disabled = false;
	document.getElementById('Submit').disabled = false;
	document.getElementById('gold').readOnly=false;
	return false;
}
function Sure_wager()
{
	document.getElementById('gWager').style.display = "none";
	document.forms[0].submit();
}