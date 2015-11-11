<%@ page language="C#" autoeventwireup="true" inherits="member_app_Select_lt_sub, App_Web_vwupdd6k" enableEventValidation="false" %>

<html>
<head runat="server">
    <title></title>
    
	<script language="JavaScript" type="text/javascript" >


    var gTime = '11053';
    gTime =Number("<% =mStopTime %>");
	var mUserId ;
	var mUserXynd  ;
    var mMoneyName  ;//使用者币种
    var mtmwinno;
    var mTimeInfo ;//时钟信息
    var mtmwinName;
    function countdown(){
        
        ChanageInfo();
        if(gTime < 1)
        {
            mTimeInfo = '已封盘 ';

            gTime =Number("<% =mStopTime %>");
            setTimeout("this.location.reload()",10*1000);
            
        }else
        {
            if( gTime < 1000 && gTime > 0){
                mTimeInfo = '即将封盘 '+ '倒数: '+gTime + '秒';
	            gTime --;
	            setTimeout("countdown()","1000");
//			            alert(gTime + "dd");
            }
            else
            {

                mTimeInfo ='';
                gTime =Number("<% =mStopTime %>");
                setTimeout("this.location.reload()",60*1000);
//	                    alert(gTime);
//	                    setTimeout("countdown()","60000");
            }
            
        }
        parent.InfoShow(mTimeInfo,mUserId,mUserXynd,mMoneyName,mMessage,mtmwinName);
        
    }
    function ChanageInfo(){

	    mUserId = "<% =mUserId %>"  ;
	    mUserXynd = "<% =mUserXynd %>"  ;
        mMoneyName = "<% =mMoneyName %>"  ;//使用者币种
        mMessage = "<% =mMessage %>" ; 
        mtmwinno = "<% =mtmwinno %>" ;
        mtmwinName  = "<% =mtmwinName %>" ;
        
    }
	</script>
</head>
<body onload="countdown();">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

