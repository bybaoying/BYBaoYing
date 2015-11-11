<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_PlZmTm, App_Web_irsz2q38" enableEventValidation="false" %>
<%@ Register Src="WebSetup_Pl_MenuToolsBar.ascx" TagName="WebSetup_Pl_MenuToolsBar" TagPrefix="uc1" %>
<html>
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html" charset="gb2312" />
    <link href="../style/WebSetup_Pl.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/AutoRefreshShow.js"></script>

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">
        function onLoad()
        {
           
//            document.all ['tmSubShow'] .src="ztoday_chip_hotspot_small.aspx?tmItem=2&tmOrder=2&tmGf=1&tmclassid=01.41.&stoptime=" + document.getElementById('retime').value;
            
            var ltype ="<% =Request.QueryString["ltype"] %>";
            if (ltype == "")
             {
                document.getElementById('ltype').value ="LA";
              }
              else
              {
                  document.getElementById('ltype').value =ltype;
              }
              
              var pct ="<% =Request.QueryString["pct"] %>";
              if (pct == "")
             {
                document.getElementById('pct').value =0;
              }
              else
              {
                  document.getElementById('pct').value =pct;
                 }
             
            lReftime ="<% =Request.QueryString["stoptime"] %>";
            AutoRefShow(lReftime,'ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&');
        }
        function HrefLj(tm)
        {
            location=tm + '?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=-1';
        }
        function SelectTmOk(vSelectTm,vTmPl)
        {//选择指定的号码
                document.getElementById(vSelectTm).value=vTmPl;
                
        } 
        function TmSetup(tm)
        {
            document.getElementById('TMNo').value   =tm;
            return false;
        }

        
        function SelectBall(vTmno){
             if (!(document.getElementById("TmPlValueA").value.toLowerCase() == 'a' || document.getElementById("TmPlValueA").value.toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById("TmPlValueA").value) == true || document.getElementById("TmPlValueA").value == '' )
                     {
                        document.getElementById("TmPlValueA").focus();
                        alert("设置的赔率!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById("TmPlValueA").value = Number(document.getElementById("TmPlValueA").value) ;
                    }
            }
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = arrNum[i];
	            
	            SelectTmOk("TxtEditPl" + tmno.toString(),document.getElementById("TmPlValueA").value);
	            
            }
        }
        function SelectBallType(vTmno){
             if (!(document.getElementById("TmPlValue").value .toLowerCase() == 'a' || document.getElementById("TmPlValue").value .toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById("TmPlValue").value ) == true || document.getElementById("TmPlValue").value  == '' )
                     {
                        document.getElementById("TmPlValue").focus();
                        alert("设置的赔率!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById("TmPlValue").value  = Number(document.getElementById("TmPlValue").value ) ;
                    }
            }
            var arrNum = vTmno.split(".");
            if (document.getElementById("SelZmClass").value  == "-1")
            {
                for (var i = 0 ; i < (arrNum.length - 1); i++){
                   var tmno = Number(arrNum[i]);
		            
	                SelectTmOk("TxtEditPlA" + tmno.toString(),document.getElementById("TmPlValue").value );
		            SelectTmOk("TxtEditPlB" + tmno.toString(),document.getElementById("TmPlValue").value );
		            SelectTmOk("TxtEditPlC" + tmno.toString(),document.getElementById("TmPlValue").value );
		            SelectTmOk("TxtEditPlD" + tmno.toString(),document.getElementById("TmPlValue").value );
		            SelectTmOk("TxtEditPlE" + tmno.toString(),document.getElementById("TmPlValue").value );
		            SelectTmOk("TxtEditPlF" + tmno.toString(),document.getElementById("TmPlValue").value );
                }
            }
            else
            {
                for (var i = 0 ; i < (arrNum.length - 1); i++){
                   var tmno = Number(arrNum[i]);
		            
	                SelectTmOk("TxtEditPl" + document.getElementById("SelZmClass").value  + tmno.toString(),document.getElementById("TmPlValue").value );
		            
                }
            }
        }
            
            function SelectAll(){
                
             if (!(document.getElementById("TmPlValue").value .toLowerCase() == 'a' || document.getElementById("TmPlValue").value .toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById("TmPlValue").value ) == true || document.getElementById("TmPlValue").value  == '' )
                     {
                        document.getElementById("TmPlValue").focus();
                        alert("设置的赔率!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById("TmPlValue").value  = Number(document.getElementById("TmPlValue").value ) ;
                    }
            }
	            if (document.getElementById("SelZmClass").value  == "-1")
	            {
	                for (var i = 1 ; i < 50; i++){

		                SelectTmOk("TxtEditPlA" + i.toString(),document.getElementById("TmPlValue").value );
    		            SelectTmOk("TxtEditPlB" + i.toString(),document.getElementById("TmPlValue").value );
    		            SelectTmOk("TxtEditPlC" + i.toString(),document.getElementById("TmPlValue").value );
    		            SelectTmOk("TxtEditPlD" + i.toString(),document.getElementById("TmPlValue").value );
    		            SelectTmOk("TxtEditPlE" + i.toString(),document.getElementById("TmPlValue").value );
    		            SelectTmOk("TxtEditPlF" + i.toString(),document.getElementById("TmPlValue").value );
	                }
	            }
	            else
	            {
	                for (var i = 1 ; i < 50; i++){

		                SelectTmOk("TxtEditPl" + document.getElementById("SelZmClass").value  + i.toString(),document.getElementById("TmPlValue").value );
	                }
	            }
            }

        function SubData()
        {//生成将修改的字符串

            mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById('WagerTxt').value = "" ;
            var lWagerStr= "",lSetValue = "";
            


            lSetValue = SetValue("26","A","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("27","B","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("28","C","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("29","D","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
          
            lSetValue = SetValue("30","E","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("31","F","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
                

            document.getElementById('WagerTxt').value = lWagerStr ;
        }
        function SetValue(vClass,vEditName,vNoValue)//SubData()//提交数据,进行组合检查
        {
            var arrNo = vNoValue.split(".");
            var lquerstr = "";
            var ltmsumje = 0;

            for (var i = 0 ; i < (arrNo.length ); i++){
               if (arrNo[i] != ""){
	                var  lSelectNo ="TxtEditPl" + vEditName + arrNo[i];
	                if (isNaN(document.getElementById(lSelectNo).value) == false && document.getElementById(lSelectNo).value != ''){
                        lquerstr = lquerstr +  arrNo[i] + "$" + String( document.getElementById(lSelectNo).value) + ";";
	                }

                    if ( document.getElementById(lSelectNo).value.toLowerCase()=="a" || document.getElementById(lSelectNo).value.toLowerCase()=="b"){
                        var  lLabNo ="Lab" + vEditName +  arrNo[i];
                        lquerstr = lquerstr +  arrNo[i] + "$" + String( document.getElementById(lSelectNo).value) + document.getElementById(lLabNo).innerHTML + ";";
                    }
	            }
            }
            
            if (lquerstr == "" ){
                return "";
             }
             else{ 
                return vClass + "@" +  lquerstr + "#";
            }
        } 
             function addition(vControlCaption,vValue)
            {
		        var  lSelectNo ="TxtEditPl" + vControlCaption;

		        if (Number(document.getElementById(lSelectNo).value)!=0){
		        
		            document.getElementById(lSelectNo).value = Math.round((Number(document.getElementById(lSelectNo).value) + vValue)*100)/100;
		        }else{
		            var lLabPl ="Lab" + vControlCaption;
		            document.getElementById(lSelectNo).value = Math.round((Number(document.getElementById(lLabPl).innerHTML) + vValue)*100)/100;
		        }
            }  
                        
    </script>

</head>
<body onload="onLoad();" text="#000000" vlink="#0000ff" alink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
        <table class="title_m_tab" cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td class="mem_index_ctrl_line">
                </td>
            </tr>
            <tr>
                <td class="mem_index_ctrl_bg">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td>
                                &nbsp;&nbsp;即时注单:
                                <select class="za_select" id="ltype" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;"
                                    name="ltype" runat="server">
                                    <option value="LA" selected>盘别 A</option>
                                    <option value="LB">盘别 B</option>
                                    <option value="LC">盘别 C</option>
                                    <option value="LD">盘别 D</option>
                                </select>
                                <select class="za_select" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;" name="pct"
                                    id="pct" runat="server">
                                    <option value="0" selected>全部</option>
                                    <option value="1">笔数</option>
                                    <option value="2">金额</option>
                                </select>
                                <a class="click_text" onclick="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;">刷新</a>:<asp:Label
                                    ID="LabReftime" runat="server"></asp:Label>
                                <select class="za_select" id="retime" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;"
                                    name="retime" runat="server">
                                    <option value="-1" selected>不刷新</option>
                                    <option value="20">20 sec</option>
                                    <option value="40">40 sec</option>
                                    <option value="60">60 sec</option>
                                </select><uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" GameCaption="主盤" runat="server" ItmeChooseName="LinkPlZmTm"/>

                                </td>  
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
                    &nbsp;&nbsp;正码特&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table id="TABLE1" cellspacing="0" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr>
                    <td>
                        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
                            <tbody>
                                <tr class="ra_listbet_title">
                                    <td colspan="18" style="height: 25px">
                                        <a name="1"></a>正码特一
                                    </td>
                                </tr>
                                <tr class="ra_listbet_title">
                                    <td width="40" style="height: 25px">
                                        时间</td>
                                    <td width="30" style="height: 25px">
                                        期数</td>
                                    <td width="29" style="height: 25px">
                                        号码</td>
                                    <td width="25" style="height: 25px">
                                        赔率</td>
                                    <td style="height: 25px">
                                        注单</td>
                                    <td width="29" style="height: 25px">
                                        号码</td>
                                    <td width="25" style="height: 25px">
                                        赔率</td>
                                    <td style="height: 25px">
                                        注单</td>
                                    <td width="29" style="height: 25px">
                                        号码</td>
                                    <td width="25" style="height: 25px">
                                        赔率</td>
                                    <td style="height: 25px">
                                        注单</td>
                                    <td width="29" style="height: 25px">
                                        号码</td>
                                    <td width="25" style="height: 25px">
                                        赔率</td>
                                    <td style="height: 25px">
                                        注单</td>
                                    <td width="29" style="height: 25px">
                                        号码</td>
                                    <td width="25" style="height: 25px">
                                        赔率</td>
                                    <td style="height: 25px">
                                        注单</td>
                                    <td width="29" style="height: 25px">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td rowspan="10" id="LabtmwindateA" runat="server">
                                        &nbsp;04-17<br />
                                        20:35</td>
                                    <td align="middle" rowspan="10" id="LabtmwinnoA" runat="server">
                                    </td>
                                    <td class="Td_Title_Num">
                                        <font color="red">01</font></td>
                                    <td id="TSA1" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA1">
                                        <asp:HyperLink ID="HLA1" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">11</font></td>
                                    <td id="TSA11" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA11" style="color: #008000">
                                        <asp:HyperLink ID="HLA11" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">21</font></td>
                                    <td id="TSA21" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA21" style="color: #008000">
                                        <asp:HyperLink ID="HLA21" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">31</font></td>
                                    <td id="TSA31" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA31" style="color: #008000">
                                        <asp:HyperLink ID="HLA31" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="blue">41</font></td>
                                    <td id="TSA41" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA41">
                                        <asp:HyperLink ID="HLA41" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMA2" runat="server" align="middle">
                                        <span>正码特一</span></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">02</font></td>
                                    <td id="TSA2" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA3">
                                        <asp:HyperLink ID="HLA2" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="red"><span>12</span></font></td>
                                    <td id="TSA12" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA12" style="color: #008000">
                                        <asp:HyperLink ID="HLA12" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">22</font></td>
                                    <td id="TSA22" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA22" style="color: #008000">
                                        <asp:HyperLink ID="HLA22" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green"><span>32</span></font></td>
                                    <td id="TSA32" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA32">
                                        <asp:HyperLink ID="HLA32" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">42</font></td>
                                    <td id="TSA42" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA42">
                                        <asp:HyperLink ID="HLA42" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMA4" runat="server" align="middle">
                                        <a href="#2"><span style="text-decoration: underline">正码特二</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">03</font></td>
                                    <td id="TSA3" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA5">
                                        <asp:HyperLink ID="HLA3" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">13</font></td>
                                    <td id="TSA13" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA13">
                                        <asp:HyperLink ID="HLA13" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">23</font></td>
                                    <td id="TSA23" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA23">
                                        <asp:HyperLink ID="HLA23" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">33</font></td>
                                    <td id="TSA33" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA33">
                                        <asp:HyperLink ID="HLA33" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">43</font></td>
                                    <td id="TSA43" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA43">
                                        <asp:HyperLink ID="HLA43" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMA6" runat="server" align="middle">
                                        <a href="#3"><span style="text-decoration: underline">正码特三</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">04</font></td>
                                    <td id="TSA4" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA7">
                                        <asp:HyperLink ID="HLA4" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">14</font></td>
                                    <td id="TSA14" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA14">
                                        <asp:HyperLink ID="HLA14" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">24</font></td>
                                    <td id="TSA24" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA24">
                                        <asp:HyperLink ID="HLA24" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">34</font></td>
                                    <td id="TSA34" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA34">
                                        <asp:HyperLink ID="HLA34" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">44</font></td>
                                    <td id="TSA44" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA44">
                                        <asp:HyperLink ID="HLA44" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMA8" runat="server" align="middle">
                                        <a href="#4"><span style="text-decoration: underline">正码特四</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">05</font></td>
                                    <td id="TSA5" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA9">
                                        <asp:HyperLink ID="HLA5" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">15</font></td>
                                    <td id="TSA15" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA15">
                                        <asp:HyperLink ID="HLA15" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">25</font></td>
                                    <td id="TSA25" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA25">
                                        <asp:HyperLink ID="HLA25" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">35</font></td>
                                    <td id="TSA35" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA35">
                                        <asp:HyperLink ID="HLA35" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">45</font></td>
                                    <td id="TSA45" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA45">
                                        <asp:HyperLink ID="HLA45" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMA10" runat="server" align="middle">
                                        <a href="#5"><span style="text-decoration: underline">正码特五</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">06</font></td>
                                    <td id="TSA6" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA16">
                                        <asp:HyperLink ID="HLA6" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">16</font></td>
                                    <td id="TSA16" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA17">
                                        <asp:HyperLink ID="HLA16" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">26</font></td>
                                    <td id="TSA26" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA26">
                                        <asp:HyperLink ID="HLA26" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">36</font></td>
                                    <td id="TSA36" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA36">
                                        <asp:HyperLink ID="HLA36" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">46</font></td>
                                    <td id="TSA46" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA46">
                                        <asp:HyperLink ID="HLA46" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMA18" runat="server" align="middle">
                                        <a href="#6"><span style="text-decoration: underline">正码特六</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">07</font></td>
                                    <td id="TSA7" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA19">
                                        <asp:HyperLink ID="HLA7" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">17</font></td>
                                    <td id="TSA17" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA20">
                                        <asp:HyperLink ID="HLA17" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">27</font></td>
                                    <td id="TSA27" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA27">
                                        <asp:HyperLink ID="HLA27" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">37</font></td>
                                    <td id="TSA37" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA37">
                                        <asp:HyperLink ID="HLA37" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">47</font></td>
                                    <td id="TSA47" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA47">
                                        <asp:HyperLink ID="HLA47" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMA28" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">08</font></td>
                                    <td id="TSA8" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA29">
                                        <asp:HyperLink ID="HLA8" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">18</font></td>
                                    <td id="TSA18" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA30">
                                        <asp:HyperLink ID="HLA18" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">28</font></td>
                                    <td id="TSA28" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA38">
                                        <asp:HyperLink ID="HLA28" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">38</font></td>
                                    <td id="TSA38" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA39">
                                        <asp:HyperLink ID="HLA38" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">48</font></td>
                                    <td id="TSA48" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA48">
                                        <asp:HyperLink ID="HLA48" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMA40" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">09</font></td>
                                    <td id="TSA9" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA49">
                                        <asp:HyperLink ID="HLA9" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">19</font></td>
                                    <td id="TSA19" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA52">
                                        <asp:HyperLink ID="HLA19" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">29</font></td>
                                    <td id="TSA29" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA53">
                                        <asp:HyperLink ID="HLA29" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">39</font></td>
                                    <td id="TSA39" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA54">
                                        <asp:HyperLink ID="HLA39" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">49</font></td>
                                    <td id="TSA49" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA55">
                                        <asp:HyperLink ID="HLA49" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMA56" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">10</font></td>
                                    <td id="TSA10" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA57">
                                        <asp:HyperLink ID="HLA10" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">20</font></td>
                                    <td id="TSA20" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA58">
                                        <asp:HyperLink ID="HLA20" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">30</font></td>
                                    <td id="TSA30" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA59">
                                        <asp:HyperLink ID="HLA30" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">40</font></td>
                                    <td id="TSA40" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMA60">
                                        <asp:HyperLink ID="HLA40" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td align="middle" colspan="3">
                                    </td>
                                    <td class="show_Td_pl" align="right" colspan="1">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="ra_listbet_tab" id="glist_table_t2" cellspacing="1" cellpadding="0" border="0" runat="server">
                            <tbody>
                                <tr class="ra_listbet_title">
                                    <td colspan="18">
                                        <a name="2"></a>正码特二
                                    </td>
                                </tr>
                                <tr class="ra_listbet_title">
                                    <td width="40">
                                        时间</td>
                                    <td width="30">
                                        期数</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td rowspan="10" id="LabtmwindateB" runat="server">
                                        &nbsp;04-17<br />
                                        20:35</td>
                                    <td align="middle" rowspan="10" id="LabtmwinnoB" runat="server">
                                    </td>
                                    <td class="Td_Title_Num">
                                        <font color="red">01</font></td>
                                    <td id="TSB1" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB63">
                                        <asp:HyperLink ID="HLB1" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">11</font></td>
                                    <td id="TSB11" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB64" style="color: #008000">
                                        <asp:HyperLink ID="HLB11" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">21</font></td>
                                    <td id="TSB21" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB65" style="color: #008000">
                                        <asp:HyperLink ID="HLB21" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">31</font></td>
                                    <td id="TSB31" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB66" style="color: #008000">
                                        <asp:HyperLink ID="HLB31" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="blue">41</font></td>
                                    <td id="TSB41" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB67">
                                        <asp:HyperLink ID="HLB41" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMB68" runat="server" align="middle">
                                        <a href="#1"><span style="text-decoration: underline">正码特一</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">02</font></td>
                                    <td id="TSB2" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB69">
                                        <asp:HyperLink ID="HLB2" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="red"><span>12</span></font></td>
                                    <td id="TSB12" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB70" style="color: #008000">
                                        <asp:HyperLink ID="HLB12" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">22</font></td>
                                    <td id="TSB22" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB71" style="color: #008000">
                                        <asp:HyperLink ID="HLB22" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green"><span>32</span></font></td>
                                    <td id="TSB32" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB72">
                                        <asp:HyperLink ID="HLB32" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">42</font></td>
                                    <td id="TSB42" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB73">
                                        <asp:HyperLink ID="HLB42" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMB74" runat="server" align="middle">
                                        正码特二<a href="#2"><span style="text-decoration: underline"></span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">03</font></td>
                                    <td id="TSB3" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB75">
                                        <asp:HyperLink ID="HLB3" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">13</font></td>
                                    <td id="TSB13" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB76">
                                        <asp:HyperLink ID="HLB13" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">23</font></td>
                                    <td id="TSB23" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB77">
                                        <asp:HyperLink ID="HLB23" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">33</font></td>
                                    <td id="TSB33" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB78">
                                        <asp:HyperLink ID="HLB33" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">43</font></td>
                                    <td id="TSB43" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB79">
                                        <asp:HyperLink ID="HLB43" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMB80" runat="server" align="middle">
                                        <a href="#3"><span style="text-decoration: underline">正码特三</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">04</font></td>
                                    <td id="TSB4" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB81">
                                        <asp:HyperLink ID="HLB4" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">14</font></td>
                                    <td id="TSB14" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB82">
                                        <asp:HyperLink ID="HLB14" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">24</font></td>
                                    <td id="TSB24" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB83">
                                        <asp:HyperLink ID="HLB24" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">34</font></td>
                                    <td id="TSB34" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB84">
                                        <asp:HyperLink ID="HLB34" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">44</font></td>
                                    <td id="TSB44" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB85">
                                        <asp:HyperLink ID="HLB44" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMB86" runat="server" align="middle">
                                        <a href="#4"><span style="text-decoration: underline">正码特四</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">05</font></td>
                                    <td id="TSB5" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB87">
                                        <asp:HyperLink ID="HLB5" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">15</font></td>
                                    <td id="TSB15" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB88">
                                        <asp:HyperLink ID="HLB15" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">25</font></td>
                                    <td id="TSB25" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB89">
                                        <asp:HyperLink ID="HLB25" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">35</font></td>
                                    <td id="TSB35" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB90">
                                        <asp:HyperLink ID="HLB35" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">45</font></td>
                                    <td id="TSB45" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB91">
                                        <asp:HyperLink ID="HLB45" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMB92" runat="server" align="middle">
                                        <a href="#5"><span style="text-decoration: underline">正码特五</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">06</font></td>
                                    <td id="TSB6" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB93">
                                        <asp:HyperLink ID="HLB6" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">16</font></td>
                                    <td id="TSB16" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB94">
                                        <asp:HyperLink ID="HLB16" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">26</font></td>
                                    <td id="TSB26" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB95">
                                        <asp:HyperLink ID="HLB26" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">36</font></td>
                                    <td id="TSB36" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB96">
                                        <asp:HyperLink ID="HLB36" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">46</font></td>
                                    <td id="TSB46" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB97">
                                        <asp:HyperLink ID="HLB46" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMB98" runat="server" align="middle">
                                        <a href="#6"><span style="text-decoration: underline">正码特六</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">07</font></td>
                                    <td id="TSB7" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB99">
                                        <asp:HyperLink ID="HLB7" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">17</font></td>
                                    <td id="TSB17" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB100">
                                        <asp:HyperLink ID="HLB17" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">27</font></td>
                                    <td id="TSB27" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB101">
                                        <asp:HyperLink ID="HLB27" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">37</font></td>
                                    <td id="TSB37" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB102">
                                        <asp:HyperLink ID="HLB37" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">47</font></td>
                                    <td id="TSB47" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB103">
                                        <asp:HyperLink ID="HLB47" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMB104" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">08</font></td>
                                    <td id="TSB8" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB105">
                                        <asp:HyperLink ID="HLB8" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">18</font></td>
                                    <td id="TSB18" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB106">
                                        <asp:HyperLink ID="HLB18" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">28</font></td>
                                    <td id="TSB28" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB107">
                                        <asp:HyperLink ID="HLB28" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">38</font></td>
                                    <td id="TSB38" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB108">
                                        <asp:HyperLink ID="HLB38" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">48</font></td>
                                    <td id="TSB48" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB109">
                                        <asp:HyperLink ID="HLB48" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMB110" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">09</font></td>
                                    <td id="TSB9" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB49">
                                        <asp:HyperLink ID="HLB9" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">19</font></td>
                                    <td id="TSB19" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB50">
                                        <asp:HyperLink ID="HLB19" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">29</font></td>
                                    <td id="TSB29" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB51">
                                        <asp:HyperLink ID="HLB29" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">39</font></td>
                                    <td id="TSB39" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB52">
                                        <asp:HyperLink ID="HLB39" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">49</font></td>
                                    <td id="TSB49" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB53">
                                        <asp:HyperLink ID="HLB49" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMB54" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">10</font></td>
                                    <td id="TSB10" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB55">
                                        <asp:HyperLink ID="HLB10" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">20</font></td>
                                    <td id="TSB20" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB56">
                                        <asp:HyperLink ID="HLB20" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">30</font></td>
                                    <td id="TSB30" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB57">
                                        <asp:HyperLink ID="HLB30" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">40</font></td>
                                    <td id="TSB40" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMB58">
                                        <asp:HyperLink ID="HLB40" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td align="middle" colspan="3">
                                    </td>
                                    <td class="show_Td_pl" align="right" colspan="1">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="ra_listbet_tab" id="glist_table_t3" cellspacing="1" cellpadding="0" border="0" runat="server">
                            <tbody>
                                <tr class="ra_listbet_title">
                                    <td colspan="18">
                                        <a name="3"></a>正码特三
                                    </td>
                                </tr>
                                <tr class="ra_listbet_title">
                                    <td width="40">
                                        时间</td>
                                    <td width="30">
                                        期数</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td rowspan="10" id="LabtmwindateC" runat="server">
                                        &nbsp;04-17<br />
                                        20:35</td>
                                    <td align="middle" rowspan="10" id="LabtmwinnoC" runat="server">
                                    </td>
                                    <td class="Td_Title_Num">
                                        <font color="red">01</font></td>
                                    <td id="TSC1" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC113">
                                        <asp:HyperLink ID="HLC1" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">11</font></td>
                                    <td id="TSC11" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC114" style="color: #008000">
                                        <asp:HyperLink ID="HLC11" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">21</font></td>
                                    <td id="TSC21" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC115" style="color: #008000">
                                        <asp:HyperLink ID="HLC21" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">31</font></td>
                                    <td id="TSC31" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC116" style="color: #008000">
                                        <asp:HyperLink ID="HLC31" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="blue">41</font></td>
                                    <td id="TSC41" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC117">
                                        <asp:HyperLink ID="HLC41" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMC118" runat="server" align="middle">
                                        <a href="#1"><span style="text-decoration: underline">正码特一</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">02</font></td>
                                    <td id="TSC2" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC119">
                                        <asp:HyperLink ID="HLC2" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="red"><span>12</span></font></td>
                                    <td id="TSC12" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC120" style="color: #008000">
                                        <asp:HyperLink ID="HLC12" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">22</font></td>
                                    <td id="TSC22" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC121" style="color: #008000">
                                        <asp:HyperLink ID="HLC22" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green"><span>32</span></font></td>
                                    <td id="TSC32" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC122">
                                        <asp:HyperLink ID="HLC32" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">42</font></td>
                                    <td id="TSC42" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC123">
                                        <asp:HyperLink ID="HLC42" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMC124" runat="server" align="middle">
                                        <a href="#2"><span style="text-decoration: underline">正码特二</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">03</font></td>
                                    <td id="TSC3" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC125">
                                        <asp:HyperLink ID="HLC3" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">13</font></td>
                                    <td id="TSC13" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC126">
                                        <asp:HyperLink ID="HLC13" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">23</font></td>
                                    <td id="TSC23" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC127">
                                        <asp:HyperLink ID="HLC23" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">33</font></td>
                                    <td id="TSC33" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC128">
                                        <asp:HyperLink ID="HLC33" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">43</font></td>
                                    <td id="TSC43" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC129">
                                        <asp:HyperLink ID="HLC43" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMC130" runat="server" class="show_Td_pl" align="right">
                                        正码特三<a href="#3"><span style="text-decoration: underline"></span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">04</font></td>
                                    <td id="TSC4" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC131">
                                        <asp:HyperLink ID="HLC4" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">14</font></td>
                                    <td id="TSC14" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC132">
                                        <asp:HyperLink ID="HLC14" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">24</font></td>
                                    <td id="TSC24" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC133">
                                        <asp:HyperLink ID="HLC24" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">34</font></td>
                                    <td id="TSC34" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC134">
                                        <asp:HyperLink ID="HLC34" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">44</font></td>
                                    <td id="TSC44" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC135">
                                        <asp:HyperLink ID="HLC44" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMC136" runat="server" align="middle">
                                        <a href="#4"><span style="text-decoration: underline">正码特四</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">05</font></td>
                                    <td id="TSC5" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC137">
                                        <asp:HyperLink ID="HLC5" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">15</font></td>
                                    <td id="TSC15" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC138">
                                        <asp:HyperLink ID="HLC15" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">25</font></td>
                                    <td id="TSC25" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC139">
                                        <asp:HyperLink ID="HLC25" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">35</font></td>
                                    <td id="TSC35" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC140">
                                        <asp:HyperLink ID="HLC35" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">45</font></td>
                                    <td id="TSC45" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC141">
                                        <asp:HyperLink ID="HLC45" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMC142" runat="server" align="middle">
                                        <a href="#5"><span style="text-decoration: underline">正码特五</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">06</font></td>
                                    <td id="TSC6" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC143">
                                        <asp:HyperLink ID="HLC6" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">16</font></td>
                                    <td id="TSC16" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC144">
                                        <asp:HyperLink ID="HLC16" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">26</font></td>
                                    <td id="TSC26" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC145">
                                        <asp:HyperLink ID="HLC26" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">36</font></td>
                                    <td id="TSC36" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC146">
                                        <asp:HyperLink ID="HLC36" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">46</font></td>
                                    <td id="TSC46" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC147">
                                        <asp:HyperLink ID="HLC46" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMC148" runat="server" align="middle">
                                        <a href="#6"><span style="text-decoration: underline">正码特六</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">07</font></td>
                                    <td id="TSC7" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC149">
                                        <asp:HyperLink ID="HLC7" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">17</font></td>
                                    <td id="TSC17" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC150">
                                        <asp:HyperLink ID="HLC17" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">27</font></td>
                                    <td id="TSC27" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC151">
                                        <asp:HyperLink ID="HLC27" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">37</font></td>
                                    <td id="TSC37" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC152">
                                        <asp:HyperLink ID="HLC37" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">47</font></td>
                                    <td id="TSC47" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC153">
                                        <asp:HyperLink ID="HLC47" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMC154" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">08</font></td>
                                    <td id="TSC8" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC155">
                                        <asp:HyperLink ID="HLC8" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">18</font></td>
                                    <td id="TSC18" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC156">
                                        <asp:HyperLink ID="HLC18" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">28</font></td>
                                    <td id="TSC28" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC157">
                                        <asp:HyperLink ID="HLC28" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">38</font></td>
                                    <td id="TSC38" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC158">
                                        <asp:HyperLink ID="HLC38" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">48</font></td>
                                    <td id="TSC48" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC159">
                                        <asp:HyperLink ID="HLC48" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMC160" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">09</font></td>
                                    <td id="TSC9" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC49">
                                        <asp:HyperLink ID="HLC9" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">19</font></td>
                                    <td id="TSC19" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC50">
                                        <asp:HyperLink ID="HLC19" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">29</font></td>
                                    <td id="TSC29" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC51">
                                        <asp:HyperLink ID="HLC29" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">39</font></td>
                                    <td id="TSC39" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC52">
                                        <asp:HyperLink ID="HLC39" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">49</font></td>
                                    <td id="TSC49" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC53">
                                        <asp:HyperLink ID="HLC49" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMC54" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">10</font></td>
                                    <td id="TSC10" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC55">
                                        <asp:HyperLink ID="HLC10" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">20</font></td>
                                    <td id="TSC20" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC56">
                                        <asp:HyperLink ID="HLC20" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">30</font></td>
                                    <td id="TSC30" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC57">
                                        <asp:HyperLink ID="HLC30" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">40</font></td>
                                    <td id="TSC40" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMC58">
                                        <asp:HyperLink ID="HLC40" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td align="middle" colspan="3">
                                    </td>
                                    <td class="show_Td_pl" align="right" colspan="1">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="ra_listbet_tab" id="glist_table_t4" cellspacing="1" cellpadding="0" border="0" runat="server">
                            <tbody>
                                <tr class="ra_listbet_title">
                                    <td colspan="18">
                                        <a name="4"></a>正码特四
                                    </td>
                                </tr>
                                <tr class="ra_listbet_title">
                                    <td width="40">
                                        时间</td>
                                    <td width="30">
                                        期数</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td rowspan="10" id="LabtmwindateD" runat="server">
                                        &nbsp;04-17<br />
                                        20:35</td>
                                    <td align="middle" rowspan="10" id="LabtmwinnoD" runat="server">
                                    </td>
                                    <td class="Td_Title_Num">
                                        <font color="red">01</font></td>
                                    <td id="TSD1" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD163">
                                        <asp:HyperLink ID="HLD1" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">11</font></td>
                                    <td id="TSD11" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD164" style="color: #008000">
                                        <asp:HyperLink ID="HLD11" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">21</font></td>
                                    <td id="TSD21" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD165" style="color: #008000">
                                        <asp:HyperLink ID="HLD21" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">31</font></td>
                                    <td id="TSD31" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD166" style="color: #008000">
                                        <asp:HyperLink ID="HLD31" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="blue">41</font></td>
                                    <td id="TSD41" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD167">
                                        <asp:HyperLink ID="HLD41" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMD168" runat="server" align="middle">
                                        <a href="#1"><span style="text-decoration: underline">正码特一</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">02</font></td>
                                    <td id="TSD2" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD169">
                                        <asp:HyperLink ID="HLD2" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="red"><span>12</span></font></td>
                                    <td id="TSD12" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD170" style="color: #008000">
                                        <asp:HyperLink ID="HLD12" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">22</font></td>
                                    <td id="TSD22" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD171" style="color: #008000">
                                        <asp:HyperLink ID="HLD22" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green"><span>32</span></font></td>
                                    <td id="TSD32" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD172">
                                        <asp:HyperLink ID="HLD32" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">42</font></td>
                                    <td id="TSD42" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD173">
                                        <asp:HyperLink ID="HLD42" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMD174" runat="server" align="middle">
                                        <a href="#2"><span style="text-decoration: underline">正码特二</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">03</font></td>
                                    <td id="TSD3" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD175">
                                        <asp:HyperLink ID="HLD3" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">13</font></td>
                                    <td id="TSD13" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD176">
                                        <asp:HyperLink ID="HLD13" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">23</font></td>
                                    <td id="TSD23" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD177">
                                        <asp:HyperLink ID="HLD23" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">33</font></td>
                                    <td id="TSD33" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD178">
                                        <asp:HyperLink ID="HLD33" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">43</font></td>
                                    <td id="TSD43" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD179">
                                        <asp:HyperLink ID="HLD43" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMD180" runat="server" align="middle">
                                        <a href="#3"><span style="text-decoration: underline">正码特三</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">04</font></td>
                                    <td id="TSD4" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD181">
                                        <asp:HyperLink ID="HLD4" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">14</font></td>
                                    <td id="TSD14" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD182">
                                        <asp:HyperLink ID="HLD14" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">24</font></td>
                                    <td id="TSD24" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD183">
                                        <asp:HyperLink ID="HLD24" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">34</font></td>
                                    <td id="TSD34" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD184">
                                        <asp:HyperLink ID="HLD34" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">44</font></td>
                                    <td id="TSD44" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD185">
                                        <asp:HyperLink ID="HLD44" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMD186" runat="server" align="middle">
                                        正码特四<a href="#4"><span style="text-decoration: underline"></span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">05</font></td>
                                    <td id="TSD5" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD187">
                                        <asp:HyperLink ID="HLD5" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">15</font></td>
                                    <td id="TSD15" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD188">
                                        <asp:HyperLink ID="HLD15" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">25</font></td>
                                    <td id="TSD25" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD189">
                                        <asp:HyperLink ID="HLD25" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">35</font></td>
                                    <td id="TSD35" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD190">
                                        <asp:HyperLink ID="HLD35" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">45</font></td>
                                    <td id="TSD45" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD191">
                                        <asp:HyperLink ID="HLD45" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMD192" runat="server" align="middle">
                                        <a href="#5"><span style="text-decoration: underline">正码特五</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">06</font></td>
                                    <td id="TSD6" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD193">
                                        <asp:HyperLink ID="HLD6" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">16</font></td>
                                    <td id="TSD16" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD194">
                                        <asp:HyperLink ID="HLD16" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">26</font></td>
                                    <td id="TSD26" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD195">
                                        <asp:HyperLink ID="HLD26" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">36</font></td>
                                    <td id="TSD36" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD196">
                                        <asp:HyperLink ID="HLD36" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">46</font></td>
                                    <td id="TSD46" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD197">
                                        <asp:HyperLink ID="HLD46" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMD198" runat="server" align="middle">
                                        <a href="#6"><span style="text-decoration: underline">正码特六</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">07</font></td>
                                    <td id="TSD7" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD199">
                                        <asp:HyperLink ID="HLD7" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">17</font></td>
                                    <td id="TSD17" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD200">
                                        <asp:HyperLink ID="HLD17" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">27</font></td>
                                    <td id="TSD27" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD201">
                                        <asp:HyperLink ID="HLD27" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">37</font></td>
                                    <td id="TSD37" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD202">
                                        <asp:HyperLink ID="HLD37" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">47</font></td>
                                    <td id="TSD47" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD203">
                                        <asp:HyperLink ID="HLD47" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMD204" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">08</font></td>
                                    <td id="TSD8" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD205">
                                        <asp:HyperLink ID="HLD8" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">18</font></td>
                                    <td id="TSD18" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD206">
                                        <asp:HyperLink ID="HLD18" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">28</font></td>
                                    <td id="TSD28" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD207">
                                        <asp:HyperLink ID="HLD28" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">38</font></td>
                                    <td id="TSD38" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD208">
                                        <asp:HyperLink ID="HLD38" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">48</font></td>
                                    <td id="TSD48" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD209">
                                        <asp:HyperLink ID="HLD48" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMD210" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">09</font></td>
                                    <td id="TSD9" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD49">
                                        <asp:HyperLink ID="HLD9" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">19</font></td>
                                    <td id="TSD19" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD50">
                                        <asp:HyperLink ID="HLD19" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">29</font></td>
                                    <td id="TSD29" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD51">
                                        <asp:HyperLink ID="HLD29" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">39</font></td>
                                    <td id="TSD39" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD52">
                                        <asp:HyperLink ID="HLD39" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">49</font></td>
                                    <td id="TSD49" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD53">
                                        <asp:HyperLink ID="HLD49" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMD54" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">10</font></td>
                                    <td id="TSD10" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD55">
                                        <asp:HyperLink ID="HLD10" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">20</font></td>
                                    <td id="TSD20" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD56">
                                        <asp:HyperLink ID="HLD20" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">30</font></td>
                                    <td id="TSD30" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD57">
                                        <asp:HyperLink ID="HLD30" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">40</font></td>
                                    <td id="TSD40" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMD58">
                                        <asp:HyperLink ID="HLD40" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td align="middle" colspan="3">
                                    </td>
                                    <td class="show_Td_pl" align="right" colspan="1">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="ra_listbet_tab" id="glist_table_t5" cellspacing="1" cellpadding="0" border="0" runat="server">
                            <tbody>
                                <tr class="ra_listbet_title">
                                    <td colspan="18">
                                        <a name="5"></a>正码特五
                                    </td>
                                </tr>
                                <tr class="ra_listbet_title">
                                    <td width="40">
                                        时间</td>
                                    <td width="30">
                                        期数</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td rowspan="10" id="LabtmwindateE" runat="server">
                                        &nbsp;04-17<br />
                                        20:35</td>
                                    <td align="middle" rowspan="10" id="LabtmwinnoE" runat="server">
                                    </td>
                                    <td class="Td_Title_Num">
                                        <font color="red">01</font></td>
                                    <td id="TSE1" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME213">
                                        <asp:HyperLink ID="HLE1" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">11</font></td>
                                    <td id="TSE11" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME214" style="color: #008000">
                                        <asp:HyperLink ID="HLE11" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">21</font></td>
                                    <td id="TSE21" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME215" style="color: #008000">
                                        <asp:HyperLink ID="HLE21" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">31</font></td>
                                    <td id="TSE31" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME216" style="color: #008000">
                                        <asp:HyperLink ID="HLE31" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="blue">41</font></td>
                                    <td id="TSE41" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME217">
                                        <asp:HyperLink ID="HLE41" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TME218" runat="server" align="middle">
                                        <a href="#1"><span style="text-decoration: underline">正码特一</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">02</font></td>
                                    <td id="TSE2" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME219">
                                        <asp:HyperLink ID="HLE2" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="red"><span>12</span></font></td>
                                    <td id="TSE12" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME220" style="color: #008000">
                                        <asp:HyperLink ID="HLE12" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">22</font></td>
                                    <td id="TSE22" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME221" style="color: #008000">
                                        <asp:HyperLink ID="HLE22" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green"><span>32</span></font></td>
                                    <td id="TSE32" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME222">
                                        <asp:HyperLink ID="HLE32" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">42</font></td>
                                    <td id="TSE42" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME223">
                                        <asp:HyperLink ID="HLE42" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TME224" runat="server" align="middle">
                                        <a href="#2"><span style="text-decoration: underline">正码特二</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">03</font></td>
                                    <td id="TSE3" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME225">
                                        <asp:HyperLink ID="HLE3" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">13</font></td>
                                    <td id="TSE13" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME226">
                                        <asp:HyperLink ID="HLE13" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">23</font></td>
                                    <td id="TSE23" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME227">
                                        <asp:HyperLink ID="HLE23" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">33</font></td>
                                    <td id="TSE33" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME228">
                                        <asp:HyperLink ID="HLE33" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">43</font></td>
                                    <td id="TSE43" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME229">
                                        <asp:HyperLink ID="HLE43" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TME230" runat="server" align="middle">
                                        <a href="#3"><span style="text-decoration: underline">正码特三</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">04</font></td>
                                    <td id="TSE4" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME231">
                                        <asp:HyperLink ID="HLE4" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">14</font></td>
                                    <td id="TSE14" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME232">
                                        <asp:HyperLink ID="HLE14" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">24</font></td>
                                    <td id="TSE24" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME233">
                                        <asp:HyperLink ID="HLE24" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">34</font></td>
                                    <td id="TSE34" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME234">
                                        <asp:HyperLink ID="HLE34" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">44</font></td>
                                    <td id="TSE44" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME235">
                                        <asp:HyperLink ID="HLE44" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TME236" runat="server" align="middle">
                                        <a href="#4"><span style="text-decoration: underline">正码特四</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">05</font></td>
                                    <td id="TSE5" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME237">
                                        <asp:HyperLink ID="HLE5" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">15</font></td>
                                    <td id="TSE15" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME238">
                                        <asp:HyperLink ID="HLE15" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">25</font></td>
                                    <td id="TSE25" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME239">
                                        <asp:HyperLink ID="HLE25" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">35</font></td>
                                    <td id="TSE35" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME240">
                                        <asp:HyperLink ID="HLE35" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">45</font></td>
                                    <td id="TSE45" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME241">
                                        <asp:HyperLink ID="HLE45" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TME242" runat="server" align="middle">
                                        正码特五<a href="#5"><span style="text-decoration: underline"></span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">06</font></td>
                                    <td id="TSE6" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME243">
                                        <asp:HyperLink ID="HLE6" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">16</font></td>
                                    <td id="TSE16" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME244">
                                        <asp:HyperLink ID="HLE16" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">26</font></td>
                                    <td id="TSE26" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME245">
                                        <asp:HyperLink ID="HLE26" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">36</font></td>
                                    <td id="TSE36" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME246">
                                        <asp:HyperLink ID="HLE36" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">46</font></td>
                                    <td id="TSE46" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME247">
                                        <asp:HyperLink ID="HLE46" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TME248" runat="server" align="middle">
                                        <a href="#6"><span style="text-decoration: underline">正码特六</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">07</font></td>
                                    <td id="TSE7" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME249">
                                        <asp:HyperLink ID="HLE7" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">17</font></td>
                                    <td id="TSE17" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME250">
                                        <asp:HyperLink ID="HLE17" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">27</font></td>
                                    <td id="TSE27" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME251">
                                        <asp:HyperLink ID="HLE27" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">37</font></td>
                                    <td id="TSE37" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME252">
                                        <asp:HyperLink ID="HLE37" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">47</font></td>
                                    <td id="TSE47" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME253">
                                        <asp:HyperLink ID="HLE47" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TME254" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">08</font></td>
                                    <td id="TSE8" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME255">
                                        <asp:HyperLink ID="HLE8" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">18</font></td>
                                    <td id="TSE18" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME256">
                                        <asp:HyperLink ID="HLE18" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">28</font></td>
                                    <td id="TSE28" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME257">
                                        <asp:HyperLink ID="HLE28" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">38</font></td>
                                    <td id="TSE38" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME258">
                                        <asp:HyperLink ID="HLE38" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">48</font></td>
                                    <td id="TSE48" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME259">
                                        <asp:HyperLink ID="HLE48" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TME260" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">09</font></td>
                                    <td id="TSE9" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME49">
                                        <asp:HyperLink ID="HLE9" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">19</font></td>
                                    <td id="TSE19" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME50">
                                        <asp:HyperLink ID="HLE19" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">29</font></td>
                                    <td id="TSE29" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME51">
                                        <asp:HyperLink ID="HLE29" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">39</font></td>
                                    <td id="TSE39" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME52">
                                        <asp:HyperLink ID="HLE39" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">49</font></td>
                                    <td id="TSE49" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME53">
                                        <asp:HyperLink ID="HLE49" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TME54" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">10</font></td>
                                    <td id="TSE10" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME55">
                                        <asp:HyperLink ID="HLE10" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">20</font></td>
                                    <td id="TSE20" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME56">
                                        <asp:HyperLink ID="HLE20" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">30</font></td>
                                    <td id="TSE30" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME57">
                                        <asp:HyperLink ID="HLE30" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">40</font></td>
                                    <td id="TSE40" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TME58">
                                        <asp:HyperLink ID="HLE40" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td align="middle" colspan="3">
                                    </td>
                                    <td class="show_Td_pl" align="right" colspan="1">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="ra_listbet_tab" id="glist_table_t6" cellspacing="1" cellpadding="0" border="0" runat="server">
                            <tbody>
                                <tr class="ra_listbet_title">
                                    <td colspan="18">
                                        <a name="6"></a>正码特六
                                    </td>
                                </tr>
                                <tr class="ra_listbet_title">
                                    <td width="40">
                                        时间</td>
                                    <td width="30">
                                        期数</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                        号码</td>
                                    <td width="25">
                                        赔率</td>
                                    <td>
                                        注单</td>
                                    <td width="29">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td rowspan="10" id="LabtmwindateF" runat="server">
                                        &nbsp;04-17<br />
                                        20:35</td>
                                    <td align="middle" rowspan="10" id="LabtmwinnoF" runat="server">
                                    </td>
                                    <td class="Td_Title_Num">
                                        <font color="red">01</font></td>
                                    <td id="TSF1" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF1" runat="server">
                                        <asp:HyperLink ID="HLF1" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">11</font></td>
                                    <td id="TSF11" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF11" runat="server" style="color: #008000">
                                        <asp:HyperLink ID="HLF11" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">21</font></td>
                                    <td id="TSF21" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF21" runat="server" style="color: #008000">
                                        <asp:HyperLink ID="HLF21" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">31</font></td>
                                    <td id="TSF31" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF31" runat="server" style="color: #008000">
                                        <asp:HyperLink ID="HLF31" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="blue">41</font></td>
                                    <td id="TSF41" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF41" runat="server">
                                        <asp:HyperLink ID="HLF41" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMF2" runat="server" align="middle">
                                        <a href="#1"><span style="text-decoration: underline">正码特一</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">02</font></td>
                                    <td id="TSF2" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF3" runat="server">
                                        <asp:HyperLink ID="HLF2" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num" style="color: #008000">
                                        <font color="red"><span>12</span></font></td>
                                    <td id="TSF12" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF12" runat="server" style="color: #008000">
                                        <asp:HyperLink ID="HLF12" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">22</font></td>
                                    <td id="TSF22" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF22" runat="server" style="color: #008000">
                                        <asp:HyperLink ID="HLF22" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green"><span>32</span></font></td>
                                    <td id="TSF32" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF32" runat="server">
                                        <asp:HyperLink ID="HLF32" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">42</font></td>
                                    <td id="TSF42" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF42" runat="server">
                                        <asp:HyperLink ID="HLF42" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMF4" runat="server" align="middle">
                                        <a href="#2"><span style="text-decoration: underline">正码特二</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">03</font></td>
                                    <td id="TSF3" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF5" runat="server">
                                        <asp:HyperLink ID="HLF3" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">13</font></td>
                                    <td id="TSF13" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF13" runat="server">
                                        <asp:HyperLink ID="HLF13" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">23</font></td>
                                    <td id="TSF23" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF23" runat="server">
                                        <asp:HyperLink ID="HLF23" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">33</font></td>
                                    <td id="TSF33" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF33" runat="server">
                                        <asp:HyperLink ID="HLF33" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">43</font></td>
                                    <td id="TSF43" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF43" runat="server">
                                        <asp:HyperLink ID="HLF43" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMF6" runat="server" align="middle">
                                        <a href="#3"><span style="text-decoration: underline">正码特三</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">04</font></td>
                                    <td id="TSF4" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF7" runat="server">
                                        <asp:HyperLink ID="HLF4" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">14</font></td>
                                    <td id="TSF14" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF14" runat="server">
                                        <asp:HyperLink ID="HLF14" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">24</font></td>
                                    <td id="TSF24" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF24" runat="server">
                                        <asp:HyperLink ID="HLF24" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">34</font></td>
                                    <td id="TSF34" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF34" runat="server">
                                        <asp:HyperLink ID="HLF34" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">44</font></td>
                                    <td id="TSF44" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF44" runat="server">
                                        <asp:HyperLink ID="HLF44" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMF8" runat="server" align="middle">
                                        <a href="#4"><span style="text-decoration: underline">正码特四</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">05</font></td>
                                    <td id="TSF5" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF9" runat="server">
                                        <asp:HyperLink ID="HLF5" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">15</font></td>
                                    <td id="TSF15" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF15" runat="server">
                                        <asp:HyperLink ID="HLF15" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">25</font></td>
                                    <td id="TSF25" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF25" runat="server">
                                        <asp:HyperLink ID="HLF25" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">35</font></td>
                                    <td id="TSF35" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF35" runat="server">
                                        <asp:HyperLink ID="HLF35" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">45</font></td>
                                    <td id="TSF45" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF45" runat="server">
                                        <asp:HyperLink ID="HLF45" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMF10" runat="server" align="middle">
                                        <a href="#5"><span style="text-decoration: underline">正码特五</span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="green">06</font></td>
                                    <td id="TSF6" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF16" runat="server">
                                        <asp:HyperLink ID="HLF6" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">16</font></td>
                                    <td id="TSF16" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF17" runat="server">
                                        <asp:HyperLink ID="HLF16" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">26</font></td>
                                    <td id="TSF26" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF26" runat="server">
                                        <asp:HyperLink ID="HLF26" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">36</font></td>
                                    <td id="TSF36" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF36" runat="server">
                                        <asp:HyperLink ID="HLF36" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">46</font></td>
                                    <td id="TSF46" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF46" runat="server">
                                        <asp:HyperLink ID="HLF46" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMF18" runat="server" align="middle">
                                        正码特六<a href="#6"><span style="text-decoration: underline"></span></a></td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">07</font></td>
                                    <td id="TSF7" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF19" runat="server">
                                        <asp:HyperLink ID="HLF7" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">17</font></td>
                                    <td id="TSF17" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF20" runat="server">
                                        <asp:HyperLink ID="HLF17" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">27</font></td>
                                    <td id="TSF27" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF27" runat="server">
                                        <asp:HyperLink ID="HLF27" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">37</font></td>
                                    <td id="TSF37" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF37" runat="server">
                                        <asp:HyperLink ID="HLF37" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">47</font></td>
                                    <td id="TSF47" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF47" runat="server">
                                        <asp:HyperLink ID="HLF47" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMF28" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="red">08</font></td>
                                    <td id="TSF8" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF29" runat="server">
                                        <asp:HyperLink ID="HLF8" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">18</font></td>
                                    <td id="TSF18" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF30" runat="server">
                                        <asp:HyperLink ID="HLF18" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">28</font></td>
                                    <td id="TSF28" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF38" runat="server">
                                        <asp:HyperLink ID="HLF28" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">38</font></td>
                                    <td id="TSF38" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF39" runat="server">
                                        <asp:HyperLink ID="HLF38" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">48</font></td>
                                    <td id="TSF48" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF48" runat="server">
                                        <asp:HyperLink ID="HLF48" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMF40" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">09</font></td>
                                    <td id="TSF9" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF49" runat="server">
                                        <asp:HyperLink ID="HLF9" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">19</font></td>
                                    <td id="TSF19" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF50" runat="server">
                                        <asp:HyperLink ID="HLF19" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">29</font></td>
                                    <td id="TSF29" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF51" runat="server">
                                        <asp:HyperLink ID="HLF29" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">39</font></td>
                                    <td id="TSF39" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF52" runat="server">
                                        <asp:HyperLink ID="HLF39" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="green">49</font></td>
                                    <td id="TSF49" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF53" runat="server">
                                        <asp:HyperLink ID="HLF49" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td id="TMF54" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                </tr>
                                <tr bgcolor="#ffffff">
                                    <td class="Td_Title_Num">
                                        <font color="blue">10</font></td>
                                    <td id="TSF10" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF55" runat="server">
                                        <asp:HyperLink ID="HLF10" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="blue">20</font></td>
                                    <td id="TSF20" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF56" runat="server">
                                        <asp:HyperLink ID="HLF20" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">30</font></td>
                                    <td id="TSF30" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF57" runat="server">
                                        <asp:HyperLink ID="HLF30" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td class="Td_Title_Num">
                                        <font color="red">40</font></td>
                                    <td id="TSF40" runat="server" class="show_Td_pl" align="right">
                                    </td>
                                    <td align="middle" id="TMF58" runat="server">
                                        <asp:HyperLink ID="HLF40" runat="server" class="show_je"></asp:HyperLink></td>
                                    <td align="middle" colspan="3">
                                    </td>
                                    <td class="show_Td_pl" align="right" colspan="1">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0" class="ra_listbet_tab" border="0" id="TSetupPl" runat="server">
            <tr>
                <td bgcolor="#ffffcc" style="height: 24px">
                    <select class="za_select" id="SelZmClass" runat="server" style="width: 149px">
                        <option value="-1" selected>正码特全</option>
                        <option value="A">正码特一</option>
                        <option value="B">正码特二</option>
                        <option value="C">正码特三</option>
                        <option value="D">正码特四</option>
                        <option value="E">正码特五</option>
                        <option value="F">正码特六</option>
                    </select>
                </td>
                <td id="Td50" runat="server" bgcolor="#ffffcc" style="height: 24px" align="right">
                    <input id="WagerTxt" runat="server" maxlength="0" readonly="readonly" style="width: 381px; visibility: hidden;" type="text" /><input id="ButPlValue" runat="server" title="四盘(盘别A、盘别B、盘别C、盘别D)按盘差同时变更"
                        type="checkbox" />按盘差同变</td>
                <td bgcolor="#ffffcc" colspan="2" style="height: 24px; width: 96px;">
                    <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();" Text="确定" Width="43px" />
                    <input type="reset" name="Submit2" value="清除" /></td>
            </tr>
            <tr>
                <td bgcolor="#FFFFCC" style="height: 24px">
                    正码特赔率
                    <input name="textfield2" type="text" size="8" id="TmPlValue" runat="server" /></td>
                <td bgcolor="#FFFFCC" id="TmNoSetup" runat="server" style="height: 24px">
                    <table>
                        <tr>
                            <td class="list_cen" style="text-align: center">
                                <strong><span style="font-size: 11pt; color: #ff0033">
                                    <asp:HyperLink ID="HyperLink11" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectAll()">全部</asp:HyperLink>
                                    &nbsp;&nbsp;
                                    <asp:HyperLink ID="ContTmRBall" runat="server" BackColor="Red" ForeColor="Black" NavigateUrl="javascript:SelectBallType('01.02.07.08.12.13.18.19.23.24.29.30.34.35.40.45.46.')">红波</asp:HyperLink>
                                    &nbsp;
                                    <asp:HyperLink ID="ContTmGBall" runat="server" BackColor="Lime" ForeColor="Black" NavigateUrl="javascript:SelectBallType('05.06.11.16.17.21.22.27.28.32.33.38.39.43.44.49.')">绿波</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmBBall" runat="server" BackColor="Blue" ForeColor="Black" NavigateUrl="javascript:SelectBallType('03.04.09.10.14.15.20.25.26.31.36.37.41.42.47.48.')">蓝波</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmDr" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('01.03.05.07.09.11.13.15.17.19.21.23.25.27.29.31.33.35.37.39.41.43.45.47.')">单</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmSa" runat="server" BackColor="#FF80FF" NavigateUrl="javascript:SelectBallType('02.04.06.08.10.12.14.16.18.20.22.24.26.28.30.32.34.36.38.40.42.44.46.48.')">双</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmDa" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.')">大</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmXa" runat="server" BackColor="#FFC0FF" NavigateUrl="javascript:SelectBallType('01.02.03.04.05.06.07.08.09.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.')">小</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmDrDa" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('25.27.29.31.33.35.37.39.41.43.45.47.')">单大</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmDrXa" runat="server" BackColor="#FF80FF" NavigateUrl="javascript:SelectBallType('01.03.05.07.09.11.13.15.17.19.21.23.')">单小</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmSaDa" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('26.28.30.32.34.36.38.40.42.44.46.48.')">双大</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmSaXa" runat="server" BackColor="#FFC0FF" NavigateUrl="javascript:SelectBallType('02.04.06.08.10.12.14.16.18.20.22.24.')">双小</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmHdr" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('01.03.05.07.09.10.12.14.16.18.21.23.25.27.29.30.32.34.36.38.41.43.45.47.')">合单</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="ContTmHSa" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBallType('02.04.06.08.11.13.15.17.19.20.22.24.26.28.31.33.35.37.39.40.42.44.46.48.')">合双</asp:HyperLink>&nbsp;
                                </span></strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="list_cen" style="text-align: center">
                                <strong><span style="font-size: 11pt; color: #000000">
                                    <asp:HyperLink ID="Cont_wx_j" runat="server" BackColor="Yellow">金</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_wx_m" runat="server" BackColor="#FFC080">木</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_wx_s" runat="server" BackColor="#8080FF">水</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_wx_h" runat="server" BackColor="#FF80FF">火</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_wx_t" runat="server" BackColor="SaddleBrown">土</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_jq" runat="server" BackColor="#FF80FF">家禽</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_ys" runat="server" BackColor="#80FFFF">野兽</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_qx" runat="server" BackColor="#FFFF80">前六</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_hx" runat="server" BackColor="#80FF80">后六</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_1" runat="server">鼠</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_2" runat="server">牛</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_3" runat="server">虎</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_4" runat="server">兔</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_5" runat="server">龙</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_6" runat="server">蛇</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_7" runat="server">马</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_8" runat="server">羊</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_9" runat="server">猴</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_10" runat="server">鸡</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_11" runat="server">狗</asp:HyperLink>&nbsp;
                                    <asp:HyperLink ID="Cont_12" runat="server">猪</asp:HyperLink>
                                </span></strong>
                            </td>
                        </tr>
                    </table>
                </td>
                <td colspan="2" bgcolor="#FFFFCC" style="height: 24px; width: 96px;">
                    &nbsp;</td>
            </tr>
        </table>
        <table id="TableA" runat="server" border="0" cellpadding="0" cellspacing="1" class="m_tab_ed">
            <tr align="center" class="m_title_edit">
                <td>
                    <div align="center">
                        项目</div>
                </td>
                <td>
                    <div align="center">
                        盘差B</div>
                </td>
                <td>
                    <div align="center">
                        盘差C</div>
                </td>
                <td>
                    <div align="center">
                        盘差D</div>
                </td>
                <td>
                    <div align="center">
                        盘差E</div>
                </td>
                <td>
                    <div align="center">
                        盘差F</div>
                </td>
                <td>
                    <div align="center">
                        盘差G</div>
                </td>
            </tr>
            <tr align="center" class="mem_index_cen">
                <td align="left" colspan="7">
                    盘差：为A盘与B盘、C盘、D盘之间的差。A盘赔率变更时，BCD盘以A盘为基础随着变动。如盘差B(为A盘与B盘之间差)=-0.5 如A盘赔率=41时 &nbsp;<br />
                    则B盘赔率=40.5</td>
            </tr>
            <tr align="center" class="mem_index_cen">
                <td align="left" colspan="7">
                    盘差修改：点[设置]--&gt;[赔率自动调节参数设置]--可以修改盘差</td>
            </tr>
        </table>
    </form>
</body>
</html>

