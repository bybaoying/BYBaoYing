// JScript 文件

 


    var gTime=0;
    var gRefTime=0; 
    var mTimerID ;
    function AutoRefShow(vTime )
    { 
         gTime=vTime;
         gRefTime=vTime;
         if (gTime == 0 || gTime == -1)
         {
            gTime= 0;
            clearTimeout(mTimerID);
//            document.getElementById('retime').value ="-1";
//            document.getElementById('LabReftime').innerHTML ="";
          }
          else
          {
            clearTimeout(mTimerID);
//             document.getElementById('retime').value =gTime;
            countdown();
        }
    }

    function countdown( )
    {//倒计时
      
//        document.getElementById('LabReftime').innerHTML  =gTime;
        
//        alert(gTime);
        if(gTime == 0 ) 
        {
            gTime = gRefTime;
//            alert(gRefTime);
            mTimerID = setTimeout("countdown()","1000");
	        Data_reload();
        }else
        {
            if ( gTime>0)
            {
                mTimerID = setTimeout("countdown()","1000");
               
            }
        }
        gTime --;
    }