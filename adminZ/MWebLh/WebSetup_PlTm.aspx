<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_PlTm, App_Web_irsz2q38" enableEventValidation="false" %>

<%@ Register Src="WebSetup_Pl_MenuToolsBar.ascx" TagName="WebSetup_Pl_MenuToolsBar" TagPrefix="uc1" %>
<html>
<head runat="server">
    <title>pl</title>
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
             function subtract(vControlCaption,vValue)
            {
                

		        var  lSelectNo ="TxtEditPl" + vControlCaption;

		        if (Number(document.getElementById(lSelectNo).value)!=0){
		            document.getElementById(lSelectNo).value = (Number(document.getElementById(lSelectNo).value) - vValue).toFixed(2);
		        }else{
		            var lLabPl ="Lab" + vControlCaption;
		            document.getElementById(lSelectNo).value = (Number(document.getElementById(lLabPl).innerHTML) - vValue).toFixed(2);
		        }
//                obj[lSelectNo].value ="a";innerHTML
//                alert(( 1.91 -0.05).toFixed(2) );
//                alert(Math.round( 1.91 -0.05) );
//       Math.round
            
            }        
            function SubData()
            {

                mChipMoneySum = 0 ;//����ע���Ľ��ϼ�
                document.getElementById('WagerTxt').value = "" ;
                var lWagerStr= "",lSetValue = "";
                
                lSetValue = SetValue("AA","1.2.3.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.49");
//                
                if (lSetValue == "ChkFalse"){
                    return false;
                }
                lWagerStr = lWagerStr + lSetValue ;
                
                lSetValue = SetValue("02","tmdr.tmsa");
                if (lSetValue == "ChkFalse"){
                    return false;
                }                
                lWagerStr = lWagerStr + lSetValue ;
                
                lSetValue = SetValue("03","tmda.tmxa");
                if (lSetValue == "ChkFalse"){
                    return false;
                }                
                lWagerStr = lWagerStr + lSetValue ;
                
                lSetValue = SetValue("04","tmhdr.tmhsa");
                if (lSetValue == "ChkFalse"){
                    return false;
                }    
                
                lWagerStr = lWagerStr + lSetValue ;
                
                lSetValue = SetValue("37","tmjq.tmys");
                if (lSetValue == "ChkFalse"){
                    return false;
                }             
                lWagerStr = lWagerStr + lSetValue ;
                
                
//                lSetValue = SetValue("06","�ܵ�.��˫");
//                if (lSetValue == "ChkFalse"){
//                    return false;
//                }                
//                lWagerStr = lWagerStr + lSetValue ;
//                
//                lSetValue = SetValue("07","�ܴ�.��С");
//                if (lSetValue == "ChkFalse"){
//                    return false;
//                }                
//                lWagerStr = lWagerStr + lSetValue ;

//                lSetValue = SetValue("14","�첨.�̲�.����");
//                if (lSetValue == "ChkFalse"){
//                    return false;
//                }                
//                lWagerStr = lWagerStr + lSetValue ;
                
//                alert( "LabDx" + String(mChipMoneySum) );

                    
                document.getElementById('WagerTxt').value = lWagerStr ;
//                return false;
            }
        function SetValue(vClass,vNoValue)//SubData()//�ύ����,������ϼ��
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

                    if (document.getElementById(lSelectNo).value.toLowerCase()=="a" || document.getElementById(lSelectNo).value.toLowerCase()=="b"){
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
            
        
        function TmSetup(tm)
        {
            document.getElementById('TMNo').value  =tm;
            return false;
        }
        function HrefLj(tm)
        {
            location=tm + '?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=-1';
        }
        function SelectBall(vTmno){
             if (!(document.getElementById("TmPlValueA").value.toLowerCase() == 'a' || document.getElementById("TmPlValueA").value.toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById("TmPlValueA").value) == true || document.getElementById("TmPlValueA").value == '' )
                     {
                        document.getElementById("TmPlValueA").focus();
                        alert("���õ�����!!");
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
             if (!(document.getElementById("TmPlValue").value.toLowerCase() == 'a' || document.getElementById("TmPlValue").value.toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById("TmPlValue").value) == true || document.getElementById("TmPlValue").value == '' )
                     {
                        document.getElementById("TmPlValue").focus();
                        alert("���õ�����!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById("TmPlValue").value = Number(document.getElementById("TmPlValue").value) ;
                    }
            }
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = Number(arrNum[i]);
	            
	            SelectTmOk("TxtEditPl" + tmno.toString(),document.getElementById("TmPlValue").value);
	            
            }
        }
        
        function SelectAll(){
             if (!(document.getElementById("TmPlValue").value.toLowerCase() == 'a' || document.getElementById("TmPlValue").value.toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById("TmPlValue").value) == true || document.getElementById("TmPlValue").value == '' )
                     {
                        document.getElementById("TmPlValue").focus();
                        alert("���õ�����!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById("TmPlValue").value = Number(document.getElementById("TmPlValue").value) ;
                    }
            }
 
            for (var i = 1 ; i < 50; i++){

	            SelectTmOk("TxtEditPl" + i.toString(),document.getElementById("TmPlValue").value);
	            
            }
        }
        function SelectTmOk(vSelectTm,vTmPl)
        {//ѡ��ָ���ĺ���
                document.getElementById(vSelectTm).value=vTmPl;
                
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
                                &nbsp;&nbsp;��ʱע��:
                                <select class="za_select" id="ltype" onchange="location='?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=' + document.getElementById('retime').value;"
                                    name="ltype" runat="server">
                                    <option value="LA" selected>�̱� A</option>
                                    <option value="LB">�̱� B</option>
                                    <option value="LC">�̱� C</option>
                                    <option value="LD">�̱� D</option>
                                </select>
                                <select class="za_select" onchange="location='?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=' + document.getElementById('retime').value;"
                                    name="pct" id="pct" runat="server">
                                    <option value="0" selected>ȫ��</option>
                                    <option value="1">����</option>
                                    <option value="2">���</option>
                                </select>
                                <a class="click_text" onclick="location='?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=' + document.getElementById('retime').value;">
                                    ˢ��</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label>
                                <select class="za_select" id="retime" onchange="location='?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=' + document.getElementById('retime').value;"
                                    name="retime" runat="server">
                                    <option value="-1" selected>��ˢ��</option>
                                    <option value="20">20 sec</option>
                                    <option value="40">40 sec</option>
                                    <option value="60">60 sec</option>
                                </select>
                                <uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" GameCaption="���P" runat="server" ItmeChooseName="LinkPlTm" />
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
                    &nbsp;&nbsp;�ر��&nbsp;&nbsp;-- ���ʱ��:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40" style="height: 25px">
                        ʱ��</td>
                    <td width="29" style="height: 25px">
                        ����</td>
                    <td style="height: 25px">
                        ����</td>
                    <td width="50" style="height: 25px">
                        ע��</td>
                    <td width="29" style="height: 25px">
                        ����</td>
                    <td style="height: 25px">
                        ����</td>
                    <td width="50" style="height: 25px">
                        ע��</td>
                    <td width="29" style="height: 25px">
                        ����</td>
                    <td style="height: 25px">
                        ����</td>
                    <td width="50" style="height: 25px">
                        ע��</td>
                    <td width="29" style="height: 25px">
                        ����</td>
                    <td style="height: 25px">
                        ����</td>
                    <td width="50" style="height: 25px">
                        ע��</td>
                    <td width="29" style="height: 25px">
                        ����</td>
                    <td style="height: 25px">
                        ����</td>
                    <td width="50" style="height: 25px">
                        ע��</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td rowspan="2" id="Labtmwindate" runat="server">
                        &nbsp;04-17<br>
                        20:35</td>
                    <td class="Td_Title_Num">
                        <font color="red">01</font></td>
                    <td id="TS1" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD1" runat="server">
                        <asp:HyperLink ID="HL1" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">11</font></td>
                    <td id="TS11" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD11" runat="server">
                        <asp:HyperLink ID="HL11" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">21</font></td>
                    <td id="TS21" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD21" runat="server">
                        <asp:HyperLink ID="HL21" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">31</font></td>
                    <td id="TS31" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD31" runat="server">
                        <asp:HyperLink ID="HL31" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">41</font></td>
                    <td id="TS41" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD41" runat="server">
                        <asp:HyperLink ID="HL41" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="red">02</font></td>
                    <td id="TS2" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD2" runat="server">
                        <asp:HyperLink ID="HL2" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">12</font></td>
                    <td id="TS12" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD12" runat="server">
                        <asp:HyperLink ID="HL12" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">22</font></td>
                    <td id="TS22" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD22" runat="server">
                        <asp:HyperLink ID="HL22" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">32</font></td>
                    <td id="TS32" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD32" runat="server">
                        <asp:HyperLink ID="HL32" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">42</font></td>
                    <td id="TS42" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD42" runat="server">
                        <asp:HyperLink ID="HL42" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" class="ra_listbet_title">
                        ����</td>
                    <td class="Td_Title_Num">
                        <font color="blue">03</font></td>
                    <td id="TS3" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD3" runat="server">
                        <asp:HyperLink ID="HL3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">13</font></td>
                    <td id="TS13" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD13" runat="server">
                        <asp:HyperLink ID="HL13" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">23</font></td>
                    <td id="TS23" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD23" runat="server">
                        <asp:HyperLink ID="HL23" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">33</font></td>
                    <td id="TS33" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD33" runat="server">
                        <asp:HyperLink ID="HL33" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">43</font></td>
                    <td id="TS43" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD43" runat="server">
                        <asp:HyperLink ID="HL43" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" rowspan="9" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title_Num">
                        <font color="blue">04</font></td>
                    <td id="TS4" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD4" runat="server">
                        <asp:HyperLink ID="HL4" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">14</font></td>
                    <td id="TS14" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD14" runat="server">
                        <asp:HyperLink ID="HL14" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">24</font></td>
                    <td id="TS24" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD24" runat="server">
                        <asp:HyperLink ID="HL24" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">34</font></td>
                    <td id="TS34" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD34" runat="server">
                        <asp:HyperLink ID="HL34" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">44</font></td>
                    <td id="TS44" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD44" runat="server">
                        <asp:HyperLink ID="HL44" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="green">05</font></td>
                    <td id="TS5" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD5" runat="server">
                        <asp:HyperLink ID="HL5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">15</font></td>
                    <td id="TS15" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD15" runat="server">
                        <asp:HyperLink ID="HL15" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">25</font></td>
                    <td id="TS25" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD25" runat="server">
                        <asp:HyperLink ID="HL25" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">35</font></td>
                    <td id="TS35" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD35" runat="server">
                        <asp:HyperLink ID="HL35" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">45</font></td>
                    <td id="TS45" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD45" runat="server">
                        <asp:HyperLink ID="HL45" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="green">06</font></td>
                    <td id="TS6" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD6" runat="server">
                        <asp:HyperLink ID="HL6" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">16</font></td>
                    <td id="TS16" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD16" runat="server">
                        <asp:HyperLink ID="HL16" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">26</font></td>
                    <td id="TS26" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD26" runat="server">
                        <asp:HyperLink ID="HL26" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">36</font></td>
                    <td id="TS36" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD36" runat="server">
                        <asp:HyperLink ID="HL36" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">46</font></td>
                    <td id="TS46" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD46" runat="server">
                        <asp:HyperLink ID="HL46" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="red">07</font></td>
                    <td id="TS7" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD7" runat="server">
                        <asp:HyperLink ID="HL7" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">17</font></td>
                    <td id="TS17" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD17" runat="server">
                        <asp:HyperLink ID="HL17" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">27</font></td>
                    <td id="TS27" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD27" runat="server">
                        <asp:HyperLink ID="HL27" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">37</font></td>
                    <td id="TS37" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD37" runat="server">
                        <asp:HyperLink ID="HL37" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">47</font></td>
                    <td id="TS47" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD47" runat="server">
                        <asp:HyperLink ID="HL47" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="red">08</font></td>
                    <td id="TS8" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD8" runat="server">
                        <asp:HyperLink ID="HL8" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">18</font></td>
                    <td id="TS18" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD18" runat="server">
                        <asp:HyperLink ID="HL18" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">28</font></td>
                    <td id="TS28" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD28" runat="server">
                        <asp:HyperLink ID="HL28" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">38</font></td>
                    <td id="TS38" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD38" runat="server">
                        <asp:HyperLink ID="HL38" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">48</font></td>
                    <td id="TS48" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD48" runat="server">
                        <asp:HyperLink ID="HL48" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="blue">09</font></td>
                    <td id="TS9" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD9" runat="server">
                        <asp:HyperLink ID="HL9" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">19</font></td>
                    <td id="TS19" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD19" runat="server">
                        <asp:HyperLink ID="HL19" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">29</font></td>
                    <td id="TS29" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD29" runat="server">
                        <asp:HyperLink ID="HL29" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">39</font></td>
                    <td id="TS39" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD39" runat="server">
                        <asp:HyperLink ID="HL39" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="green">49</font></td>
                    <td id="TS49" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD49" runat="server">
                        <asp:HyperLink ID="HL49" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title_Num">
                        <font color="blue">10</font></td>
                    <td id="TS10" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD10" runat="server">
                        <asp:HyperLink ID="HL10" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="blue">20</font></td>
                    <td id="TS20" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD20" runat="server">
                        <asp:HyperLink ID="HL20" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">30</font></td>
                    <td id="TS30" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD30" runat="server">
                        <asp:HyperLink ID="HL30" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title_Num">
                        <font color="red">40</font></td>
                    <td id="TS40" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD40" runat="server">
                        <asp:HyperLink ID="HL40" runat="server" class="show_je"></asp:HyperLink></td>
                    <td align="middle" colspan="3">
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        �ص�
                    </td>
                    <td id="TStmdr" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TDtmdr" runat="server">
                        <asp:HyperLink ID="HLtmdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ��˫</td>
                    <td id="TStmsa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" style="width: 68px;" id="TDtmsa" runat="server">
                        <asp:HyperLink ID="HLtmsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        �ش�
                    </td>
                    <td id="TStmda" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" style="width: 68px;" id="TDtmda" runat="server">
                        <asp:HyperLink ID="HLtmda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ��С</td>
                    <td id="TStmxa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TDtmxa" runat="server">
                        <asp:HyperLink ID="HLtmxa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td runat="server" class="show_Td_pl" align="right" colspan="3">
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        �ϵ�
                    </td>
                    <td id="TStmhdr" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TDtmhdr" runat="server">
                        <asp:HyperLink ID="HLtmhdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ��˫</td>
                    <td id="TStmhsa" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TDtmhsa" runat="server">
                        <asp:HyperLink ID="HLtmhsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ����
                    </td>
                    <td id="TStmjq" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD53" runat="server">
                        <asp:HyperLink ID="HLtmjq" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        Ұ��
                    </td>
                    <td id="TStmys" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TD55" runat="server">
                        <asp:HyperLink ID="Hltmys" runat="server" class="show_je"></asp:HyperLink></td>
                    <td id="Td52" runat="server" class="show_Td_pl" align="right" colspan="3">
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffcc" colspan="19">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0" id="TSetupPl" runat="server">
                            <tr>
                                <td bgcolor="#ffffcc" style="height: 24px">
                                </td>
                                <td runat="server" bgcolor="#ffffcc" style="height: 24px" id="TD51" align="right">
                                    <input id="WagerTxt" runat="server" readonly="readonly" type="text" style="width: 9px; visibility: hidden;" maxlength="0" /><input id="ButPlValue" runat="server" type="checkbox" title="����(�̱�A���̱�B���̱�C���̱�D)���̲�ͬʱ���" />���̲�ͬ��</td>
                                <td bgcolor="#ffffcc" colspan="2" style="height: 24px; width: 96px;">
                                    <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();" Text="ȷ��" Width="43px" />
                                    <input type="reset" name="Submit2" value="���" />
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFCC">
                                    ������
                                    <input type="text" id="TmPlValue" runat="server" maxlength="8" size="4" /></td>
                                <td bgcolor="#FFFFCC" id="TmNoSetup" runat="server" style="height: 24px">
                                    <table>
                                        <tr>
                                            <td class="list_cen" colspan="5" style="text-align: center">
                                                <strong><span style="font-size: 11pt; color: #ff0033">
                                                    <asp:HyperLink ID="HyperLink11" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectAll()">ȫ��</asp:HyperLink>
                                                    &nbsp;
                                                    <asp:HyperLink ID="ContTmRBall" runat="server" BackColor="Red" ForeColor="Black" NavigateUrl="javascript:SelectBallType('01.02.07.08.12.13.18.19.23.24.29.30.34.35.40.45.46.')">�첨</asp:HyperLink>
                                                    &nbsp;
                                                    <asp:HyperLink ID="ContTmGBall" runat="server" BackColor="Lime" ForeColor="Black" NavigateUrl="javascript:SelectBallType('05.06.11.16.17.21.22.27.28.32.33.38.39.43.44.49.')">�̲�</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmBBall" runat="server" BackColor="Blue" ForeColor="Black" NavigateUrl="javascript:SelectBallType('03.04.09.10.14.15.20.25.26.31.36.37.41.42.47.48.')">����</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmDr" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('01.03.05.07.09.11.13.15.17.19.21.23.25.27.29.31.33.35.37.39.41.43.45.47.')">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmSa" runat="server" BackColor="#FF80FF" NavigateUrl="javascript:SelectBallType('02.04.06.08.10.12.14.16.18.20.22.24.26.28.30.32.34.36.38.40.42.44.46.48.')">˫</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmDa" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('25.26.27.28.29.30.31.32.33.34.35.36.37.38.39.40.41.42.43.44.45.46.47.48.')">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmXa" runat="server" BackColor="#FFC0FF" NavigateUrl="javascript:SelectBallType('01.02.03.04.05.06.07.08.09.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.')">С</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmDrDa" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('25.27.29.31.33.35.37.39.41.43.45.47.')">����</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmDrXa" runat="server" BackColor="#FF80FF" NavigateUrl="javascript:SelectBallType('01.03.05.07.09.11.13.15.17.19.21.23.')">��С</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmSaDa" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('26.28.30.32.34.36.38.40.42.44.46.48.')">˫��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmSaXa" runat="server" BackColor="#FFC0FF" NavigateUrl="javascript:SelectBallType('02.04.06.08.10.12.14.16.18.20.22.24.')">˫С</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmHdr" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBallType('01.03.05.07.09.10.12.14.16.18.21.23.25.27.29.30.32.34.36.38.41.43.45.47.')">�ϵ�</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="ContTmHSa" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBallType('02.04.06.08.11.13.15.17.19.20.22.24.26.28.31.33.35.37.39.40.42.44.46.48.')">��˫</asp:HyperLink>&nbsp;
                                                </span></strong>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="list_cen" colspan="5" style="text-align: center">
                                                <strong><span style="font-size: 11pt; color: #000000">
                                                    <asp:HyperLink ID="Cont_wx_j" runat="server" BackColor="Yellow">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_wx_m" runat="server" BackColor="#FFC080">ľ</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_wx_s" runat="server" BackColor="#8080FF">ˮ</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_wx_h" runat="server" BackColor="#FF80FF">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_wx_t" runat="server" BackColor="SaddleBrown">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_jq" runat="server" BackColor="#FF80FF">����</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_ys" runat="server" BackColor="#80FFFF">Ұ��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_qx" runat="server" BackColor="#FFFF80">ǰ��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_hx" runat="server" BackColor="#80FF80">����</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_1" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_2" runat="server">ţ</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_3" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_4" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_5" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_6" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_7" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_8" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_9" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_10" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_11" runat="server">��</asp:HyperLink>&nbsp;
                                                    <asp:HyperLink ID="Cont_12" runat="server">��</asp:HyperLink>
                                                </span></strong>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td colspan="2" bgcolor="#FFFFCC" style="height: 24px; width: 96px;">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc">
                                    �� &nbsp; ��
                                    <input type="text" id="TmPlValueA" runat="server" maxlength="8" size="4" /></td>
                                <td id="Td50" runat="server" bgcolor="#ffffcc" style="height: 42px">
                                    <strong><span style="font-size: 11pt; color: #cc0000">
                                        <asp:HyperLink ID="HyperLink12" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectBall('tmdr.tmsa.tmda.tmxa.tmhdr.tmhsa.')">ȫ��</asp:HyperLink>
                                        &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBall('tmdr.')">�ص�</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBall('tmsa.')">��˫</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink3" runat="server" BackColor="#C0C0FF" NavigateUrl="javascript:SelectBall('tmda.')">�ش�</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink4" runat="server" BackColor="#FFC0FF" NavigateUrl="javascript:SelectBall('tmxa.')">��С</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBall('tmhdr.')">�ϵ�</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink6" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBall('tmhsa.')">��˫</asp:HyperLink>&nbsp;</span></strong></td>
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
                        ��Ŀ</div>
                </td>
                <td>
                    <div align="center">
                        �̲�B</div>
                </td>
                <td>
                    <div align="center">
                        �̲�C</div>
                </td>
                <td>
                    <div align="center">
                        �̲�D</div>
                </td>
                <td>
                    <div align="center">
                        �̲�E</div>
                </td>
                <td>
                    <div align="center">
                        �̲�F</div>
                </td>
                <td>
                    <div align="center">
                        �̲�G</div>
                </td>
            </tr>
            <tr align="center" class="mem_index_cen">
                <td align="left" colspan="7">
                    �̲ΪA����B�̡�C�̡�D��֮��ĲA�����ʱ��ʱ��BCD����A��Ϊ�������ű䶯�����̲�B(ΪA����B��֮���)=-0.5 ��A������=41ʱ &nbsp;<br />
                    ��B������=40.5</td>
            </tr>
            <tr align="center" class="mem_index_cen">
                <td align="left" colspan="7">
                    �̲��޸ģ���[����]--&gt;[�����Զ����ڲ�������]--�����޸��̲�</td>
            </tr>
            <tr align="center" class="mem_index_cen">
                <td align="left" colspan="7">
                    ����B����������A��������[����A������B���ʲ�]=0ʱ������B���ʲ�������A���ʲ���,��[����A������B���ʲ�]��Ϊ0ʱ,����ֵ������<br />
                    ��[����]--[ϵͳ��������]--�����޸�[����A������B���ʲ�]</td>
            </tr>
            <tr align="center" class="mem_index_cen">
                <td align="left" colspan="7">
                    ���ŷ��룺����������д����ĸA��[ȷ��]����������Ӧ�ĺ��뽫���⣬���˺Ų��ܱ���ע����<br />
                    &nbsp;����������д����ĸB��[ȷ��]����������Ӧ�ĺ��뱻�⽫��ȡ�������˺��ܱ�������ע����</td>
            </tr>
        </table>
        <div class="divPropertyBar" id="line_window" runat="server" style="	position: absolute; left: 906px; top: 3px; width: 320px;" >
            <iframe id="tmSubShow" src="" frameborder="0" scrolling="no" style="height: 873px; width: 320px; border:black 0px solid " runat="server"></iframe>
        </div>
    </form>
</body>
</html>
