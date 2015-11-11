<%@ page language="c#" inherits="WebTm.lt_s.sub, App_Web_3mbbw7kj" enableEventValidation="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

    <script language="JavaScript" type="text/javascript">
        var result = new Array();
        var lenb ="<% = mBallLenb %>" ;
        result['0'] ="<% = mBallA %>" ;
        result['1'] = "<% = mBallB %>";
        result['2'] = "<% = mBallC %>";
        result['3'] = "<% = mBallD %>";
        result['4'] = "<% = mBallE %>";
        result['5'] = "<% = mBallF %>";
        result['6'] = "<% = mBall %>";

        var LabShow = "<% = mLabShow %>";
        parent.stop(result,lenb,LabShow);
        function gr()
        {
            
//            if(lenb < '7')
//            {
//                setTimeout("location.reload()",5000);
//            }
        }
    </script>

</head>
<body onload="gr();">
    <p>
        <input onclick="location.reload()" type="button" value="刷新" name="renew" />
    </p>
</body>
</html>
