// JScript 文件

    var gTime="";

    function AutoRefShow(vTime,vlocation)
    {
//            alert(vTime + vlocation);
//        alert(vTime);
         gTime=vTime;
         if (gTime == "" || gTime == -1)
         {
            gTime= -1;
 
            document.getElementById('LabReftime').innerHTML = "";
            document.getElementById('retime').value = gTime;
          }
          else
          { 
             document.getElementById('retime').value = gTime;
            countdown(vlocation);
        }
    }

    function countdown(vlocation)
    {//倒计时
      
        document.getElementById('LabReftime').innerHTML  =gTime;
        
        if(gTime == '0' ) 
        {
	        location='?' + vlocation + 'stoptime=' + document.getElementById('retime').value;

        }else
        {
            if ( gTime>'0')
            {
                setTimeout("countdown(\'" + vlocation + "\')","1000");
               
            }
        }
        gTime --;
    }
