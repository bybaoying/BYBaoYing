<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_ztoday_chip_hotspot_small, App_Web_wtmgu-sw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html" charset="gb2312" />
    <link href="../style/WebSetup_Pl.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/JS_XMLHTTP.js"></script>

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>

    <script language="JavaScript" type="text/javascript">
	    
        

        function onLoad()
        {
            
//             onload="style.pixelWidth=tmSubShow.document.body.scrollWidth;this.style.pixelHeight=tmSubShow.document.body.scrollHeight;"
//             parent.document.getElementById('tmSubShow.style.pixelWidth=document.body.scrollWidth;
//             parent.document.getElementById('tmSubShow.style.pixelHeight=document.body.scrollHeight;
//             alert(document.body.scrollWidth);
//             alert(document.body.scrollHeight);
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
            
            ShowPage();
            return;

        }

        function ShowPage()
        {
            var ltmclassid ="";
            if (document.getElementById('chkall').checked == true){
                ltmclassid = "all";
            }
            else{
                for (var i=0 ; i<12;i++){
                    if (document.getElementById('Chktm'+ String(i)).checked == true){
                        ltmclassid = ltmclassid + document.getElementById('Chktm'+String(i)).value + ".";
                    }
                }
                
                
            }
//            alert(ltmclassid);
	        var locationa='?tmItem=2&tmOrder=2&tmGf=1&tmclassid=' + ltmclassid + '&stoptime=' + document.getElementById('retime').value; 
                
            var url = "ztoday_chip_hotspot_Data.aspx" + locationa ;
            
            var poststr= "" ;
            PostCall(url,poststr);
            return;
        }  
        function CalledBackMessage(vCalledBackMessage)
        {     
            //球号对应波色
             var mTmColo  = new Array ("","r" , "r" , "b" , "b" , "g" , "g" , "r" , "r" , "b" , "b" , 
                        "g" , "r" , "r" , "b" , "b" , "g" , "g" , "r" , "r" , "b" , 
                        "g" , "g" , "r" , "r" , "b" , "b" , "g" , "g" , "r" , "r" , 
                        "b" , "g" , "g" , "r" , "r" , "b" , "b" , "g" , "g" , "r" , 
                        "b" , "b" , "g" , "g" , "r" , "r" , "b" , "b" , "g" );
            var  lTmDataJeSum,lTmFsJeSum ;
            if (vCalledBackMessage.length>0)
            {
                var aryRows = vCalledBackMessage.split(String.fromCharCode(59));
                lTmDataJeSum = aryRows[49].split('/')[0];
                lTmFsJeSum = aryRows[49].split('/')[1];
                for (var iRow=0 ; iRow < aryRows.length-1; iRow++)
                {
                    ChipShow(iRow+1,aryRows[iRow],lTmDataJeSum,lTmFsJeSum,mTmColo);
                }
            }
          document.getElementById('LabChipMoneySum').innerHTML = lTmDataJeSum;
//            TmSumStr();
        } 
        


        

        function ChipShow(viRow,vChipRows,vTmDataJeSum,vTmFsJeSum,vTmColo)
        {
            var aryCols = vChipRows.split('/');
//           
            document.getElementById('TmT' + String(viRow)).innerHTML = aryCols[0];
  
            document.getElementById('LabF' + String(viRow)).innerHTML = aryCols[1];//赔率
            document.getElementById('HLF' + String(viRow)).innerHTML = aryCols[2];//注单金额
            document.getElementById('HLF' + String(viRow)).href="ztoday_chip.aspx?tmnoValue=" + aryCols[0] ;
            document.getElementById('HLF' + String(viRow)).Target="_blank";
            
//            document.getElementById('HLF' + String(viRow)).setAttribute("Target", "_blank");
//            alert(document.getElementById('HLF' + String(viRow)].Target);
            if (Number(aryCols[2]) != 0 )
            {
                document.getElementById('Cje' + String(viRow)).innerHTML =  Math.round( vTmDataJeSum -aryCols[1] * aryCols[2] - vTmFsJeSum);
            }
            else
            {
                document.getElementById('Cje' + String(viRow)).innerHTML = Math.round( vTmDataJeSum -aryCols[1] * aryCols[2] - vTmFsJeSum);
            }
            
            var lcolo = vTmColo[Number(aryCols[0])];
//            lcolo = 'r';
            var r_col='red';
            var b_col='blue';
            var g_col='green';
            var st = document.getElementById('TmT' + String(viRow));
//            alert(vTmColo[1]);
              switch(lcolo){
               case 'r':
                 st.style.color = r_col;
                 break;
               
               case 'g':
                st.style.color = g_col;
                 break;
                
               case 'b':
                st.style.color = b_col;
                 break;
              }


        }   


        function TmSumStr()
        {//吃码金额合计外理
            var ltmclassid ="";
            var ltmje ;
            var ltmcje = 0 ;
            var lCsum =0 ;
            var lZdsum =0 ;
            var lYcsum =0 ;
            for (var i=1 ; i<50;i++){ 
                ltmje = Number(document.getElementById('HLF'+ String(i)).innerHTML)  ;

                    if (ltmje> 0){
                       
                        lZdsum += ltmje;
                        }

            }
//            alert(ltmclassid);
            
            document.getElementById('LabChipMoneySum').innerHTML = String (lZdsum);
        }
            
    </script>

