<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_webstartwin_auto, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>

    <script language="JavaScript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>
    <script language="JavaScript" type="text/javascript" src="../Scripts/JS_XMLHTTP_a.js"></script>
    <script language="javascript" type="text/javascript">
        var mWin_Type= "<% Response.Write(Request.QueryString["type"]); %>"
//        document. response.buffer=false ;
 
        var mGetHttpArr = new  Array(); 
        mGetHttpArr[0] = new  Array(); 
        mGetHttpArr[1] = new  Array(); 
        
        mGetHttpArr[0][0]  = "3D";// 3D
//        mGetHttpArr[0][1]  = "http://kaijiang.zhcw.com/zhcw/inc/3d/3d_index.jsp" ;// 福彩3D
        mGetHttpArr[0][1]  = "http://kaijiang.zhcw.com/kaijiang/zhcw_3d_index.html"// 福彩3D http://kaijiang.zhcw.com/zhcw/inc/3d/3d_index.jsp
        
//        mGetHttpArr[0][1]  = "http://localhost/zhcw_3d_index.aspx" ;
        
        mGetHttpArr[0][2] ="";//提交内容或参数
        mGetHttpArr[0][3] ="福彩3D";
        mGetHttpArr[0][4] ="";//获取的HTML文本
        mGetHttpArr[1][0]  = "P3";// 体彩P3
        mGetHttpArr[1][1]  = "http://www.lottery.gov.cn/lottery/draws/Global.aspx";// 体彩P3
        mGetHttpArr[1][2] =""; //提交内容或参数
        mGetHttpArr[1][3] ="体彩P3"; 
        mGetHttpArr[1][4] ="";//获取的HTML文本
        var mHttpType= "";//3D P3 
        var mHttpUrl= "";
        var mHttpValue= "";//提交内容或参数
        var mHttpGetText= "";//获取的HTML文本
        function load(){
            GetHttpData( );
            AutoRefShow(document.getElementById("retime").value,"LabReftime");
        }
        function RefTime(){
            AutoRefShow(document.getElementById("retime").value,"LabReftime");
        }       
        function RefTimeBack(){
            GetHttpData( );
        }

            
        function GetHttpData( ){ 
            var lIndex = 0;
        
            
            switch(mWin_Type.toUpperCase()){
                case '3D':  
                    lIndex = 0;
                    break;

                case 'P3':
                    lIndex = 1;
                    break;
                case 'exit':
                    return;
            }
             
            
            HttpData(lIndex);
 
                        
            
        }
        function HttpData(vIndex){ 
            var i = vIndex
            mHttpType= mGetHttpArr[i][0];
            mHttpUrl = mGetHttpArr[i][1];
            mHttpValue=mGetHttpArr[i][2] ;//"issue=2011254" ;
//            mHttpGetText=mGetHttpArr[i][4];
            document.getElementById("win_name").innerHTML =mGetHttpArr[i][3];//名称
            
            var oDiv = document.getElementById("HttpShow"); 
 
            oDiv.innerHTML = "";
              switch(mHttpType){
                case '3D': 
                    
                    mHttpValue= '&rdom='+Math.random();
                    GetCall(mHttpUrl,mHttpValue); //http://kaijiang.zhcw.com/zhcw/inc/3d/3d_index.jsp 由于这个提交，返回另一个址地在IE不刷新，所以只能代随机数
                    break;

                case 'P3':
                    PostCall(mHttpUrl,mHttpValue);//可以支持刷新的
                    break;
                case 'exit':
                    return;
            }
            
        }
 

         function CalledBackMessage(vCalledBackMessage)
        {     
            

            if (vCalledBackMessage.length=0)
            {
                return;
            }
//            alert(vCalledBackMessage);

            switch(mHttpType){
                case '3D': 
                    
                    JieXiHtml_3D(vCalledBackMessage);
                    break;

                case 'P3':
                    JieXiHtml_P3(vCalledBackMessage);
                    break;
                case 'exit':
                    return;
            }
            
  
        }
        function JieXiHtml_P3(vHtmlStr)
        {
            var lHtmlStr= vHtmlStr;
//            alert(lHtmlStr);
            var lLength_Str = lHtmlStr.length;
            var lStart_i = lHtmlStr.indexOf("<BODY");
            var lEnd_i = lHtmlStr.lastIndexOf("</BODY>");  
//            alert(String( lStart_i) +"|" + String( lEnd_i));
            lHtmlStr = lHtmlStr.substring(lStart_i,lEnd_i);

            
            var lStart_i = lHtmlStr.indexOf("<TABLE");
            var lEnd_i = lHtmlStr.lastIndexOf("</TABLE>");  
            lHtmlStr = lHtmlStr.substring(lStart_i,lEnd_i);
            
            var lStart_i = lHtmlStr.indexOf("<TABLE");
            var lEnd_i = lHtmlStr.lastIndexOf("</TABLE>");  
            lHtmlStr = lHtmlStr.substring(lStart_i,lEnd_i);
            
            var oDiv = document.getElementById("HttpShow"); 
//            if (mHttpGetText!=lHtmlStr)
//            {
                mHttpGetText=lHtmlStr;
                oDiv.innerHTML = lHtmlStr;
                JieXiHtml_P3_member( oDiv  );
//            }
            

        }
        function JieXiHtml_3D(vHtmlStr)
        {
            var lHtmlStr= vHtmlStr;
//            alert(lHtmlStr);
            var lLength_Str = lHtmlStr.length;
            var lStart_i = lHtmlStr.indexOf("<form");
            var lEnd_i = lHtmlStr.lastIndexOf("</form>");  
//            alert(String( lStart_i) +"|" + String( lEnd_i));
            lHtmlStr = lHtmlStr.substring(lStart_i,lEnd_i);

            
            var lStart_i = lHtmlStr.indexOf("<div class=\"L\">");
            var lEnd_i = lHtmlStr.lastIndexOf("</div>");  
            lHtmlStr = lHtmlStr.substring(lStart_i,lEnd_i);
            var oDiv = document.getElementById("HttpShow"); 
 

//            clipboardData.setData('Text',lHtmlStr);
            

//            if (mHttpGetText!=lHtmlStr)
//            {
                mHttpGetText=lHtmlStr;
                oDiv.innerHTML = lHtmlStr;
                JieXiHtml_3D_member(oDiv);
//            }
        }
        
        function JieXiHtml_3D_member(vDiv)
        {
            
//            
            
            var lWin_Number =vDiv.getElementsByTagName("select")[0].value; //期数
     
            var lWin_No_li = vDiv.getElementsByTagName("li");
//            alert(lWin_No_li[3].innerHTML );
            var lWin_No_arr =new Array();
            lWin_No_arr[0] = lWin_No_li[1].innerHTML;
            lWin_No_arr[1] = lWin_No_li[2].innerHTML;
            lWin_No_arr[2] = lWin_No_li[3].innerHTML;

            var lWin_No = lWin_No_arr.join(",");//中奖号码：
             document.getElementById("win_number").innerHTML =lWin_Number;//期数
            document.getElementById("win_no").innerHTML =lWin_No; 
//            alert(lWin_No);//中奖号码：
//             var lWin_No_li = vDiv.getElementsByTagName("span")[1];//开奖日期：</strong>2011-09-16
//            alert(lWin_No_li.innerHTML );
//            alert(vDiv.getElementById("issue").value); //期数
//            var lHtmlStr= vHtmlStr;
//            var lStart_i = lHtmlStr.indexOf("开奖日期");
//            var lWin_Date = lHtmlStr.substr(lStart_i);//开奖日期：</strong>2011-09-16</span>
//            
//            var lEnd_i  = lWin_Date.indexOf("</span>");
//            lWin_Date = lWin_Date.substring(1,lEnd_i);//开奖日期：</strong>2011-09-16
//            
//            lStart_i  = lWin_Date.indexOf(">");
//            lWin_Date = lWin_Date.substr(lStart_i+1);//开奖日期：</strong>2011-09-16          
////            alert(lWin_Date);//开奖日期
//            
//            var lHtmlStr= vHtmlStr;
//            var lStart_i = lHtmlStr.indexOf("中奖号码");
//            var lWin_No = lHtmlStr.substr(lStart_i);//中奖号码：</li><li class="blue">8</li> <li class="blue">0</li> <li class="blue">8</li> </ul>
//            
//            var lEnd_i  = lWin_No.indexOf("</ul>");
//            lWin_No = lWin_No.substring(1,lEnd_i);//中奖号码：</li><li class="blue">8</li> <li class="blue">0</li> <li class="blue">8</li> 
//            
//            lStart_i  = lWin_No.indexOf(">");
//            lWin_No = lWin_No.substr(lStart_i+1);//<li class="blue">8</li> <li class="blue">0</li> <li class="blue">8</li>           
//            
//            var lWin_No_arr = lWin_No.split("</li>");
//            lWin_No_arr[0] = lWin_No_arr[0].substr(lWin_No_arr[0].length-1);
//            lWin_No_arr[1] = lWin_No_arr[1].substr(lWin_No_arr[1].length-1);
//            lWin_No_arr[2] = lWin_No_arr[2].substr(lWin_No_arr[2].length-1);
//            alert(lWin_No_arr);//中奖号码
            
        }
        function JieXiHtml_P3_member(vDiv)
        {
            var lTable = vDiv.getElementsByTagName("TABLE")[1];
            var lWin_Number =lTable.rows[3].cells.item(1).innerHTML; //期数
//            alert(lWin_Number ); //期数
            var lTable =lTable.rows[3].cells.item(2).getElementsByTagName("TABLE")[0];
            
            var lWin_No_arr =new Array();
            lWin_No_arr[0] = lTable.rows[0].cells.item(0).innerHTML;
            lWin_No_arr[1] = lTable.rows[0].cells.item(2).innerHTML;
            lWin_No_arr[2] = lTable.rows[0].cells.item(4).innerHTML;

            var lWin_No = lWin_No_arr.join(",");//中奖号码：
//            alert(lWin_No);//中奖号码：
//            clipboardData.setData('Text',lHtmlStr);
             document.getElementById("win_number").innerHTML =lWin_Number;//期数
            document.getElementById("win_no").innerHTML =lWin_No;     
            
        }

        

    </script>

