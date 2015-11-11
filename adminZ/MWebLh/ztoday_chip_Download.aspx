<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_ztoday_chip_Download, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>數據下載</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <style type="text/css">
       TR {
	        FONT-SIZE: 12px; FONT-FAMILY: "Arial"
        }

    </style>
    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>
    <script language="JavaScript" type="text/javascript" src="../Scripts/JS_XMLHTTP.js"></script>
    <script language="javascript" type="text/javascript">
//	    confirm("尊敬的用户，您？")
        var null_col='#ffffff';
        var over_col='#cccccc';
        var click_col='#f0f7f9';//'#aadddd'
        function light_bar(st,act){
            switch(act){
                case 'ovr'://onmouseover 
                    if(st.style.backgroundColor=='rgb(255, 255, 255)' || st.style.backgroundColor=='' || st.style.backgroundColor==null_col )  st.style.backgroundColor=over_col;
                    break;

                case 'out'://onmouseout 
                    if( st.style.backgroundColor=='rgb(204, 204, 204)' || st.style.backgroundColor == over_col )  st.style.backgroundColor=null_col;
                    break;

                case 'clk'://onmousedown

                    if( st.style.backgroundColor=='rgb(240, 247, 249)' || st.style.backgroundColor == click_col ) 
                    {st.style.backgroundColor = over_col;}
                    else {
                    st.style.backgroundColor = click_col; 
                    }
                    break;
            }
        }
        function sLoad()
        {
             ReTimeShow();
	         DownloadChipData();
        }


        function ReTimeShow()
        {
            var lReftime = document.getElementById('retime').value ;//LabReftime
            AutoRefShow(lReftime,"LabReftime");
        }
  
        function RefTimeBack(){
            DownloadChipData(); 
        }
        
        
    
        function dayin(){
            this.location.reload();
        }
        
       function DownloadChipData(){
            
            var url = "ztoday_chip_Download_Data.aspx" ;
            var poststr= "Sysid=" + mChipIdMax ;
//            alert(poststr);
            PostCall(url,poststr);
            return;

        }
        function CalledBackMessage(vCalledBackMessage)
        {     
//            alert(vCalledBackMessage);

            if (vCalledBackMessage.length>0)
            {
                var obj = document.getElementById('TabTbody');
                
                var aryRows = vCalledBackMessage.split(String.fromCharCode(10,13));
                for (var iRow=0 ; iRow<aryRows.length; iRow++)
                {
                    var lStartT =new Date();
                    addRow(obj,aryRows[iRow]);
//                    var lEndT =new Date();
//                    alert(" " +(  lEndT.getTime()-lStartT.getTime()));
                }

//                alert("dkdk" +( lStartT.getTime() -lEndT.getTime()));
                if (iRow !=0)
                {
                    sumNumber ();
                }
            }
        }
        
        var mChipIdMax = "0" ;//当前已下载的注单ID
        var mChipNumer = 0 ;//当前下载注单数
        var mChipMoney = 0 ;//金额 
        function sumNumber ()
        {
            document.getElementById('TxtChipNum').innerHTML  = String(mChipNumer);
            document.getElementById('TxtChipMoney').innerHTML  = String(mChipMoney);
            
            
        }
        var mStartRow = -1;
        var lUserLevelArr = new Array( "A", "B", "C", "D", "E", "F", "G" );
        
        function addRow(obj,aryRow)
        {
            var aryCols = aryRow.split(String.fromCharCode(9));
            mChipIdMax = aryCols[0] ;
            
 
            mChipNumer += 1;
            mChipMoney += Number(aryCols[6]);
            
            var newTr = document.createElement("tr");//添加一行

            newTr.style.backgroundColor = "#ffffff";
            newTr.style.fontSzie = "12px";
            
            newTr.style.textalign = "center";
            newTr.setAttribute("align", "center");
       
            newTr.onmousedown=function(){light_bar(this,'clk');}   
            newTr.onmouseover=function(){light_bar(this,'ovr');}  
            newTr.onmouseout=function(){light_bar(this,'out');}  

 
                  
                var newTd = document.createElement("td");//会员-IP
                newTd.innerHTML =  "" + aryCols[9] +
                            "  <font color='#800000'>" + aryCols[10] +
                            "</FONT><br/>" + aryCols[15] +
                            "";
                newTr.appendChild(newTd);   
//                   会员-IP 下注单号 种类 内容 盘别 退水 金额 成数 
 
                newTd = document.createElement("td");//下注单号
                newTd.innerHTML = "" + aryCols[32] +
                      "  <br><font color='#800000'>" +aryCols[11] +
                      "</FONT>";  
                newTr.appendChild(newTd);   
                var newTd = document.createElement("td");//股东-IP
                newTd.innerHTML =  "" + aryCols[23] +
                            "  <br/><font color='#800000'>" + aryCols[24] +
                            "</FONT>";
                newTr.appendChild(newTd);   
                var newTd = document.createElement("td");//总代-IP
                newTd.innerHTML =  "" + aryCols[26] +
                            "  <br/><font color='#800000'>" + aryCols[27] +
                            "</FONT>";
                newTr.appendChild(newTd);        
                var newTd = document.createElement("td");//代理-IP
                newTd.innerHTML =  "" + aryCols[29] +
                            "  <br/><font color='#800000'>" + aryCols[30] +
                            "</FONT>";
                newTr.appendChild(newTd);           
                newTd = document.createElement("td");//种类
                newTd.innerHTML =aryCols[14];
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//内容
                
                newTd.innerHTML ="<font color='#800000'><B>" + " " + aryCols[5] +
                            "</B> </font> @ <font color='#800000'><B>"
                            + aryCols[7] +
                            " </B></font>";
              
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//盘别

                newTd.innerHTML ="" + lUserLevelArr[aryCols[17]] + "";
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//退水
                newTd.innerHTML =aryCols[8]
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//退水B
                newTd.innerHTML =aryCols[25];
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//退水C
                newTd.innerHTML =aryCols[28];
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//退水D
                newTd.innerHTML =aryCols[31];
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//成数B
                newTd.innerHTML =aryCols[21];
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//成数C
                newTd.innerHTML =aryCols[20];
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//成数D
                newTd.innerHTML =aryCols[19];
                newTr.appendChild(newTd);   
                newTd = document.createElement("td");//金额 
                newTd.innerHTML =aryCols[6];
                newTd.setAttribute("align", "right");
                newTr.appendChild(newTd);
                newTd = document.createElement("td");//返水
                newTd.innerHTML = Math.round(aryCols[6] * aryCols[8])/100;  
                newTd.setAttribute("align", "right");  
                newTr.appendChild(newTd);   
                
                newTd = document.createElement("td");//可蠃
                newTd.innerHTML = Math.round( aryCols[6] * aryCols[7]);
                newTd.setAttribute("align", "right");
                
                
                
                
            newTr.appendChild(newTd);       
            //           alert(newTr.outerHTML);
            if (mStartRow==-1)
            {    
                obj.appendChild(newTr);  
                mStartRow =0
            }
            else
            {

                obj.insertBefore(newTr,obj.childNodes[0]);
            }        
        }
        function addRowa(obj,aryRow)
        {
            var newTr = obj.insertRow(0); //添加一行
            var aryCols = aryRow.split(String.fromCharCode(9));
 
            mChipNumer += 1;
            mChipMoney += Number(aryCols[6]);
            newTr.style.backgroundColor = "#ffffff";
            newTr.style.fontSzie = "12px";
            
            newTr.style.textalign = "center";
            newTr.setAttribute("align", "center");
       
            newTr.onmousedown=function(){light_bar(this,'clk');}   
            newTr.onmouseover=function(){light_bar(this,'ovr');}  
            newTr.onmouseout=function(){light_bar(this,'out');}  

            var newTd = newTr.insertCell();//会员-IP
 
            newTd.innerHTML =  "<td>" + aryCols[9] +
                "-" + aryCols[10] +
                "<br/>" + aryCols[15] +
                "</td>"+"<td>" + aryCols[0] +
                  "  <br>" +aryCols[11] +
                  "</td>";  
                
//            //添加两列//设置列内容和属性
            var newTd = newTr.insertCell();//会员-IP
            newTd.innerHTML =  "" + aryCols[9] +
                "-" + aryCols[10] +
                "<br/>" + aryCols[15] +
                "";
                          
//                   会员-IP 下注单号 种类 内容 盘别 退水 金额 成数 
            mChipIdMax = aryCols[0] ;
            newTd = newTr.insertCell();//下注单号
            newTd.innerHTML = "" + aryCols[0] +
                  "  <br>" +aryCols[11] +
                  "";  
                  
            var newTd = newTr.insertCell();//股东-IP
            newTd.innerHTML =  "" + aryCols[23] +
                        "  <br/>" + aryCols[24] +
                        "";
                        
            var newTd = newTr.insertCell();//总代-IP
            newTd.innerHTML =  "" + aryCols[26] +
                        "  <br/>" + aryCols[27] +
                        "";
                        
            var newTd = newTr.insertCell();//代理-IP
            newTd.innerHTML =  "" + aryCols[29] +
                        "  <br/>" + aryCols[30] +
                        "";
                        
            newTd = newTr.insertCell();//种类
            newTd.innerHTML =aryCols[14];
            
            newTd = newTr.insertCell();//内容
            
            newTd.innerHTML ="<B>" + " " + aryCols[5] +
                        "</B>  @ <B>"
                        + aryCols[7] +
                        " </B>";
          

            newTd = newTr.insertCell();//盘别
            var lUserLevel ="A";
            switch(aryCols[17])
           {
               case '0':
                 lUserLevel ="A";
                 break;
               case '1':
                 lUserLevel ="B";
                 break;
               case '2':
                 lUserLevel ="C";
                 break;
               case '3':
                 lUserLevel ="D";
                break;
               case '4':
                 lUserLevel ="E";
                 break;
               case '5':
                 lUserLevel ="F";
                 break;
               case '6':
                 lUserLevel ="G";
                 break;
               default:
                 lUserLevel ="!";
           }

            newTd.innerHTML ="" + lUserLevel + "";
            
            newTd = newTr.insertCell();//退水
            newTd.innerHTML =aryCols[8]
            
            newTd = newTr.insertCell();//退水B
            newTd.innerHTML =aryCols[25];
            newTd = newTr.insertCell();//退水C
            newTd.innerHTML =aryCols[28];
            newTd = newTr.insertCell();//退水D
            newTd.innerHTML =aryCols[31];
            
            newTd = newTr.insertCell();//成数B
            newTd.innerHTML =aryCols[21];
            newTd = newTr.insertCell();//成数C
            newTd.innerHTML =aryCols[20];
            newTd = newTr.insertCell();//成数D
            newTd.innerHTML =aryCols[19];
            
            newTd = newTr.insertCell();//金额 
            newTd.innerHTML =aryCols[6];
            newTd.setAttribute("align", "right");
            
            newTd = newTr.insertCell();//返水
            newTd.innerHTML = Math.round(aryCols[6] * aryCols[8])/100;  
            newTd.setAttribute("align", "right");  
                        
            newTd = newTr.insertCell();//可蠃
            newTd.innerHTML = Math.round( aryCols[6] * aryCols[7]);
            newTd.setAttribute("align", "right");

 
        }
        var mSave ;
        mSave = false ;
        function SaveText()   
        {   
              //取得id=tb的表格的HTML代码.   
              var   strHTML   =   document.getElementById('TableA').outerHTML;   
              var   winSave   =   window.open();   
              winSave.document.open   ("text/html","gb2312");   
              winSave.document.write   (strHTML);   
              winSave.document.execCommand   ("SaveAs",true,"c:/table.htm");   
              winSave.close();   
              mSave = true ;
        }    

        function LeaveWin(){ 
            if ( mSave == false )
            {
                window.event.returnValue="您请保存数据后再关闭！"; 
          }
          else
          {
                 window.event.returnValue="您确认关闭吗？"; 
            }
        } 
         function keyDown(e)
    {
        e = window.event || e;   
        var k = e.keyCode || e.which;  

        if ((k==46)||(k==8)|| (k>=48 && k<=57)||(k>=96 && k<=105)||(k>=37 && k<=40)||(k==189)) 
        {
            if(str.indexOf('-')!=-1 && (k==189))
            {
                if(window.event)
                {
                    LeaveWin();
//                   window.event.returnValue = false;
                }
                
                else
                {
                    e.preventDefault();//for firefox
                }
            }
        }
        else if((k==190)||(k==110))
        {
            if(window.event)
               LeaveWin();
            else
                e.preventDefault();//for firefox
        }
        else
        {
            if(window.event)
               LeaveWin();

            else
                e.preventDefault();//for firefox
        }
    }
 