</head>
<body onload="onLoad();" text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <div>
            <table class="title_m_tab_small" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <td class="mem_index_ctrl_line" style="height: 4px">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_bg">
                        <table cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td>
                                    <a class="click_text" onclick="ShowPage();">刷新</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label>
                                    <select class="za_select" id="retime" onchange="ReTimeShow();" name="retime" runat="server">
                                        <option value="-1">不刷新</option>
                                        <option value="20">20 sec</option>
                                        <option value="40">40 sec</option>
                                        <option value="60" selected>60 sec</option>
                                    </select>
                                    &nbsp; &nbsp; &nbsp;&nbsp;
                                    <input id="butOk" type="button" onclick="ShowPage()" value="确定" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line" style="height: 4px">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
                <tr class="mem_index_ctrl_Title">
                    <td>
                        <input id="chkall" type="checkbox" runat="server" />全部
                        <input id="Chktm0" type="checkbox" value="01" runat="server" />特码
                        <input id="Chktm9" type="checkbox" value="41" runat="server" />特B
                        <input id="Chktm1" type="checkbox" value="02" runat="server" />单双
                        <input id="Chktm2" type="checkbox" value="03" runat="server" />大小
                        <input id="Chktm3" type="checkbox" value="04" runat="server" />合单双<br />
                        <input id="Chktm4" type="checkbox" value="15" runat="server" />生肖
                        <input id="Chktm5" type="checkbox" value="20" runat="server" />多肖
                        <input id="Chktm6" type="checkbox" value="14" runat="server" />色波
                        <input id="Chktm7" type="checkbox" value="21" runat="server" />半波
                        <input id="Chktm8" type="checkbox" value="36" runat="server" />五行
                        <input id="Chktm10" type="checkbox" value="22" runat="server" />特头
                        <input id="Chktm11" type="checkbox" value="23" runat="server" />特尾
                        <br />
                    </td>
                </tr>
            </table>
            <table id="table_hr" class="pl_tab_ed" cellspacing="1" cellpadding="0" border="0">
                <tbody>
                    <tr class="ra_listbet_title">
                        <th class="time">
                            號碼</th>
                        <th class="team">
                            賠率</th>
                        <th class="num">
                            註單</th>
                        <th>
                            輸贏</th>
                        <th>
                            號碼</th>
                        <th>
                            賠率</th>
                        <th>
                            註單</th>
                        <th>
                            輸贏</th>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT1">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF1" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF1" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje1" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT2">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF2" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF2" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje2" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT3">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF3" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF3" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje3" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT4">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF4" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF4" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje4" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT5">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF5" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF5" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje5" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT6">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF6" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF6" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje6" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT7">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF7" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF7" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje7" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT8">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF8" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF8" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje8" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT9">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF9" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF9" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje9" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT10">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF10" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF10" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje10" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT11">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF11" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF11" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje11" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT12">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF12" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF12" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje12" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT13">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF13" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF13" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje13" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT14">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF14" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF14" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje14" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT15">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF15" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF15" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje15" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT16">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF16" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF16" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje16" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT17">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF17" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF17" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje17" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT18">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF18" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF18" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje18" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT19">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF19" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF19" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje19" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT20">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF20" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF20" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje20" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT21">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF21" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF21" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje21" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT22">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF22" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF22" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje22" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT23">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF23" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF23" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje23" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT24">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF24" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF24" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje24" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT25">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF25" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF25" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje25" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT26">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF26" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF26" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje26" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT27">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF27" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF27" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje27" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT28">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF28" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF28" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje28" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT29">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF29" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF29" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje29" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT30">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF30" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF30" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje30" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT31">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF31" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF31" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje31" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT32">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF32" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF32" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje32" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT33">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF33" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF33" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje33" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT34">
                        </td>
                        <td align="middle">
                            <asp:Label class="show_Pl" ID="LabF34" runat="server"></asp:Label></td>
                        <td align="middle">
                            <asp:HyperLink ID="HLF34" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td align="middle">
                            <asp:Label ID="Cje34" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT35">
                        </td>
                        <td id="Td52" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF35" runat="server"></asp:Label></td>
                        <td id="Td53" runat="server" align="middle">
                            <asp:HyperLink ID="HLF35" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td54" runat="server" align="middle">
                            <asp:Label ID="Cje35" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT36">
                        </td>
                        <td id="Td55" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF36" runat="server"></asp:Label></td>
                        <td id="Td56" runat="server" align="middle">
                            <asp:HyperLink ID="HLF36" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td57" runat="server" align="middle">
                            <asp:Label ID="Cje36" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT37">
                        </td>
                        <td id="Td58" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF37" runat="server"></asp:Label></td>
                        <td id="Td59" runat="server" align="middle">
                            <asp:HyperLink ID="HLF37" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td60" runat="server" align="middle">
                            <asp:Label ID="Cje37" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT38">
                        </td>
                        <td id="Td61" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF38" runat="server"></asp:Label></td>
                        <td id="Td62" runat="server" align="middle">
                            <asp:HyperLink ID="HLF38" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td63" runat="server" align="middle">
                            <asp:Label ID="Cje38" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT39">
                        </td>
                        <td id="Td64" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF39" runat="server"></asp:Label></td>
                        <td id="Td65" runat="server" align="middle">
                            <asp:HyperLink ID="HLF39" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td66" runat="server" align="middle">
                            <asp:Label ID="Cje39" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT40">
                        </td>
                        <td id="Td67" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF40" runat="server"></asp:Label></td>
                        <td id="Td68" runat="server" align="middle">
                            <asp:HyperLink ID="HLF40" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td69" runat="server" align="middle">
                            <asp:Label ID="Cje40" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td id="Td1" runat="server" class="Td_Title_Num">
                        </td>
                        <td id="Td2" runat="server" align="middle">
                        </td>
                        <td id="Td3" runat="server" align="middle">
                        </td>
                        <td id="Td4" runat="server" align="middle">
                        </td>
                        <td id="Td5" runat="server" class="Td_Title_Num">
                        </td>
                        <td id="Td6" runat="server" align="middle">
                        </td>
                        <td id="Td7" runat="server" align="middle">
                        </td>
                        <td id="Td8" runat="server" align="middle">
                        </td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT41">
                        </td>
                        <td id="Td70" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF41" runat="server"></asp:Label></td>
                        <td id="Td71" runat="server" align="middle">
                            <asp:HyperLink ID="HLF41" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td72" runat="server" align="middle">
                            <asp:Label ID="Cje41" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT42">
                        </td>
                        <td id="Td73" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF42" runat="server"></asp:Label></td>
                        <td id="Td74" runat="server" align="middle">
                            <asp:HyperLink ID="HLF42" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td75" runat="server" align="middle">
                            <asp:Label ID="Cje42" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT43">
                        </td>
                        <td id="Td76" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF43" runat="server"></asp:Label></td>
                        <td id="Td77" runat="server" align="middle">
                            <asp:HyperLink ID="HLF43" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td78" runat="server" align="middle">
                            <asp:Label ID="Cje43" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT44">
                        </td>
                        <td id="Td79" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF44" runat="server"></asp:Label></td>
                        <td id="Td80" runat="server" align="middle">
                            <asp:HyperLink ID="HLF44" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td81" runat="server" align="middle">
                            <asp:Label ID="Cje44" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT45">
                        </td>
                        <td id="Td82" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF45" runat="server"></asp:Label></td>
                        <td id="Td83" runat="server" align="middle">
                            <asp:HyperLink ID="HLF45" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td84" runat="server" align="middle">
                            <asp:Label ID="Cje45" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT46">
                        </td>
                        <td id="Td85" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF46" runat="server"></asp:Label></td>
                        <td id="Td86" runat="server" align="middle">
                            <asp:HyperLink ID="HLF46" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td87" runat="server" align="middle">
                            <asp:Label ID="Cje46" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT47">
                        </td>
                        <td id="Td88" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF47" runat="server"></asp:Label></td>
                        <td id="Td89" runat="server" align="middle">
                            <asp:HyperLink ID="HLF47" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td90" runat="server" align="middle">
                            <asp:Label ID="Cje47" class="show_Pl" runat="server" /></td>
                        <td runat="server" class="Td_Title_Num" id="TmT48">
                        </td>
                        <td id="Td91" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF48" runat="server"></asp:Label></td>
                        <td id="Td92" runat="server" align="middle">
                            <asp:HyperLink ID="HLF48" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td93" runat="server" align="middle">
                            <asp:Label ID="Cje48" class="show_Pl" runat="server" /></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td runat="server" class="Td_Title_Num" id="TmT49">
                        </td>
                        <td id="Td94" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF49" runat="server"></asp:Label></td>
                        <td id="Td95" runat="server" align="middle">
                            <asp:HyperLink ID="HLF49" runat="server" class="show_je" Target="_blank"></asp:HyperLink></td>
                        <td id="Td96" runat="server" align="middle">
                            <asp:Label ID="Cje49" class="show_Pl" runat="server" /></td>
                        <td id="Td97" runat="server" class="Td_Title_Num">
                        </td>
                        <td id="Td98" runat="server" align="middle">
                        </td>
                        <td id="Td99" runat="server" align="middle">
                        </td>
                        <td id="Td100" runat="server" align="middle">
                        </td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseover="light_bar(this,'ovr')" onmouseout="light_bar(this,'out')">
                        <td id="Td101" runat="server" class="Td_Title_Num">
                            &nbsp; &nbsp; &nbsp;
                        </td>
                        <td id="Td102" runat="server" align="middle">
                            <iframe name="update" src="about:blank" width="100" height="100" style="height: 6px; visibility: hidden; width: 19px;"></iframe>
                        </td>
                        <td id="Td9" runat="server" align="middle">
                        </td>
                        <td id="Td10" runat="server" align="middle">
                        </td>
                        <td id="Td11" runat="server" class="Td_Title_Num">
                        </td>
                        <td id="Td12" runat="server" align="middle">
                            总和</td>
                        <td runat="server" align="middle" colspan="2">
                            <asp:HyperLink ID="LabChipMoneySum" runat="server" class="show_je"></asp:HyperLink></td>
                    </tr>
                    <tr bgcolor="#ffffff" onmousedown="light_bar(this,'clk')" onmouseout="light_bar(this,'out')" onmouseover="light_bar(this,'ovr')">
                        <td id="Td15" runat="server" align="middle" colspan="8">
                            特別號統計：按註單合計金額由大到小排序.<br />
                            註單金額包括(特別號A、特別號B)</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
