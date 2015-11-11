<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_WebSetup_PlYxWs, App_Web_irsz2q38" enableEventValidation="false" %>
<%@ Register Src="WebSetup_Pl_MenuToolsBar.ascx" TagName="WebSetup_Pl_MenuToolsBar" TagPrefix="uc1" %>
<html>
<head id="Head1" runat="server">
    <title>main</title>
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

        function SelectClassAll(vTmplavalue,vTmno){
             if (!(document.getElementById(vTmplavalue).value.toLowerCase() == 'a' || document.getElementById(vTmplavalue).value.toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById(vTmplavalue).value) == true || document.getElementById(vTmplavalue).value == '' )
                     {
                        document.getElementById(vTmplavalue).focus();
                        alert("设置的赔率!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById(vTmplavalue).value = Number(document.getElementById(vTmplavalue).value) ;
                    }
            }
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = arrNum[i];
	            
	            SelectTmOk("TxtEditPl" + tmno.toString(),document.getElementById(vTmplavalue).value);
	            
            }
        }         
        function tmpl(vTmplavalue,vTmno){
            vTmno='TxtEditPl' + vTmno;
             if (!(document.getElementById(vTmplavalue).value.toLowerCase() == 'a' || document.getElementById(vTmplavalue).value.toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById(vTmplavalue).value) == true || document.getElementById(vTmplavalue).value == '' )
                     {
                        document.getElementById(vTmplavalue).focus();
                        alert("设置的赔率!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById(vTmplavalue).value = Number(document.getElementById(vTmplavalue).value) ;
                    }
            }

	            
	            SelectTmOk(vTmno,document.getElementById(vTmplavalue).value);

        }
        


        
        function SubData()
        {

            mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById('WagerTxt').value = "" ;
            var lWagerStr= "",lSetValue = "";
            

            
            lSetValue = SetValue("19","yx1.yx2.yx3.yx4.yx5.yx6.yx7.yx8.yx9.yx10.yx11.yx12");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
            
            
            lSetValue = SetValue("24","ws1.ws2.ws3.ws4.ws5.ws6.ws7.ws8.ws9.ws0");//尾数
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
<body onload="onLoad();" text="#000000" vlink="#0000ff" bgcolor="#ffffff" leftmargin="0" topmargin="0">
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
                                </select><uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" GameCaption="主盤" runat="server" ItmeChooseName="LinkPlYxWs"/>

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
                    &nbsp;&nbsp;一肖.尾数&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40">
                        时间</td>
                    <td width="50">
                        一肖</td>
                    <td width="70">
                        号码</td>
                    <td>
                        赔率</td>
                    <td width="80">
                        注单</td>
                    <td width="50">
                        一肖</td>
                    <td width="70">
                        号码</td>
                    <td>
                        赔率</td>
                    <td width="80">
                        注单</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td rowspan="2" id="Labtmwindate" runat="server">
                    </td>
                    <td class="Td_Title">
                        鼠</td>
                    <td align="middle" id="TmNoyx1" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx1">
                    </td>
                    <td align="middle" id="TmJeyx1" runat="server">
                        <asp:HyperLink ID="HLyx1" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        牛</td>
                    <td align="middle" id="TmNoyx2" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx2">
                    </td>
                    <td align="middle" id="TmJeyx2" runat="server">
                        <asp:HyperLink ID="HLyx2" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        虎</td>
                    <td align="middle" id="TmNoyx3" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx3">
                    </td>
                    <td align="middle" id="TmJeyx3" runat="server">
                        <asp:HyperLink ID="HLyx3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        兔</td>
                    <td align="middle" id="TmNoyx4" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx4">
                    </td>
                    <td align="middle" id="TmJeyx4" runat="server">
                        <asp:HyperLink ID="HLyx4" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" class="ra_listbet_title">
                        期数</td>
                    <td class="Td_Title">
                        龙</td>
                    <td align="middle" id="TmNoyx5" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx5">
                    </td>
                    <td align="middle" id="TmJeyx5" runat="server">
                        <asp:HyperLink ID="HLyx5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        蛇</td>
                    <td align="middle" id="TmNoyx6" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx6">
                    </td>
                    <td align="middle" id="TmJeyx6" runat="server">
                        <asp:HyperLink ID="HLyx6" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" rowspan="9" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title" style="height: 25px">
                        马</td>
                    <td align="middle" id="TmNoyx7" runat="server" style="height: 25px">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" style="height: 25px" id="TSyx7">
                    </td>
                    <td align="middle" id="TmJeyx7" runat="server" style="height: 25px">
                        <asp:HyperLink ID="HLyx7" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        羊</td>
                    <td align="middle" id="TmNoyx8" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx8">
                    </td>
                    <td align="middle" id="TmJeyx8" runat="server">
                        <asp:HyperLink ID="HLyx8" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        猴</td>
                    <td align="middle" id="TmNoyx9" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx9">
                    </td>
                    <td align="middle" id="TmJeyx9" runat="server">
                        <asp:HyperLink ID="HLyx9" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        鸡</td>
                    <td align="middle" id="TmNoyx10" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx10">
                    </td>
                    <td align="middle" id="TmJeyx10" runat="server">
                        <asp:HyperLink ID="HLyx10" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        狗</td>
                    <td align="middle" id="TmNoyx11" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx11">
                    </td>
                    <td align="middle" id="TmJeyx11" runat="server">
                        <asp:HyperLink ID="HLyx11" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        猪</td>
                    <td align="middle" id="TmNoyx12" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSyx12">
                    </td>
                    <td align="middle" id="TmJeyx12" runat="server">
                        <asp:HyperLink ID="HLyx12" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff" class="ra_listbet_title">
                    <td>
                        尾数</td>
                    <td>
                        号码</td>
                    <td>
                        赔率</td>
                    <td>
                        注单</td>
                    <td>
                        尾数</td>
                    <td>
                        号码</td>
                    <td>
                        赔率</td>
                    <td>
                        注单</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        1尾</td>
                    <td align="center">
                        01.11.21.31.41.</td>
                    <td id="TSws1" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews1" runat="server">
                        <asp:HyperLink ID="HLws1" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        6尾</td>
                    <td align="center">
                        06.16.26.36.46.</td>
                    <td id="TSws6" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews6" runat="server">
                        <asp:HyperLink ID="HLws6" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        2尾</td>
                    <td align="center">
                        02.12.22.31.42.</td>
                    <td id="TSws2" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews2" runat="server">
                        <asp:HyperLink ID="HLws2" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title" style="height: 25px">
                        7尾</td>
                    <td style="height: 25px" align="center">
                        07.17.27.37.47.</td>
                    <td id="TSws7" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                    </td>
                    <td align="middle" id="TmJews7" runat="server" style="height: 25px">
                        <asp:HyperLink ID="HLws7" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        3尾</td>
                    <td align="center">
                        03.13.23.33.43.</td>
                    <td id="TSws3" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews3" runat="server">
                        <asp:HyperLink ID="HLws3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        8尾</td>
                    <td align="center">
                        08.18.28.38.48.</td>
                    <td id="TSws8" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews8" runat="server">
                        <asp:HyperLink ID="HLws8" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        4尾</td>
                    <td align="center">
                        04.14.24.34.44.</td>
                    <td id="TSws4" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews4" runat="server">
                        <asp:HyperLink ID="HLws4" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        9尾</td>
                    <td align="center">
                        09.19.29.39.49.</td>
                    <td id="TSws9" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews9" runat="server">
                        <asp:HyperLink ID="HLws9" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title" style="height: 25px">
                        5尾</td>
                    <td style="height: 25px" align="center">
                        05.15.25.35.45.</td>
                    <td id="TSws5" runat="server" class="show_Td_pl" align="right" style="height: 25px">
                    </td>
                    <td align="middle" id="TmJews5" runat="server" style="height: 25px">
                        <asp:HyperLink ID="HLws5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        0尾</td>
                    <td align="center">
                        10.20.30.40.</td>
                    <td id="TSws0" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews0" runat="server">
                        <asp:HyperLink ID="HLws0" class="show_je" runat="server"></asp:HyperLink></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffcc" colspan="13">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0" id="TSetupPl" runat="server">
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                </td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                </td>
                                <td id="Td1" runat="server" bgcolor="#ffffcc" colspan="7" style="height: 24px" align="right">
                                    <input id="WagerTxt" runat="server" maxlength="0" readonly="readonly" type="text" style="visibility: hidden" /><input id="ButPlValue" runat="server" title="四盘(盘别A、盘别B、盘别C、盘别D)按盘差同时变更"
                                        type="checkbox" />按盘差同变</td>
                                <td id="Td2" runat="server" bgcolor="#ffffcc">
                                    <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();" Text="确定" Width="43px" /><input name="Submit2" type="reset" value="清除" /></td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 23px">
                                    一肖赔率
                                </td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 23px">
                                    <input name="textfield2" type="text" id="Tmplyx" runat="server" style="width: 51px" /></td>
                                <td id="Td15" runat="server" bgcolor="#ffffcc" colspan="7" style="height: 23px">
                                    <span style="font-size: 11pt; color: #000000"><strong>
                                        <asp:HyperLink ID="HyperLink21" runat="server" BackColor="WhiteSmoke" ForeColor="Black" NavigateUrl="javascript:SelectClassAll('Tmplyx','yx1.yx2.yx3.yx4.yx5.yx6.yx7.yx8.yx9.yx10.yx11.yx12.')">全部</asp:HyperLink>&nbsp;
                                        &nbsp;
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx1')">鼠</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx2')">牛</asp:HyperLink><strong>
                                            &nbsp; </strong>
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx3')">虎</asp:HyperLink><strong> &nbsp; &nbsp;</strong><asp:HyperLink ID="HyperLink4" runat="server"
                                            NavigateUrl="javascript:tmpl('Tmplyx','yx4')">兔</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx5')">龙</asp:HyperLink><strong>&nbsp;
                                                &nbsp;</strong><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx6')">蛇</asp:HyperLink><strong><span style="font-size: 9pt; background-color: #ffffcc">
                                                </span></strong>
                                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx7')">马</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="HyperLink8" runat="server"
                                            NavigateUrl="javascript:tmpl('Tmplyx','yx8')">羊</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx9')">猴</asp:HyperLink><strong>
                                                &nbsp; &nbsp;</strong><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx10')">鸡</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="HyperLink11"
                                                    runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx11')">狗</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="javascript:tmpl('Tmplyx','yx12')">猪</asp:HyperLink></strong></span>
                                </td>
                                <td id="Td16" runat="server" bgcolor="#ffffcc" style="height: 23px">
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    尾数赔率</td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    <input id="Tmplws" runat="server" name="textfield2" style="width: 51px" type="text" /></td>
                                <td id="Td17" runat="server" bgcolor="#ffffcc" colspan="7" style="height: 24px">
                                    <strong><span style="font-size: 11pt">
                                        <asp:HyperLink ID="HyperLink22" runat="server" BackColor="WhiteSmoke" ForeColor="Black" NavigateUrl="javascript:SelectClassAll('Tmplws','ws1.ws2.ws3.ws4.ws5.ws6.ws7.ws8.ws9.ws0.')">全部</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws1')">1尾</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink24" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws2')">2尾</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink25" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws3')">3尾</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws4')">4尾</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws5')">5尾</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws6')">6尾</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink29" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws7')">7尾</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink30" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws8')">8尾</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink31" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws9')">9尾</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink32" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws0')">0尾</asp:HyperLink>
                                    </span></strong>
                                </td>
                                <td id="Td18" runat="server" bgcolor="#ffffcc" style="font-weight: bold; font-size: 11pt">
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
                    六肖率差: 六肖倍率 = (1)全选择单号生肖 赔率-六肖率差*3 &nbsp; (2)选择5个单号生肖 赔率-六肖率差*2 &nbsp; (3)选择4个单号生肖 赔率-六肖率差*1 &nbsp;<br />
                    (4)选择3个单号生肖 赔率-六肖率差*0</td>
            </tr>
        </table>
    </form>
</body>
</html>
