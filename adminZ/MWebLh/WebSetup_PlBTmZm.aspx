<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_PlBTmZm, App_Web_irsz2q38" enableEventValidation="false" %>
<%@ Register Src="WebSetup_Pl_MenuToolsBar.ascx" TagName="WebSetup_Pl_MenuToolsBar" TagPrefix="uc1" %>
<html>
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../style/WebSetup_Pl.css" type="text/css" rel="stylesheet">

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
            


            lSetValue = SetValue("41","A","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ;
            

            
                lSetValue = SetValue("42","B","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
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
                                <select class="za_select" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;"
                                    name="pct" id="pct" runat="server">
                                    <option value="0" selected>全部</option>
                                    <option value="1">笔数</option>
                                    <option value="2">金额</option>
                                </select>
                                <a class="click_text" onclick="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;">
                                    刷新</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label>
                                <select class="za_select" id="retime" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;"
                                    name="retime" runat="server">
                                    <option value="-1" selected>不刷新</option>
                                    <option value="20">20 sec</option>
                                    <option value="40">40 sec</option>
                                    <option value="60">60 sec</option>
                                </select><uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" GameCaption="主盤" runat="server" ItmeChooseName="LinkPlBTmZm"/>

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
                    &nbsp;&nbsp;特码B.正码B &nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table id="TABLE1" cellspacing="0" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr>
                    <td>
                        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
                            <tbody>
                                <tr class="ra_listbet_title">
                                    <td colspan="18">
                                        <a name="1"></a>特码B</td>
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
                                    <td rowspan="10" id="LabtmwindateA" runat="server">
                                        &nbsp;04-17<br>
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
                                    <td id="TMA2" runat="server" class="show_Td_pl" align="right">
                                        <span>特码B</span></td>
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
                                    <td id="TMA4" runat="server" class="show_Td_pl" align="right">
                                        <a href="#2"><span style="text-decoration: underline">正码B</span></a></td>
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
                                    <td id="TMA6" runat="server" class="show_Td_pl" align="right">
                                    </td>
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
                                    <td id="TMA8" runat="server" class="show_Td_pl" align="right">
                                    </td>
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
                                    <td id="TMA10" runat="server" class="show_Td_pl" align="right">
                                    </td>
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
                                    <td id="TMA18" runat="server" class="show_Td_pl" align="right">
                                    </td>
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
                        <table class="ra_listbet_tab" id="glist_table_zm" cellspacing="1" cellpadding="0" border="0" runat="server">
                            <tbody>
                                <tr class="ra_listbet_title">
                                    <td colspan="18">
                                        <a name="2"></a>正码B</td>
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
                                        &nbsp;04-17<br>
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
                                    <td id="TMB68" runat="server" class="show_Td_pl" align="right">
                                        <a href="#1"><span style="text-decoration: underline">特码B</span></a></td>
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
                                    <td id="TMB74" runat="server" class="show_Td_pl" align="right">
                                        正码B<a href="#2"><span style="text-decoration: underline"></span></a></td>
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
                                    <td id="TMB80" runat="server" class="show_Td_pl" align="right">
                                    </td>
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
                                    <td id="TMB86" runat="server" class="show_Td_pl" align="right">
                                    </td>
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
                                    <td id="TMB92" runat="server" class="show_Td_pl" align="right">
                                    </td>
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
                                    <td id="TMB98" runat="server" class="show_Td_pl" align="right">
                                    </td>
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
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0" class="ra_listbet_tab" border="0" id="TSetupPl" runat="server">
            <tr>
                <td bgcolor="#ffffcc" style="height: 24px">
                    <select class="za_select" id="SelZmClass" runat="server" style="width: 111px">
                        <option value="A" selected>特码B</option>
                        <option value="B">正码B</option>
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
                    赔率
                    <input name="textfield2" type="text" size="8" id="TmPlValue" runat="server" /></td>
                <td bgcolor="#FFFFCC" id="TmNoSetup" runat="server" style="height: 24px">
                    <table>
                        <tr>
                            <td class="list_cen" style="text-align: center">
                                <strong><span style="font-size: 11pt; color: #ff0033">
                                    <asp:HyperLink ID="HyperLink11" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectAll()">全部</asp:HyperLink>
                                    &nbsp;
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
