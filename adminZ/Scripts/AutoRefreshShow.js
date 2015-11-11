// JScript 文件
    var gTime="";

    function AutoRefShow(vTime,vlocation)
    {

         gTime=vTime;
         if (gTime == "" || gTime == -1)
         {
            gTime= -1;
            document.getElementById('retime').value =gTime;
            document.getElementById('LabReftime').innerHTML ="";
          }
          else
          {
             document.getElementById('retime').value =gTime;
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