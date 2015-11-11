    function JsFunChipPlShow( vTmnoPl  )
    {
//        alert(vTmnoLabel);
//        alert(vTmnoPl );
        
//        var arrTmnoLabel = vTmnoLabel.split(";");
        var arrTmnoPl = vTmnoPl.split(";");
        for (var i = 0 ; i < (arrTmnoPl.length - 1); i++){
            ChipShow(arrTmnoPl[i]);
            
        }
        
    }
    function ChipShow(vTmnoPlStr) {
    
        try{
            var arrTmnoPl = vTmnoPlStr.split("/");
            var lTmnoLab =arrTmnoPl[0];
            var lTmnoPl = arrTmnoPl[1];
            var lTmnoPlB = arrTmnoPl[2];
            
            if (document.getElementById( "Lab" + lTmnoLab)  ==   null)
            {
                return ;
            }
            
    //        alert( "Lab" + lTmnoLab );
    //        alert( document.getElementById( "Lab" + lTmnoLab ).innerHTML );
            if ( lTmnoPl == 0 ){
            
                document.getElementById( "Txt" + lTmnoLab ).disabled = "disabled";
                document.getElementById( "Lab" + lTmnoLab ).className = "Show_PlStop";
                document.getElementById( "Lab" + lTmnoLab ).innerHTML = "封";
                
            }else{
                if (document.getElementById( "Lab" + lTmnoLab ).innerHTML != lTmnoPl){
                
                    document.getElementById( "Lab" + lTmnoLab ).className = "Show_Pl_Chg";
                }
                
                document.getElementById( "Lab" + lTmnoLab ).innerHTML = lTmnoPl;
                document.getElementById( "Txt" + lTmnoLab ).disabled = "";
                
            }
            if (document.getElementById( "Lab" + lTmnoLab + "B")  !=   null)//高次陪率
            {
                if (document.getElementById( "Lab" + lTmnoLab + "B" ).innerHTML != lTmnoPlB){
                
                    document.getElementById( "Lab" + lTmnoLab ).className = "Show_Pl_Chg";
                }
                document.getElementById( "Lab" + lTmnoLab + "B" ).innerHTML = lTmnoPlB;
            }
            
        }
        catch(err){
            txt="此页面存在一个错误。\n\n"
            txt+="错误描述: " + err.description + "--"+ "\n\n"
            txt+="点击OK继续。\n\n"
            alert(txt)
        }

        
    }
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
//          alert( notNumber );  // "下注金额仅能输入数字！";
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
    function SubChk(vTmwinje,vMoneyXynd )
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
         if(document.getElementById("TxtButData").value =="over")
        {//用来防范，连续点击产生的事件
             
             alert(ldataload);//"下注正在进行……!!"
             return false;
        }
        document.getElementById("TxtButData").value="over";
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
