<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_PlZm, App_Web_irsz2q38" enableEventValidation="false" %>

<%@ Register Src="WebSetup_Pl_MenuToolsBar.ascx" TagName="WebSetup_Pl_MenuToolsBar" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>main</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
	            for (var i = 0 ; i < (arrNum.length - 1); i++){
	               var tmno = Number(arrNum[i]);
		            
		            SelectTmOk("TxtEditPl" + tmno.toString(),document.getElementById("TmPlValue").value );
		            
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
	 
	            for (var i = 1 ; i < 50; i++){

		            SelectTmOk("TxtEditPl" + i.toString(),document.getElementById("TmPlValue").value );
		            
	            }
            }
            
            
        function SubData()
        {//生成将修改的字符串

            mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById('WagerTxt').value = "" ;
            var lWagerStr= "",lSetValue = "";
            
            lSetValue = SetValue("05","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ;
            
  
            

            
                lSetValue = SetValue("06","zhdr.zhsa");
                if (lSetValue == "ChkFalse"){
                    return false;
                }                
                lWagerStr = lWagerStr + lSetValue ;
                
                lSetValue = SetValue("07","zhda.zhxa");
                if (lSetValue == "ChkFalse"){
                    return false;
                }   
                lWagerStr = lWagerStr + lSetValue ;
            document.getElementById('WagerTxt').value = lWagerStr ;
        }
 
        function SetValue(vClass,vNoValue)//SubData()//提交数据,进行组合检查
        {
            var arrNo = vNoValue.split(".");
            var lquerstr = "";
            var ltmsumje = 0;

            for (var i = 0 ; i < (arrNo.length ); i++){
               if (arrNo[i] != ""){
	                var  lSelectNo ="TxtEditPl" + arrNo[i];
	                if (isNaN(document.getElementById(lSelectNo).value) == false && document.getElementById(lSelectNo).value != ''){
                        lquerstr = lquerstr +  arrNo[i] + "$" + String( document.getElementById(lSelectNo).value) + ";";
	                }

                    if ( document.getElementById(lSelectNo).value.toLowerCase()=="a" || document.getElementById(lSelectNo).value.toLowerCase()=="b"){
                        var  lLabNo ="Lab"+ arrNo[i];
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
        <table cellspacing="0" cellpadding="0" class="title_m_tab" border="0">
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
                                </select>
                                <uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" GameCaption="主盤" runat="server" ItmeChooseName="LinkPlZm" />
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
            <tr>
                <td class="mem_index_ctrl_Title">
                    &nbsp;&nbsp;正码&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
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
                </tr>
                <tr bgcolor="#ffffff">
                    <td rowspan="11" id="Labtmwindate" runat="server">
                        &nbsp;04-17<br>
                        20:35</td>
                    <td align="middle" rowspan="11" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title_Num">
                        <font color="red">01</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS1">
                    </td>
                    <td align="middle" id="TD1" runat="server">
                        <asp:HyperLink ID="HL1" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">11</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS11">
                    </td>
                    <td align="middle" id="TD11" runat="server">
                        <asp:HyperLink ID="HL11" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">21</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS21">
                    </td>
                    <td align="middle" id="TD21" runat="server">
                        <asp:HyperLink ID="HL21" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">31</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS31">
                    </td>
                    <td align="middle" id="TD31" runat="server">
                        <asp:HyperLink ID="HL31" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">41</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS41">
                    </td>
                    <td align="middle" id="TD41" runat="server">
                        <asp:HyperLink ID="HL41" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="red">02</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS2">
                    </td>
                    <td align="middle" id="TD2" runat="server">
                        <asp:HyperLink ID="HL2" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">12</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS12">
                    </td>
                    <td align="middle" id="TD12" runat="server">
                        <asp:HyperLink ID="HL12" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">22</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS22">
                    </td>
                    <td align="middle" id="TD22" runat="server">
                        <asp:HyperLink ID="HL22" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">32</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS32">
                    </td>
                    <td align="middle" id="TD32" runat="server">
                        <asp:HyperLink ID="HL32" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">42</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS42">
                    </td>
                    <td align="middle" id="TD42" runat="server">
                        <asp:HyperLink ID="HL42" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="blue">03</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS3">
                    </td>
                    <td align="middle" id="TD3" runat="server">
                        <asp:HyperLink ID="HL3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">13</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS13">
                    </td>
                    <td align="middle" id="TD13" runat="server">
                        <asp:HyperLink ID="HL13" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">23</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS23">
                    </td>
                    <td align="middle" id="TD23" runat="server">
                        <asp:HyperLink ID="HL23" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">33</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS33">
                    </td>
                    <td align="middle" id="TD33" runat="server">
                        <asp:HyperLink ID="HL33" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">43</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS43">
                    </td>
                    <td align="middle" id="TD43" runat="server">
                        <asp:HyperLink ID="HL43" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="blue">04</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS4">
                    </td>
                    <td align="middle" id="TD4" runat="server">
                        <asp:HyperLink ID="HL4" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">14</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS14">
                    </td>
                    <td align="middle" id="TD14" runat="server">
                        <asp:HyperLink ID="HL14" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">24</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS24">
                    </td>
                    <td align="middle" id="TD24" runat="server">
                        <asp:HyperLink ID="HL24" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">34</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS34">
                    </td>
                    <td align="middle" id="TD34" runat="server">
                        <asp:HyperLink ID="HL34" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">44</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS44">
                    </td>
                    <td align="middle" id="TD44" runat="server">
                        <asp:HyperLink ID="HL44" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="green">05</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS5">
                    </td>
                    <td align="middle" id="TD5" runat="server">
                        <asp:HyperLink ID="HL5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">15</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS15">
                    </td>
                    <td align="middle" id="TD15" runat="server">
                        <asp:HyperLink ID="HL15" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">25</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS25">
                    </td>
                    <td align="middle" id="TD25" runat="server">
                        <asp:HyperLink ID="HL25" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">35</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS35">
                    </td>
                    <td align="middle" id="TD35" runat="server">
                        <asp:HyperLink ID="HL35" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">45</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS45">
                    </td>
                    <td align="middle" id="TD45" runat="server">
                        <asp:HyperLink ID="HL45" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="green">06</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS6">
                    </td>
                    <td align="middle" id="TD6" runat="server">
                        <asp:HyperLink ID="HL6" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">16</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS16">
                    </td>
                    <td align="middle" id="TD16" runat="server">
                        <asp:HyperLink ID="HL16" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">26</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS26">
                    </td>
                    <td align="middle" id="TD26" runat="server">
                        <asp:HyperLink ID="HL26" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">36</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS36">
                    </td>
                    <td align="middle" id="TD36" runat="server">
                        <asp:HyperLink ID="HL36" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">46</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS46">
                    </td>
                    <td align="middle" id="TD46" runat="server">
                        <asp:HyperLink ID="HL46" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="red">07</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS7">
                    </td>
                    <td align="middle" id="TD7" runat="server">
                        <asp:HyperLink ID="HL7" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">17</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS17">
                    </td>
                    <td align="middle" id="TD17" runat="server">
                        <asp:HyperLink ID="HL17" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">27</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS27">
                    </td>
                    <td align="middle" id="TD27" runat="server">
                        <asp:HyperLink ID="HL27" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">37</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS37">
                    </td>
                    <td align="middle" id="TD37" runat="server">
                        <asp:HyperLink ID="HL37" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">47</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS47">
                    </td>
                    <td align="middle" id="TD47" runat="server">
                        <asp:HyperLink ID="HL47" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="red">08</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS8">
                    </td>
                    <td align="middle" id="TD8" runat="server">
                        <asp:HyperLink ID="HL8" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">18</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS18">
                    </td>
                    <td align="middle" id="TD18" runat="server">
                        <asp:HyperLink ID="HL18" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">28</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS28">
                    </td>
                    <td align="middle" id="TD28" runat="server">
                        <asp:HyperLink ID="HL28" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">38</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS38">
                    </td>
                    <td align="middle" id="TD38" runat="server">
                        <asp:HyperLink ID="HL38" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">48</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS48">
                    </td>
                    <td align="middle" id="TD48" runat="server">
                        <asp:HyperLink ID="HL48" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="blue">09</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS9">
                    </td>
                    <td align="middle" id="TD9" runat="server">
                        <asp:HyperLink ID="HL9" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">19</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS19">
                    </td>
                    <td align="middle" id="TD19" runat="server">
                        <asp:HyperLink ID="HL19" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">29</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS29">
                    </td>
                    <td align="middle" id="TD29" runat="server">
                        <asp:HyperLink ID="HL29" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">39</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS39">
                    </td>
                    <td align="middle" id="TD39" runat="server">
                        <asp:HyperLink ID="HL39" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">49</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS49">
                    </td>
                    <td align="middle" id="TD49" runat="server">
                        <asp:HyperLink ID="HL49" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="blue">10</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS10">
                    </td>
                    <td align="middle" id="TD10" runat="server">
                        <asp:HyperLink ID="HL10" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">20</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS20">
                    </td>
                    <td align="middle" id="TD20" runat="server">
                        <asp:HyperLink ID="HL20" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">30</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS30">
                    </td>
                    <td align="middle" id="TD30" runat="server">
                        <asp:HyperLink ID="HL30" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">40</font></td>
                    <td runat="server" class="show_Td_pl" align="right" id="TS40">
                    </td>
                    <td align="middle" id="TD40" runat="server">
                        <asp:HyperLink ID="HL40" runat="server" class="show_je"></asp:HyperLink></td>
                    <td align="middle" colspan="3">
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        总单
                    </td>
                    <td id="TSzhdr" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" style="width: 68px; height: 19px;" id="TDzhdr" runat="server">
                        <asp:HyperLink ID="HLzhdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        总双</td>
                    <td id="TSzhsa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" style="width: 68px; height: 19px;" id="TDzhsa" runat="server">
                        <asp:HyperLink ID="HLzhsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        总大
                    </td>
                    <td id="TSzhda" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" style="width: 68px; height: 19px;" id="TDzhda" runat="server">
                        <asp:HyperLink ID="HLzhda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        总小</td>
                    <td id="TSzhxa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" style="width: 68px; height: 19px;" id="TDzhxa" runat="server">
                        <asp:HyperLink ID="HLzhxa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" colspan="3">
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffcc" colspan="17">
                        <table id="TSetupPl" runat="server" border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td bgcolor="#ffffcc" style="height: 24px">
                                </td>
                                <td id="Td50" runat="server" bgcolor="#ffffcc" style="height: 24px" align="right">
                                    <input id="WagerTxt" runat="server" maxlength="0" readonly="readonly" style="width: 381px; visibility: hidden;" type="text" /><input id="ButPlValue" runat="server" title="四盘(盘别A、盘别B、盘别C、盘别D)按盘差同时变更"
                                        type="checkbox" />按盘差同变</td>
                                <td bgcolor="#ffffcc" colspan="2" style="width: 96px; height: 24px">
                                    <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();" Text="确定" Width="43px" />
                                    <input name="Submit2" type="reset" value="清除" /></td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" style="height: 24px">
                                    特赔率
                                    <input id="TmPlValue" runat="server" name="textfield2" size="8" type="text" /></td>
                                <td id="TmNoSetup" runat="server" bgcolor="#ffffcc" style="height: 24px">
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
                                <td bgcolor="#ffffcc" colspan="2" style="width: 96px; height: 24px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" style="height: 42px">
                                    赔 &nbsp; 率
                                    <input id="TmPlValueA" runat="server" name="textfield2" size="8" type="text" /></td>
                                <td id="Td52" runat="server" bgcolor="#ffffcc" style="height: 42px">
                                    <strong><span style="font-size: 11pt; color: #cc0000">
                                        <asp:HyperLink ID="HyperLink12" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectBall('zhsa.zhdr.zhda.zhxa.')">全部</asp:HyperLink>
                                        &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="HyperLink9" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBall('zhdr.')">总单</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink10" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBall('zhsa.')">总双</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink7" runat="server" BackColor="#FF80FF" NavigateUrl="javascript:SelectBall('zhda.')">总大</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBall('zhxa.')">总小</asp:HyperLink>&nbsp;</span></strong></td>
                                <td bgcolor="#ffffcc" style="height: 42px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="m_tab_ed" cellspacing="1" cellpadding="0" border="0" id="TableA" runat="server">
            <tr class="m_title_edit" align="center">
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
            <tr align="center" class="mem_index_cen">
                <td align="left" colspan="7">
                    正碼B赔率随正碼A波动：当[正碼A到正碼B赔率差]=0时，正碼B赔率不随正碼A赔率波动,当[正碼A到正碼B赔率差]不为0时,按差值波动。<br />
                    点[设置]--[系统参数设置]--可以修改[正碼A到正碼B赔率差]</td>
            </tr>
        </table>
    </form>
</body>
</html>
