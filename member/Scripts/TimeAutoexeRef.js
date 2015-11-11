// JScript 文件

    var gTimeUser=0;
    var gRefTime=0
    var gTimerID=0 ;
    function AutoRefShow(vTimeLong,vLabReftime)
    {
        if (vTimeLong=="")
        {
            vTimeLong= 60
            }
         gTimeUser = vTimeLong;
         gRefTime = vTimeLong;
        
         if (gTimeUser == "" || gTimeUser == -1)
         {
         
            gTimeUser= -1;
            if (vLabReftime !="" && document.getElementById(vLabReftime) != null) {
                document.getElementById(vLabReftime).innerHTML = "";
            }
            if (gTimerID !=0)
            {
                window.clearTimeout(gTimerID);
            }
          }
          else
          {
//             alert("starte:"+ gTimerID);
            if (gTimerID !=0)
            {
                window.clearTimeout(gTimerID);
            }
            countdown(vTimeLong,vLabReftime);
        }
    }

    function countdown(vTimeLong,vLabReftime)
    {//倒计时
//        alert(gTimerID);
        if (vLabReftime !="" && document.getElementById(vLabReftime) != null) {
            document.getElementById(vLabReftime).innerHTML  =String( gTimeUser);
        }
        if (gTimerID !=0)
        {
            window.clearTimeout(gTimerID);
        }
//        alert( typeof(countdown) ==function  );
        if ( gTimeUser > 0) {
//            gTimerID = window.setTimeout("alert('sss');","1000");
            gTimerID = window.setTimeout("  countdown('"+ vTimeLong + "','"+ vLabReftime + "' );","1000");
//            gTimerID = window.setTimeout(" ( typeof(countdown) =='function'  ) ? countdown('"+ vTimeLong + "','"+ vLabReftime + "' ) : alert('end');","5000");
            
            //在FF 中踢线后重新进入，setTimeout 中设置的函数不被置行！
//            gTimerID = window.setTimeout(" ( typeof(countdown) =='function'  ) ? countdown('"+ vTimeLong + "','"+ vLabReftime + "' );","1000");
//            gTimerID = window.setTimeout(" function(){ countdown('"+ vTimeLong + "','"+ vLabReftime + "' )}  ;","1000"); 
//             alert(gTimerID);
            gTimeUser --;
           
        }else {
            AutoRefShow(vTimeLong,vLabReftime);
            
	        RefTimeBack();
        }
        
    }