//        window.onbeforeunload=LeaveWin;

        window.onbeforeunload=keyDown ;
    </script>
</head>
<body id="saveText" onload="sLoad();" text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; padding-right: 2px; padding-left: 2px; padding-top: 3px;">
        <tbody>
            <tr>
                <td style="background-color: #4694b5; height: 4px;" colspan="2">
                </td>
            </tr>
            <tr style="background-color: #abb9d7; font-size: 12px; font-family: Arial">
                <td width="500">
                    &nbsp;&nbsp;注单數據下載:
                    <input id="Button2" type="button" onclick="SaveText();" value="保存" />
                </td>
                <td style="text-align: right">
                    <strong><a class="click_text" onclick="DownloadChipData();">下載倒數</a>:</strong><asp:Label ID="LabReftime" runat="server"></asp:Label>&nbsp;
                    <select id="retime" runat="server" name="retime" onchange="ReTimeShow();">
                        <option value="-1">不下載</option>
                        <option value="30">30 sec</option>
                        <option value="60">60 sec</option>
                        <option selected="selected" value="60">60 sec</option>
                        <option value="120">120 sec</option>
                        <option value="180">180 sec</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td style="background-color: #4694b5; height: 4px;" colspan="2">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: silver; height: 4px;">
                </td>
            </tr>
        </tbody>
    </table>
    <table id="TableA" cellspacing="1" cellpadding="0" style="width: 100%; padding-right: 2px; padding-left: 2px; padding-top: 3px; background-color: #000000;" border="0">
        <tr style="color: #ffffff; background-color: #990000; text-align: center; height: 15px; font-size: 12px; font-family: Arial;">
            <td style="width: 110px" rowspan="2">
                会员-IP</td>
            <td style="width: 80px" rowspan="2">
                下注单号</td>
            <td style="width: 70px" rowspan="2">
                股东</td>
            <td style="width: 70px" rowspan="2">
                总代</td>
            <td style="width: 70px" rowspan="2">
                代理</td>
            <td style="width: 80px" rowspan="2">
                种类</td>
            <td rowspan="2">
                内容</td>
            <td style="width: 30px" rowspan="2">
                盘别</td>
            <td colspan="4">
                退水</td>
            <td colspan="3">
                成数</td>
            <td style="width: 50px" rowspan="2">
                金额</td>
            <td rowspan="2" style="width: 50px">
                返水</td>
            <td rowspan="2" style="width: 50px">
                可蠃</td>
        </tr>
        <tr style="color: #ffffff; background-color: #990000; text-align: center; height: 15px; font-size: 12px; font-family: Arial;">
            <td style="width: 30px">
                会员</td>
            <td style="width: 30px">
                股东</td>
            <td style="width: 30px">
                总代</td>
            <td style="width: 30px">
                代理</td>
            <td style="width: 30px">
                股东</td>
            <td style="width: 30px">
                总代</td>
            <td style="width: 30px">
                代理</td>
        </tr>
        <tr style="background-color: #dae9f2; text-align: right; height: 20px; font-size: 12px; font-family: Arial">
            <td rowspan="1" style="width: 110px" align="center">
                合计</td>
            <td rowspan="1" style="width: 80px" id="TxtChipNum">
            </td>
            <td rowspan="1" style="width: 70px">
            </td>
            <td rowspan="1" style="width: 70px">
            </td>
            <td rowspan="1" style="width: 70px">
            </td>
            <td rowspan="1" style="width: 80px">
            </td>
            <td rowspan="1">
            </td>
            <td rowspan="1" style="width: 30px">
            </td>
            <td style="width: 30px">
            </td>
            <td style="width: 30px">
            </td>
            <td style="width: 30px">
            </td>
            <td style="width: 30px">
            </td>
            <td style="width: 30px">
            </td>
            <td style="width: 30px">
            </td>
            <td style="width: 30px">
            </td>
            <td rowspan="1" style="width: 50px" id="TxtChipMoney">
            </td>
            <td rowspan="1" style="width: 50px">
            </td>
            <td rowspan="1" style="width: 50px">
            </td>
        </tr>
        <tbody id="TabTbody">
        </tbody>
    </table>
    <div style="font-size: 12px; font-family: Arial">
        請余開盤後打開此窗口，讓新註單能夠即時下載。 封盤後請按[保存]再關閉這個窗口。可以防黑客改單及網絡服務器不能連通情況下做數據查詢的依據!</div>
</body>
</html>

