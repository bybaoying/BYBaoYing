
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
        var ldataload = "下注正在进行……!!";
        
        var overTmStop = "对不起!单号已封,不能提交.当前已封:";
        var lButMessagebox = "您是否确认下注！！";
    function CheckKey(e)
    {
        var key = window.event ? event.keyCode:e.charCode;
   
        if(key == 13 || key == 0) return true;
        if(!(key > 47 && key < 58 ) && key != 46  && key != 45  && key != 43) 
        {
          alert( notNumber );  // "下注金额仅能输入数字！";
          return false;
        }
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
    function SubClassChk(vTmwinje,vMoneyDx)
    {
    
//         alert(overEventLimit + vTmwinje + vMoneyDx );//"下注金额不可大於可用单场限额："
        if (Number(vTmwinje) > Number(vMoneyDx))
        {
             alert(overEventLimit + vMoneyDx );//"下注金额不可大於可用单场限额："
             return false;
         }
        return true;
    }
    function SubChk(vTmwinje,vMoneyXynd,vButDataGo )
    {
         var lTmwinje = vTmwinje ;

         if(Number(lTmwinje) <= 0)
         {
              alert(noMoney );//"请输入下注金额!!"
              return false;
         }
        if(eval(lTmwinje*1) > Number(vMoneyXynd))
        {
             alert(overCredit + vMoneyXynd);// "下注金额不可大於信用馀额：";
             return false;
        }
         if(document.getElementById(vButDataGo).value =="over")
        {//用来防范，连续点击产生的事件
             
             alert(ldataload);//"下注正在进行……!!"
             return false;
        }
        if (window.confirm(lButMessagebox) == false )//lButMessagebox = "您是否确认下注！！";
        {
            return false;
        }
        document.getElementById(vButDataGo).value="over";
        return true;
    }




    function SubChkdz(vTmwinje,vMoneyDc,vMoneyDz,vMoneyDd)//单号金额检查
    {
        var lTmwinje = vTmwinje ;
        if(Number(lTmwinje) > Number(vMoneyDz))
        {
             alert(overBetLimit + vMoneyDz  );//"下注金额不可大於单号限额：";
             return false;
         }
         
        if(Number(lTmwinje) > Number(vMoneyDc))
        {
             alert(overDcLimit  + vMoneyDc  );//"下注金额不可大於单注限额：";
             return false;
         }
         
        if(Number(lTmwinje) < Number(vMoneyDd))
        {
             alert(underMinStake + vMoneyDd  );//""下注金额不可小於最低下注金额：";
             return false;
         }
         
         
         return true;
    }
    function SetValue(vClass,vNoValue,vTmNoCap,vTmPlCap )//SubData()//提交数据,进行组合检查,vMoneyDc,vMoneyDz,vMoneyDd
    {
        var arrNo = vNoValue.split(".");
        var lquerstr = "";
        var lMoneySum =0;

        for (var i = 0 ; i < (arrNo.length ); i++){
           if (arrNo[i] != ""){

                var  lSelectNo =vTmNoCap + arrNo[i];
                if (Number(document.getElementById(lSelectNo).value)>=1){
                    var  lSelectPl =vTmPlCap + arrNo[i];
                    if(isNaN(document.getElementById(lSelectPl).innerHTML) == true){
                        alert( overTmStop + arrNo[i] );
                        document.getElementById(lSelectNo).focus();
                        return ["ChkFalse",0];
                    }		                    
                    if (!SubChkdz(document.getElementById(lSelectNo).value,document.getElementById("LabDc" + vClass).innerHTML,document.getElementById("LabDz" + vClass).innerHTML,document.getElementById("LabDd" + vClass).innerHTML)){
                        document.getElementById(lSelectNo).focus();
                        return ["ChkFalse",0];
                    }
                    lquerstr = lquerstr +  arrNo[i] + "$" + String(  Number(document.getElementById(lSelectNo).value)) + ";"
                    lMoneySum = lMoneySum  + Number(document.getElementById(lSelectNo).value) ;
                }
            }
        }
        
        if (lquerstr == "" ){
            return ["",0];
         }
         else{
            if (!SubClassChk(String(lMoneySum),document.getElementById("LabDx" + vClass).innerHTML )){
                return ["ChkFalse",0];
            }
            return  [vClass + "@" +  lquerstr + "#",lMoneySum];
        }
    }
    
   function GetValueStrII(vClass,vNoFrom ,vNoTo,vTmNoCap,vTmPlCap  )//SubData()//提交数据,进行组合检查
    {//检查二项，单项，单注(次）
      
        var lquerstr = "";
        var lMoneySum =0;
        for (var i = vNoFrom ; i <= (vNoTo  ); i++){
                var  lSelectNo =vTmNoCap + String( i );
                if (Number(document.getElementById(lSelectNo).value) >= 1){
                    var  lSelectPl =vTmPlCap + String( i );
                    if(isNaN(document.getElementById(lSelectPl).innerHTML) == true){
                        alert( overTmStop + i );
                        document.getElementById(lSelectNo).focus();
                        return ["ChkFalse",0];
                    }		 
                    if (!SubChkdz(document.getElementById(lSelectNo).value,
                        document.getElementById("LabDz" + vClass).innerHTML ,
                        document.getElementById("LabDz" + vClass).innerHTML ,
                        document.getElementById("LabDd" + vClass).innerHTML )){
                        return ["ChkFalse",0];
                    }
                    lMoneySum = lMoneySum  + Number(document.getElementById(lSelectNo).value) ;
                    lquerstr = lquerstr +  String( i ) + "$" + String(  Number(document.getElementById(lSelectNo).value)) + ";"
                } 
        }
        if (lquerstr == "" ){
            return ["",0];
         }
         else{
//	                alert( "LabDx" + vClass + document.getElementById("LabDx" + vClass).innerHTML );  // "下注金额仅能输入数字！";
            if (!SubClassChk(String(lMoneySum),document.getElementById("LabDx" + vClass).innerHTML )){
                return ["ChkFalse",0];
            }
            return  [vClass + "@" +  lquerstr + "#",lMoneySum]; 
        }
    }
    
    
    function SetValueIIOnly(vClass,vNoValue,vTmNoCap,vTmPlCap,vCheckCation )//SubData()//提交数据,进行组合检查,vMoneyDc,vMoneyDz,vMoneyDd ,
    {
        var arrNo = vNoValue.split(".");
        var lquerstr = "";
        var lMoneySum =0;

            var j =arrNo.length; 
            if (j>51)
            {
                alert("每次最多选择50号," + "请分开下单!");
                return ["ChkFalse",0];
            }
            
        for (var i = 0 ; i < (arrNo.length ); i++){
           if (arrNo[i] != ""){

                var  lSelectNo =vTmNoCap + arrNo[i];
                if (Number(document.getElementById(lSelectNo).value)>=1){//下注金额
                    if (vTmPlCap != "")
                    {//赔率标检存在需检查赔率
                        var  lSelectPl =vTmPlCap + arrNo[i]; 
                        if(isNaN(document.getElementById(lSelectPl).innerHTML) == true){
                            alert( overTmStop + arrNo[i] );//赔率 不为数字,跳过
                            document.getElementById(lSelectNo).focus();
                            return ["ChkFalse",0];
                        }
                    }		                    
                    if (!SubChkdz(document.getElementById(lSelectNo).value,
                        document.getElementById("LabDz" + vCheckCation).innerHTML,
                        document.getElementById("LabDz" + vCheckCation).innerHTML,
                        document.getElementById("LabDd" + vCheckCation).innerHTML)){
                        document.getElementById(lSelectNo).focus();
                        return ["ChkFalse",0];
                    }
                    lquerstr = lquerstr +  arrNo[i] + "$" + String(  Number(document.getElementById(lSelectNo).value)) + ";"
                    lMoneySum = lMoneySum  + Number(document.getElementById(lSelectNo).value) ;
                }
            }
        }
        
        if (lquerstr == "" ){
            return ["",0];
         }
         else{
            if (!SubClassChk(String(lMoneySum),document.getElementById("LabDx" + vCheckCation).innerHTML )){
                return ["ChkFalse",0];
            }
            return  [vClass + "@" +  lquerstr + "#",lMoneySum];
        }
    }
    function SetValueIILm(vClass,vChipId,vNoValue,vTmNoCap,vTmCap,vCheckCation )//SubData()//3D P3 组三六 连码提交数据,进行组合检查,vMoneyDc,vMoneyDz,vMoneyDd ,
    {
        var arrNo = vNoValue.split(".");
        var lquerstr = "";
        var lMoneySum =0;

        for (var i = 0 ; i < (arrNo.length ); i++){
           if (arrNo[i] != ""){

                var  lSelectNo =vTmNoCap + arrNo[i];
                var  lSelectCap =vTmCap + arrNo[i]; 
                if (Number(document.getElementById(lSelectNo).value)>=1){//下注金额
	                    
                    if (!SubChkdz(document.getElementById(lSelectNo).value,
                        document.getElementById("LabDz" + vCheckCation).innerHTML,
                        document.getElementById("LabDz" + vCheckCation).innerHTML,
                        document.getElementById("LabDd" + vCheckCation).innerHTML)){
                        document.getElementById(lSelectNo).focus();
                        return ["ChkFalse",0];
                    }
                    lquerstr = lquerstr +  document.getElementById(lSelectCap).innerHTML + "$" + String(  Number(document.getElementById(lSelectNo).value)) + "!"
                    lMoneySum = lMoneySum  + Number(document.getElementById(lSelectNo).value) ;
                }
            }
        }
        
        if (lquerstr == "" ){
            return ["",0];
         }
         else{
            if (!SubClassChk(String(lMoneySum),document.getElementById("LabDx" + vCheckCation).innerHTML )){
                return ["ChkFalse",0];
            }
            return  [vClass + "@" + vChipId + "@" +  lquerstr + "#",lMoneySum];
        }
    }
    function Sum_Chip_Money( vNoValue,vTmNoCap  )////注单金额合计
    {
        var arrNo = vNoValue.split("."); 
        var lMoneySum =0;

        for (var i = 0 ; i < (arrNo.length ); i++){
           if (arrNo[i] != ""){

                var  lSelectNo =vTmNoCap + arrNo[i];
                if (Number(document.getElementById(lSelectNo).value)>=1){
                     
                    lMoneySum = lMoneySum  + Number(document.getElementById(lSelectNo).value) ;
                }
            }
        }
            return  lMoneySum;
    }
    function Sum_Win_Money( vNoValue,vTmNoCap,vTmPlCap,vCheckCation )//可赢金额合计
    {
        var arrNo = vNoValue.split("."); 
        var lMoneySum =0;

        for (var i = 0 ; i < (arrNo.length ); i++){
           if (arrNo[i] != ""){

                var  lSelectNo =vTmNoCap + arrNo[i]; 
                if (Number(document.getElementById(lSelectNo).value)>=1){
                    var  lSelectPl =vTmPlCap + arrNo[i]; 
                    
                    if (isNaN(document.getElementById(lSelectPl).innerHTML) != true){ 
                        lMoneySum = lMoneySum  + Number(document.getElementById( lSelectPl ).innerHTML) * Number(document.getElementById( lSelectNo ).value) ;
                    }
                    
                }
            }
        }
        
        return  lMoneySum;
    }