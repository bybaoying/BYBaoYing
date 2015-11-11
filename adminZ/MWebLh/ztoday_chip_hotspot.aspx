<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_ztoday_chip_hotspot, App_Web_wtmgu-sw" enableEventValidation="false" %>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
xmlns="http://www.w3.org/1999/xhtml" --%>
<html>
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html" charset="gb2312"/>
    <link href="../style/WebChip_Sub.css" type="text/css" rel="stylesheet"/>

    <script language="JavaScript" type="text/javascript" src="../Scripts/JS_XMLHTTP.js"></script>

    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>

    <script language="JavaScript" type="text/javascript">
	

        function onLoad()
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
                for (var i=0 ; i<10;i++){
                    if (document.getElementById('Chktm'+ String(i)).checked == true){
                        ltmclassid = ltmclassid + document.getElementById('Chktm'+String(i)).value + ".";
                    }
                }
                
                
            }
//            alert(ltmclassid);
	        var locationa='?tmItem=' + document.getElementById('Select_Item').value + 
                '&tmOrder=' + document.getElementById('Select_Order').value +
                '&tmGf=' + document.getElementById('Select_Gf').value +
                '&tmclassid=' + ltmclassid + '&stoptime=' + document.getElementById('retime').value; 
                
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

//            TmInMoney();
            TmSumStr();
        } 
        
        function TmInMoney()
        {     
            var lTmInMoney = "<% Response.Write( mTmInMoney); %>";
            var lAryInMoney = lTmInMoney.split('.');

            
            for (var iRow=0 ; iRow < lAryInMoney.length-1; iRow++)
            {
                var ltm = lAryInMoney[iRow].split('/');
                
                
                document.getElementById('TxtChipMoney' +String( mTmNoKey[Number(ltm[0])]) ).innerHTML = ltm[1];
            }
            
        } 
        var mTmNoKey =new Array(50) ;//存特码号从1-49 对应的控件INDEX 为显示吃码金额所用
        

        function ChipShow(viRow,vChipRows,vTmDataJeSum,vTmFsJeSum,vTmColo)
        {
            var aryCols = vChipRows.split('/');
//           
            document.getElementById('TmT' + String(viRow)).innerHTML = aryCols[0];//号码
            mTmNoKey[Number(aryCols[0])] = viRow;
            document.getElementById('LabF' + String(viRow)).innerHTML = aryCols[1];// 赔率
            document.getElementById('HLF' + String(viRow)).innerHTML = aryCols[2];//  注单
            document.getElementById('HLF' + String(viRow)).href="ztoday_chip.aspx?tmnoValue=" + aryCols[0] ;
            document.getElementById('LabPao' + String(viRow)).innerHTML = aryCols[4];//补单金额
            //aryCols[3] //返水
            var lChipWinMoney = 0;
            
            
            lChipWinMoney =  Math.round( vTmDataJeSum - aryCols[1] * (aryCols[2]-aryCols[4]) - vTmFsJeSum);//輸贏值 计算 算整数
            document.getElementById('labWinJe' + String(viRow)).innerHTML =  lChipWinMoney;//輸贏值
            document.getElementById('TxtChipMoney'+ String(viRow)).value="";//补单金额清空            
            if (lChipWinMoney <= -document.getElementById("TxtMaxMoney").value)//輸贏 小于 最大负数 
            {
                document.getElementById('labWinJe' + String(viRow)).className = "show_WinJe_Red";
                document.getElementById('TxtChipMoney' + String(viRow)).value = -Math.round((lChipWinMoney + Number( document.getElementById("TxtMaxMoney").value )) /aryCols[1]);//应补金额;
                
            }
            else
            {
//                document.getElementById('labWinJe' + String(viRow)).className = "show_WinJe_Red";
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
            var lChipSupplemenStr ="";//补单字符串
            var lPaoMoney =0 ; 
            var lPaoSum =0 ; 
            for (var i=1 ; i<50;i++){ 
                lPaoMoney = document.getElementById('LabPao'+String(i)).innerHTML ;
                lPaoSum = lPaoSum +  Number(lPaoMoney) ;
                    if (lPaoMoney> 0){;
                        lChipSupplemenStr = lChipSupplemenStr + document.getElementById('TmT'+String(i)).innerHTML + 
                            document.getElementById('TxtSpMoney').value +  lPaoMoney  + document.getElementById('TxtSpChip').value;//抛单字符串
//                        lZdsum += ltmje;
//                        lYcsum += Number(document.getElementById('TxtChipMoney'+ String(i)).value);
                    }
//                    else{
//                        lYcsum += Number(document.getElementById('HLF'+ String(i)).innerHTML);
//                    }
            }
//            alert(lPaoSum);
            document.getElementById('TxtTm').value = lChipSupplemenStr ;//抛单字符串
            
            document.getElementById('LabPaoSum').innerHTML = String(lPaoSum);
            
//            document.getElementById('HLYcsum').innerHTML = String (lYcsum);
//            document.getElementById('HLZdsum').innerHTML = String (lZdsum);
        }
        function SubData()
        {
            var mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById("WagerTxt").value = "" ;
            var lWagerStr= "",lSetValue = "";
            
            lSetValue = SetValue("01","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49","TxtChipMoney","Lab")
            if (lSetValue[0] == "ChkFalse"){
                return false;
            }
            mChipMoneySum = mChipMoneySum +　lSetValue[1];
            lWagerStr = lWagerStr + lSetValue[0];
            
         
            
            if (!SubChk(String(mChipMoneySum),document.getElementById("Labxynd").innerHTML,"TxtButData")){
                return false;
            }
                
            document.getElementById("WagerTxt").value = lWagerStr ;
                return true;
        }
    function SetValue(vClass,vNoValue,vTmNoCap,vTmPlCap )//SubData()//提交数据,进行组合检查,vMoneyDc,vMoneyDz,vMoneyDd
    {
        var arrNo = vNoValue.split(".");
        var lquerstr = "";
        var lMoneySum =0;

        for (var i = 0 ; i < (arrNo.length ); i++){
           if (arrNo[i] != ""){

                var  lSelectNo =vTmNoCap + arrNo[i];
                if (Number(document.getElementById(lSelectNo).value)>=1){
//                    var  lSelectPl =vTmPlCap + arrNo[i];
//                    if(isNaN(document.getElementById(lSelectPl).innerHTML) == true){
//                        alert( overTmStop + arrNo[i] );
//                        document.getElementById(lSelectNo).focus();
//                        return ["ChkFalse",0];
//                    }
//                    if (!SubChkdz(document.getElementById(lSelectNo).value,document.getElementById("LabDc" + vClass).innerHTML,document.getElementById("LabDz" + vClass).innerHTML,document.getElementById("LabDd" + vClass).innerHTML)){
//                        document.getElementById(lSelectNo).focus();
//                        return ["ChkFalse",0];
//                    }
                    
                    
                    
                    lquerstr = lquerstr + Number( document.getElementById('TmT' + arrNo[i]).innerHTML) + "$" + String(  Number(document.getElementById(lSelectNo).value)) + ";"
                    lMoneySum = lMoneySum  + Number(document.getElementById(lSelectNo).value) ;
                }
            }
        }
        
        if (lquerstr == "" ){
            return ["",0];
         }
         else{
//            if (!SubClassChk(String(lMoneySum),document.getElementById("LabDx" + vClass).innerHTML )){
//                return ["ChkFalse",0];
//            }
            return  [vClass + "@" +  lquerstr + "#",lMoneySum];
        }
    } 
    function SubChk(vTmwinje,vMoneyXynd,vButDataGo )
    {
         var lTmwinje = vTmwinje ;
          var  noMoney ="请输入抛单金额!!";
         var  lButMessagebox = "您是否确认抛单！！";
         if(Number(lTmwinje) <= 0)
         {
              alert(noMoney );//"请输入下注金额!!"
              return false;
         }
        if(eval(lTmwinje*1) > Number(vMoneyXynd))
        {
//             alert(overCredit + vMoneyXynd);// "下注金额不可大於信用馀额：";
//             return false;
        }
         if(document.getElementById(vButDataGo).value =="over")
        {//用来防范，连续点击产生的事件
             
             alert(ldataload);//"下注正在进行……!!"
             return false;
        }
        if (window.confirm(lButMessagebox) == false )//lButMessagebox = "您是否确认下注！！";
        {
            return false;
        }
        document.getElementById(vButDataGo).value="over";
        return true;
    }

    </script>

</head>
<body onload="onLoad();" text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <div>
            <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <td class="mem_index_ctrl_line" style="height: 4px">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_bg">
                        <table cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td>
                                    &nbsp;&nbsp;即时注单排序&nbsp; :
                                    <select class="za_select" onchange="ShowPage();" name="Select_Tj" id="Select_Item" runat="server">
                                        <option value="1" selected>按球号</option>
                                        <option value="2">按金额</option>
                                    </select>
                                    <select class="za_select" onchange="ShowPage();" name="Select_Order" id="Select_Order" runat="server">
                                        <option value="1" selected>升幂(由小到大)</option>
                                        <option value="2">降幂(由大到小)</option>
                                    </select>
                                    股份
                                    <select class="za_select" onchange="ShowPage();" name="Select_Gf" id="Select_Gf" runat="server">
                                        <option value="1" selected>全部</option>
                                        <option value="2">独占</option>
                                    </select>
                                    <a class="click_text" onchange="ReTimeShow();">刷新</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label>
                                    <select class="za_select" id="retime" onchange="ShowPage();" name="retime" runat="server">
                                        <option value="-1">不刷新</option>
                                        <option value="20">20 sec</option>
                                        <option value="40">40 sec</option>
                                        <option value="60" selected>60 sec</option>
                                    </select>
                                    &nbsp; &nbsp; &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_line">
                    </td>
                </tr>
                <tr>
                    <td class="mem_index_ctrl_space">
                    </td>
                </tr>
                <tr class="mem_index_ctrl_Title">
                    <td>
                        &nbsp;&nbsp;特别号 &nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label>&nbsp;
                        <input id="chkall" type="checkbox" runat="server" />全部 &nbsp;
                        <input id="Chktm0" type="checkbox" value="01" runat="server" />特码
                        <input id="Chktm9" type="checkbox" value="41" runat="server" />特码B
                        <input id="Chktm1" type="checkbox" value="02" runat="server" />单双
                        <input id="Chktm2" type="checkbox" value="03" runat="server" />大小
                        <input id="Chktm3" type="checkbox" value="04" runat="server" />合单双
                        <input id="Chktm4" type="checkbox" value="15" runat="server" />生肖
                        <input id="Chktm5" type="checkbox" value="20" runat="server" />六肖
                        <input id="Chktm6" type="checkbox" value="14" runat="server" />色波
                        <input id="Chktm7" type="checkbox" value="21" runat="server" />半波
                        <input id="Chktm8" type="checkbox" value="25" runat="server" />头数
                        <input id="butOk" type="button" onclick="ShowPage()" value="确定" /><br />
                    </td>
                </tr>
            </table>
            <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
                <tbody>
                    <tr class="ra_listbet_title">
                        <td width="40">
                            时间</td>
                        <td>
                            注单</td>
                        <td >
                            赔率</td>
                        <td>
                            注单</td>
                        <td>
                            补单&nbsp;</td>
                        <td>
                            已补&nbsp;</td>
                        <td>
                            輸贏</td>
                        <td >
                            号码</td>
                        <td >
                            赔率</td>
                        <td>
                            注单</td>
                        <td >
                            补单</td>
                        <td >
                            已补</td>
                        <td >
                            輸贏</td>
                        <td >
                            号码</td>
                        <td >
                            赔率</td>
                        <td>
                            注单</td>
                        <td>
                            补单
                        </td>
                        <td>
                            已补</td>
                        <td>
                            輸贏</td>
                        <td >
                            号码</td>
                        <td >
                            赔率</td>
                        <td>
                            注单</td>
                        <td>
                            补单
                        </td>
                        <td>
                            已补</td>
                        <td>
                            輸贏</td>
                        <td >
                            号码</td>
                        <td >
                            赔率</td>
                        <td>
                            注单</td>
                        <td>
                            补单
                        </td>
                        <td>
                            已补</td>
                        <td>
                            輸贏</td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td rowspan="2" id="Labtmwindate" runat="server">
                            &nbsp;04-17<br>
                            20:35</td>
                        <td class="Td_Title_Num" id="TmT1" runat="server">
                            <font color="red">01</font></td>
                        <td id="TSF1" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF1" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF1" runat="server">
                            <asp:HyperLink ID="HLF1" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney1" style="width: 35px" type="text" runat="server" tabindex="1" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao1" runat="server" class="show_PaoJe"></asp:Label>
                            </td>
                        <td runat="server" align="middle">
                            <asp:Label ID="labWinJe1" runat="server" class="show_WinJe" ></asp:Label></td>
            
                        <td class="Td_Title_Num" id="TmT11" runat="server" style="color: green">
                            11</td>
                        <td id="TSF11" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF11" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF11" runat="server">
                            <asp:HyperLink ID="HLF11" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney11" style="width: 35px" type="text" runat="server" tabindex="11" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao11" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="labWinJe11" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT21" runat="server">
                            <font color="green">21</font></td>
                        <td id="TSF21" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF21" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF21" runat="server">
                            <asp:HyperLink ID="HLF21" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney21" style="width: 35px" type="text" runat="server" tabindex="21" /></td>
                        <td id="Td61" runat="server" align="middle">
                            <asp:Label ID="LabPao21" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td60">
                            <asp:Label ID="labWinJe21" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT31" runat="server">
                            <font color="blue">31</font></td>
                        <td id="TSF31" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF31" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF31" runat="server">
                            <asp:HyperLink ID="HLF31" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney31" style="width: 35px" type="text" runat="server" tabindex="31" /></td>
                        <td id="Td72" runat="server" align="middle">
                            <asp:Label ID="LabPao31" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td7">
                            <asp:Label ID="labWinJe31" runat="server" class="show_WinJe" ></asp:Label>
                        </td>
                        <td class="Td_Title_Num" id="TmT41" runat="server">
                            <font color="blue">41</font></td>
                        <td id="TSF41" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF41" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF41" runat="server">
                            <asp:HyperLink ID="HLF41" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney41" style="width: 35px" type="text" runat="server" tabindex="41" /></td>
                        <td runat="server" align="middle">
                            <asp:Label ID="LabPao41" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td8">
                            <asp:Label ID="labWinJe41" runat="server" class="show_WinJe" ></asp:Label></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td class="Td_Title_Num" id="TmT2" runat="server">
                            <font color="red">02</font></td>
                        <td id="TSF2" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF2" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF3" runat="server">
                            <asp:HyperLink ID="HLF2" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney2" style="width: 35px" type="text" runat="server" tabindex="2" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao2" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td9">
                            <asp:Label ID="labWinJe2" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT12" runat="server">
                            <font color="red"><span>12</span></font></td>
                        <td id="TSF12" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF12" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF12" runat="server">
                            <asp:HyperLink ID="HLF12" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney12" style="width: 35px" type="text" runat="server" tabindex="12" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao12" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td10" >
                            <asp:Label ID="labWinJe12" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT22" runat="server">
                            <font color="green">22</font></td>
                        <td id="TSF22" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF22" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF22" runat="server">
                            <asp:HyperLink ID="HLF22" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney22" style="width: 35px" type="text" runat="server" tabindex="22" /></td>
                        <td id="Td62" runat="server" align="middle">
                            <asp:Label ID="LabPao22" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td12">
                            <asp:Label ID="labWinJe22" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT32" runat="server">
                            <font color="green"><span>32</span></font></td>
                        <td id="TSF32" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF32" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF32" runat="server">
                            <asp:HyperLink ID="HLF32" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney32" style="width: 35px" type="text" runat="server" tabindex="32" /></td>
                        <td id="Td73" runat="server" align="middle">
                            <asp:Label ID="LabPao32" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td13">
                            <asp:Label ID="labWinJe32" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT42" runat="server">
                            <font color="blue">42</font></td>
                        <td id="TSF42" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF42" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF42" runat="server">
                            <asp:HyperLink ID="HLF42" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney42" style="width: 35px" type="text" runat="server" tabindex="42" /></td>
                        <td runat="server" align="middle">
                            <asp:Label ID="LabPao42" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td14">
                            <asp:Label ID="labWinJe42" runat="server" class="show_WinJe" ></asp:Label></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td align="middle" class="ra_listbet_title">
                            期数</td>
                        <td class="Td_Title_Num" id="TmT3" runat="server">
                            <font color="blue">03</font></td>
                        <td id="TSF3" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF3" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF5" runat="server">
                            <asp:HyperLink ID="HLF3" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney3" style="width: 35px" type="text" runat="server" tabindex="3" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao3" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td15">
                            <asp:Label ID="labWinJe3" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT13" runat="server">
                            <font color="red">13</font></td>
                        <td id="TSF13" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF13" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF13" runat="server">
                            <asp:HyperLink ID="HLF13" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney13" style="width: 35px" type="text" runat="server" tabindex="13" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao13" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td16" >
                            <asp:Label ID="labWinJe13" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT23" runat="server">
                            <font color="red">23</font></td>
                        <td id="TSF23" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF23" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF23" runat="server">
                            <asp:HyperLink ID="HLF23" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney23" style="width: 35px" type="text" runat="server" tabindex="23" /></td>
                        <td id="Td63" runat="server" align="middle">
                            <asp:Label ID="LabPao23" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td17">
                            <asp:Label ID="labWinJe23" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT33" runat="server">
                            <font color="green">33</font></td>
                        <td id="TSF33" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF33" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF33" runat="server">
                            <asp:HyperLink ID="HLF33" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney33" style="width: 35px" type="text" runat="server" tabindex="33" /></td>
                        <td id="Td74" runat="server" align="middle">
                            <asp:Label ID="LabPao33" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td18">
                            <asp:Label ID="labWinJe33" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT43" runat="server">
                            <font color="green">43</font></td>
                        <td id="TSF43" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF43" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF43" runat="server">
                            <asp:HyperLink ID="HLF43" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney43" style="width: 35px" type="text" runat="server" tabindex="43" /></td>
                        <td runat="server" align="middle">
                            <asp:Label ID="LabPao43" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td19">
                            <asp:Label ID="labWinJe43" runat="server" class="show_WinJe" ></asp:Label></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td rowspan="8" id="Labtmwinno" runat="server">
                        </td>
                        <td class="Td_Title_Num" id="TmT4" runat="server">
                            <font color="blue">04</font></td>
                        <td id="TSF4" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF4" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF7" runat="server">
                            <asp:HyperLink ID="HLF4" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney4" style="width: 35px" type="text" runat="server" tabindex="4" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao4" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td20">
                            <asp:Label ID="labWinJe4" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT14" runat="server">
                            <font color="blue">14</font></td>
                        <td id="TSF14" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF14" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF14" runat="server">
                            <asp:HyperLink ID="HLF14" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney14" style="width: 35px" type="text" runat="server" tabindex="14" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao14" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td21" >
                            <asp:Label ID="labWinJe14" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT24" runat="server">
                            <font color="red">24</font></td>
                        <td id="TSF24" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF24" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF24" runat="server">
                            <asp:HyperLink ID="HLF24" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney24" style="width: 35px" type="text" runat="server" tabindex="24" /></td>
                        <td id="Td64" runat="server" align="middle">
                            <asp:Label ID="LabPao24" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td22">
                            <asp:Label ID="labWinJe24" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT34" runat="server">
                            <font color="red">34</font></td>
                        <td id="TSF34" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF34" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF34" runat="server">
                            <asp:HyperLink ID="HLF34" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney34" style="width: 35px" type="text" runat="server" tabindex="34" /></td>
                        <td id="Td75" runat="server" align="middle">
                            <asp:Label ID="LabPao34" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td23">
                            <asp:Label ID="labWinJe34" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT44" runat="server">
                            <font color="green">44</font></td>
                        <td id="TSF44" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF44" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF44" runat="server">
                            <asp:HyperLink ID="HLF44" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney44" style="width: 35px" type="text" runat="server" tabindex="44" /></td>
                        <td runat="server" align="middle">
                            <asp:Label ID="LabPao44" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td24">
                            <asp:Label ID="labWinJe44" runat="server" class="show_WinJe" ></asp:Label></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td class="Td_Title_Num" id="TmT5" runat="server">
                            <font color="green">05</font></td>
                        <td id="TSF5" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF5" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF9" runat="server">
                            <asp:HyperLink ID="HLF5" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney5" style="width: 35px" type="text" runat="server" tabindex="5" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao5" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td25">
                            <asp:Label ID="labWinJe5" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT15" runat="server">
                            <font color="blue">15</font></td>
                        <td id="TSF15" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF15" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF15" runat="server">
                            <asp:HyperLink ID="HLF15" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney15" style="width: 35px" type="text" runat="server" tabindex="15" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao15" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td26" >
                            <asp:Label ID="labWinJe15" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT25" runat="server">
                            <font color="blue">25</font></td>
                        <td id="TSF25" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF25" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF25" runat="server">
                            <asp:HyperLink ID="HLF25" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney25" style="width: 35px" type="text" runat="server" tabindex="25" /></td>
                        <td id="Td65" runat="server" align="middle">
                            <asp:Label ID="LabPao25" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td27">
                            <asp:Label ID="labWinJe25" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT35" runat="server">
                            <font color="red">35</font></td>
                        <td id="TSF35" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF35" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF35" runat="server">
                            <asp:HyperLink ID="HLF35" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney35" style="width: 35px" type="text" runat="server" tabindex="35" /></td>
                        <td id="Td76" runat="server" align="middle">
                            <asp:Label ID="LabPao35" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td28">
                            <asp:Label ID="labWinJe35" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT45" runat="server">
                            <font color="red">45</font></td>
                        <td id="TSF45" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF45" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF45" runat="server">
                            <asp:HyperLink ID="HLF45" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney45" style="width: 35px" type="text" runat="server" tabindex="45" /></td>
                        <td runat="server" align="middle">
                            <asp:Label ID="LabPao45" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td29">
                            <asp:Label ID="labWinJe45" runat="server" class="show_WinJe" ></asp:Label></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td class="Td_Title_Num" id="TmT6" runat="server">
                            <font color="green">06</font></td>
                        <td id="TSF6" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF6" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF16" runat="server">
                            <asp:HyperLink ID="HLF6" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney6" style="width: 35px" type="text" runat="server" tabindex="6" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao6" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td30">
                            <asp:Label ID="labWinJe6" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT16" runat="server">
                            <font color="green">16</font></td>
                        <td id="TSF16" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF16" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF17" runat="server">
                            <asp:HyperLink ID="HLF16" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney16" style="width: 35px" type="text" runat="server" tabindex="16" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao16" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td31" >
                            <asp:Label ID="labWinJe16" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT26" runat="server">
                            <font color="blue">26</font></td>
                        <td id="TSF26" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF26" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF26" runat="server">
                            <asp:HyperLink ID="HLF26" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney26" style="width: 35px" type="text" runat="server" tabindex="26" /></td>
                        <td id="Td66" runat="server" align="middle">
                            <asp:Label ID="LabPao26" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td32">
                            <asp:Label ID="labWinJe26" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT36" runat="server">
                            <font color="blue">36</font></td>
                        <td id="TSF36" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF36" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF36" runat="server">
                            <asp:HyperLink ID="HLF36" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney36" style="width: 35px" type="text" runat="server" tabindex="36" /></td>
                        <td id="Td77" runat="server" align="middle">
                            <asp:Label ID="LabPao36" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td33">
                            <asp:Label ID="labWinJe36" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT46" runat="server">
                            <font color="red">46</font></td>
                        <td id="TSF46" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF46" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF46" runat="server">
                            <asp:HyperLink ID="HLF46" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney46" style="width: 35px" type="text" runat="server" tabindex="46" /></td>
                        <td runat="server" align="middle">
                            <asp:Label ID="LabPao46" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td34">
                            <asp:Label ID="labWinJe46" runat="server" class="show_WinJe" ></asp:Label></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td class="Td_Title_Num" id="TmT7" runat="server">
                            <font color="red">07</font></td>
                        <td id="TSF7" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF7" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF19" runat="server">
                            <asp:HyperLink ID="HLF7" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney7" style="width: 35px" type="text" runat="server" tabindex="7" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao7" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td35">
                            <asp:Label ID="labWinJe7" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT17" runat="server">
                            <font color="green">17</font></td>
                        <td id="TSF17" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF17" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF20" runat="server">
                            <asp:HyperLink ID="HLF17" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney17" style="width: 35px" type="text" runat="server" tabindex="17" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao17" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td36" >
                            <asp:Label ID="labWinJe17" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT27" runat="server">
                            <font color="green">27</font></td>
                        <td id="TSF27" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF27" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF27" runat="server">
                            <asp:HyperLink ID="HLF27" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney27" style="width: 35px" type="text" runat="server" tabindex="27" /></td>
                        <td id="Td67" runat="server" align="middle">
                            <asp:Label ID="LabPao27" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td37">
                            <asp:Label ID="labWinJe27" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT37" runat="server">
                            <font color="blue">37</font></td>
                        <td id="TSF37" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF37" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF37" runat="server">
                            <asp:HyperLink ID="HLF37" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney37" style="width: 35px" type="text" runat="server" tabindex="37" /></td>
                        <td id="Td78" runat="server" align="middle">
                            <asp:Label ID="LabPao37" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td38">
                            <asp:Label ID="labWinJe37" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT47" runat="server">
                            <font color="blue">47</font></td>
                        <td id="TSF47" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF47" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF47" runat="server">
                            <asp:HyperLink ID="HLF47" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney47" style="width: 35px" type="text" runat="server" tabindex="47" /></td>
                        <td runat="server" align="middle">
                            <asp:Label ID="LabPao47" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td39">
                            <asp:Label ID="labWinJe47" runat="server" class="show_WinJe" ></asp:Label></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td class="Td_Title_Num" id="TmT8" runat="server">
                            <font color="red">08</font></td>
                        <td id="TSF8" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF8" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF29" runat="server">
                            <asp:HyperLink ID="HLF8" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney8" style="width: 35px" type="text" runat="server" tabindex="8" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao8" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td40">
                            <asp:Label ID="labWinJe8" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT18" runat="server">
                            <font color="red">18</font></td>
                        <td id="TSF18" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF18" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF30" runat="server">
                            <asp:HyperLink ID="HLF18" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney18" style="width: 35px" type="text" runat="server" tabindex="18" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao18" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td41" >
                            <asp:Label ID="labWinJe18" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT28" runat="server">
                            <font color="green">28</font></td>
                        <td id="TSF28" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF28" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF38" runat="server">
                            <asp:HyperLink ID="HLF28" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney28" style="width: 35px" type="text" runat="server" tabindex="28" /></td>
                        <td id="Td68" runat="server" align="middle">
                            <asp:Label ID="LabPao28" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td42">
                            <asp:Label ID="labWinJe28" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT38" runat="server">
                            <font color="green">38</font></td>
                        <td id="TSF38" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF38" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF39" runat="server">
                            <asp:HyperLink ID="HLF38" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney38" style="width: 35px" type="text" runat="server" tabindex="38" /></td>
                        <td id="Td79" runat="server" align="middle">
                            <asp:Label ID="LabPao38" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td43">
                            <asp:Label ID="labWinJe38" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT48" runat="server">
                            <font color="blue">48</font></td>
                        <td id="TSF48" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF48" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF48" runat="server">
                            <asp:HyperLink ID="HLF48" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney48" style="width: 35px" type="text" runat="server" tabindex="48" /></td>
                        <td runat="server" align="middle">
                            <asp:Label ID="LabPao48" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td44">
                            <asp:Label ID="labWinJe48" runat="server" class="show_WinJe" ></asp:Label></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td class="Td_Title_Num" id="TmT9" runat="server">
                            <font color="blue">09</font></td>
                        <td id="TSF9" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF9" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF49" runat="server">
                            <asp:HyperLink ID="HLF9" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney9" style="width: 35px" type="text" runat="server" tabindex="9" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao9" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td45">
                            <asp:Label ID="labWinJe9" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT19" runat="server">
                            <font color="red">19</font></td>
                        <td id="TSF19" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF19" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF50" runat="server">
                            <asp:HyperLink ID="HLF19" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney19" style="width: 35px" type="text" runat="server" tabindex="19" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao19" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td46" >
                            <asp:Label ID="labWinJe19" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT29" runat="server">
                            <font color="red">29</font></td>
                        <td id="TSF29" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF29" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF51" runat="server">
                            <asp:HyperLink ID="HLF29" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney29" style="width: 35px" type="text" runat="server" tabindex="29" /></td>
                        <td id="Td69" runat="server" align="middle">
                            <asp:Label ID="LabPao29" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td47">
                            <asp:Label ID="labWinJe29" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT39" runat="server">
                            <font color="green">39</font></td>
                        <td id="TSF39" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF39" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF52" runat="server">
                            <asp:HyperLink ID="HLF39" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney39" style="width: 35px" type="text" runat="server" tabindex="39" /></td>
                        <td id="Td80" runat="server" align="middle">
                            <asp:Label ID="LabPao39" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td48">
                            <asp:Label ID="labWinJe39" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT49" runat="server">
                            <font color="green">49</font></td>
                        <td id="TSF49" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF49" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF53" runat="server">
                            <asp:HyperLink ID="HLF49" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney49" style="width: 35px" type="text" runat="server" tabindex="49" /></td>
                        <td runat="server" align="middle">
                            <asp:Label ID="LabPao49" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td49">
                            <asp:Label ID="labWinJe49" runat="server" class="show_WinJe" ></asp:Label></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td class="Td_Title_Num" id="TmT10" runat="server">
                            <font color="blue">10</font></td>
                        <td id="TSF10" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF10" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF55" runat="server">
                            <asp:HyperLink ID="HLF10" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney10" style="width: 35px" type="text" runat="server" tabindex="10" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao10" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td50">
                            <asp:Label ID="labWinJe10" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT20" runat="server">
                            <font color="blue">20</font></td>
                        <td id="TSF20" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF20" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF56" runat="server">
                            <asp:HyperLink ID="HLF20" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle" >
                            <input id="TxtChipMoney20" style="width: 35px" type="text" runat="server" tabindex="20" /></td>
                        <td runat="server" align="middle" >
                            <asp:Label ID="LabPao20" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td51" >
                            <asp:Label ID="labWinJe20" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT30" runat="server">
                            <font color="red">30</font></td>
                        <td id="TSF30" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF30" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF57" runat="server">
                            <asp:HyperLink ID="HLF30" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney30" style="width: 35px" type="text" runat="server" tabindex="30" /></td>
                        <td id="Td70" runat="server" align="middle">
                            <asp:Label ID="LabPao30" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td52">
                            <asp:Label ID="labWinJe30" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td class="Td_Title_Num" id="TmT40" runat="server">
                            <font color="red">40</font></td>
                        <td id="TSF40" runat="server" align="middle">
                            <asp:Label class="show_Pl" ID="LabF40" runat="server"></asp:Label></td>
                        <td align="middle" id="TMF58" runat="server">
                            <asp:HyperLink ID="HLF40" runat="server" class="show_je"></asp:HyperLink></td>
                        <td runat="server" align="middle">
                            <input id="TxtChipMoney40" style="width: 35px" type="text" runat="server" tabindex="40" /></td>
                        <td id="Td81" runat="server" align="middle">
                            <asp:Label ID="LabPao40" runat="server" class="show_PaoJe"></asp:Label></td>
                        <td runat="server" align="middle" id="Td53">
                            <asp:Label ID="labWinJe40" runat="server" class="show_WinJe" ></asp:Label></td>
                        <td align="center">
                            总和</td>
                        <td align="center" colspan="2">
                            <asp:HyperLink ID="LabChipMoneySum" runat="server" class="show_je"></asp:HyperLink></td>
                        <td align="center">
                            </td>
                        <td align="center">
                            <asp:HyperLink ID="LabPaoSum" runat="server" class="show_je"></asp:HyperLink></td>
                        <td align="center">
                            <asp:HyperLink ID="HLFsum" runat="server" class="show_je"></asp:HyperLink></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td runat="server" align="middle" colspan="2" rowspan="1">
                            &nbsp;
                        </td>
                        <td runat="server" align="middle" colspan="2" id="Td1">
                            &nbsp;</td>
                        <td runat="server" align="middle" colspan="1" >
                        </td>
                        <td runat="server" align="middle" colspan="1" id="Td54">
                        </td>
                        <td runat="server" align="middle" colspan="2" id="Td2">
                            </td>
                        <td runat="server" align="middle" colspan="2" id="Td3">
                            </td>
                        <td runat="server" align="middle" colspan="1">
                        </td>
                        <td runat="server" align="middle" colspan="1" id="Td55">
                        </td>
                        <td runat="server" align="middle" colspan="2" id="Td4">
                            </td>
                        <td runat="server" align="middle" colspan="2" id="Td5">
                            </td>
                        <td id="Td71" runat="server" align="middle" colspan="1">
                        </td>
                        <td runat="server" align="middle" colspan="1" id="Td56">
                        </td>
                        <td runat="server" align="middle" colspan="6">
                            最大负数:<asp:TextBox ID="TxtMaxMoney" runat="server" Width="60px"></asp:TextBox><input id="ButMaxChipWinMoney" type="button" value="重新计算"  runat="server" onserverclick="ButMaxChipWinMoney_ServerClick" /></td>
                        <td runat="server" align="middle" colspan="6" id="Td59">
                            <input id="WagerTxt" runat="server" readonly="readonly" type="text" size="1" style="display: none; visibility: hidden" /><input id="TxtButData" runat="server" name="TxtButData" size="1" style="display: none; visibility: hidden" type="text" />
                            <asp:Button ID="ButSaveCje" runat="server" OnClick="ButSaveCje_Click" Text="[吃]保存" OnClientClick="return SubData();" /></td>
                    </tr>
                    <tr bgcolor="#ffffff">
                        <td runat="server" align="middle" colspan="1" rowspan="1" id="Td11">
                            <input id="TxtSpMoney" maxlength="2" size="1" type="text" value="/" style="width: 20px" /><br />
                            <input id="TxtSpChip" maxlength="2" size="1" type="text" value="." style="width: 20px" /></td>
                        <td align="middle" colspan="35">
                            &nbsp;<textarea id="TxtTm" runat="server" rows="3" style="width: 754px"></textarea>
                            <input id="Butclip" onclick="javascript:clipboardData.setData('Text',document.getElementById('TxtTm').value);" size="20" type="button" value="复制" /></td>
                    </tr>
                </tbody>
            </table>
            <table id="Table3" width="668" class="table_banner" cellspacing="1" style="visibility: hidden;">
                <tr>
                    <td style="width: 65px;" class="td_Label" align="center">
                        信用额度</td>
                    <td class="td_Label">
                        <asp:Label ID="LabBzname" runat="server" Text="人民币(RMB)"></asp:Label>
                        <asp:Label ID="Labxynd" runat="server"></asp:Label>
                    </td>
                    <td style="width: 65px;" class="td_Label" align="center">
                        下注金额</td>
                    <td class="td_Label">
                        <asp:Label ID="LabXyndyy" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