</head>
<body onload ="load();">
    <form id="form1" runat="server">
        <div>
            <input id="Button1" type="button" value="button" onclick="JavaScript:GetHttpData();" /><br />
            <br />
            &nbsp;<table>
                <tr>
                    <td style="height: 20px">
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px">
                        下載倒數:<span ID="LabReftime" runat="server"></span>&nbsp;
                        <select id="retime" runat="server" name="retime" onchange="RefTime();">
                            <option value="-1">不下載</option>
                            <option value="5">5 sec</option>
                            <option value="30">30 sec</option>
                            <option value="60">60 sec</option>
                            <option selected="selected" value="60">60 sec</option>
                            <option value="120">120 sec</option>
                            <option value="180">180 sec</option>
                        </select>
                        时间:<span ID="LabDatetime" runat="server"></span></td>
                </tr>
                <tr>
                    <td style="height: 20px">
                        我的 名称：<span id="labwin_name" runat="server"></span >  期数：<span id="labwin_number" runat="server"></span>  开奖号：<span id="labwin_no" runat="server"></span>
                    </td>
                </tr>
                <tr>
                    <td >
                       获取 名称：<span id="win_name"></span >  期数：<span id="win_number"></span>  开奖号：<span id="win_no"></span></td>
                </tr>
                <tr>
                    <td >
                        <div id="HttpShow" style="border-right: 1px solid; border-top: 1px solid; overflow: scroll; border-left: 1px solid; width: 400px; border-bottom: 1px solid; height: 200px">
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

