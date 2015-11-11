<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_PlSxsb, App_Web_irsz2q38" enableEventValidation="false" %>

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
        {//ѡ��ָ���ĺ���
                document.getElementById(vSelectTm).value=vTmPl;
                
        }  
        
        function SelectClassAll(vTmplavalue,vTmno){
             if (!(document.getElementById(vTmplavalue).value.toLowerCase() == 'a' || document.getElementById(vTmplavalue).value.toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById(vTmplavalue).value) == true || document.getElementById(vTmplavalue).value == '' )
                     {
                        document.getElementById(vTmplavalue).focus();
                        alert("���õ�����!!");
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
                        alert("���õ�����!!");
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

            mChipMoneySum = 0 ;//����ע���Ľ��ϼ�
            document.getElementById('WagerTxt').value = "" ;
            var lWagerStr= "",lSetValue = "";
            
            lSetValue = SetValue("15","sx121.sx122.sx123.sx124.sx125.sx126.sx127.sx128.sx129.sx1210.sx1211.sx1212");
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ;
            
            
            lSetValue = SetValue("14","tmr.tmg.tmb");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("20","sx6y.sx6ya.sx6n.sx6yb.sx5.sx4.sx3.sx2");//��Ф
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("22","ts0.ts1.ts2.ts3.ts4");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
            
            
            lSetValue = SetValue("23","ws1.ws2.ws3.ws4.ws5.ws6.ws7.ws8.ws9.ws0");//β��
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;

            lSetValue = SetValue("36","wx1.wx2.wx3.wx4.wx5");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
            
            document.getElementById('WagerTxt').value = lWagerStr ;
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
                                &nbsp;&nbsp;��ʱע��:
                                <select class="za_select" id="ltype" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;"
                                    name="ltype" runat="server">
                                    <option value="LA" selected>�̱� A</option>
                                    <option value="LB">�̱� B</option>
                                    <option value="LC">�̱� C</option>
                                    <option value="LD">�̱� D</option>
                                </select>
                                <select class="za_select" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;"
                                    name="pct" id="pct" runat="server">
                                    <option value="0" selected>ȫ��</option>
                                    <option value="1">����</option>
                                    <option value="2">���</option>
                                </select>
                                <a class="click_text" onclick="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;">
                                    ˢ��</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label>
                                <select class="za_select" id="retime" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;"
                                    name="retime" runat="server">
                                    <option value="-1" selected>��ˢ��</option>
                                    <option value="20">20 sec</option>
                                    <option value="40">40 sec</option>
                                    <option value="60">60 sec</option>
                                </select>
                                <uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" GameCaption="���P" runat="server" ItmeChooseName="LinkPlSxsb" />
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
                    &nbsp;&nbsp;��Ф.ɫ��.��Ф&nbsp;&nbsp;-- ���ʱ��:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40">
                        ʱ��</td>
                    <td width="35">
                        ��Ф</td>
                    <td width="50xp">
                        ����</td>
                    <td>
                        ����</td>
                    <td width="40">
                        ע��</td>
                    <td width="55">
                        ɫ��</td>
                    <td>
                        ����</td>
                    <td width="40">
                        ע��</td>
                    <td width="35">
                        ��Ф</td>
                    <td>
                        ����</td>
                    <td width="40">
                        ע��</td>
                    <td colspan="3">
                        ��Ф�ʲ�
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td rowspan="2" id="Labtmwindate" runat="server">
                    </td>
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx121" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx121">
                    </td>
                    <td align="middle" id="TmJesx121" runat="server">
                        <asp:HyperLink ID="HLsx121" runat="server" class="show_je">[HLsx121]</asp:HyperLink></td>
                    <td class="Td_Title">
                        �첨</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TStmr">
                    </td>
                    <td align="middle" id="TmJetmr" runat="server">
                        <asp:HyperLink ID="HLtmr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ��Ф��</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx6y">
                    </td>
                    <td runat="server" id="TmJesx6y" align="middle">
                        <asp:HyperLink ID="HLsx6y" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ��Ф<br />
                        ��˫</td>
                    <td id="TSsx6ya" runat="server" class="Td_Title">
                    </td>
                    <td id="Td4">
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ţ</td>
                    <td align="middle" id="TmNosx122" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx122">
                    </td>
                    <td align="middle" id="TmJesx122" runat="server">
                        <asp:HyperLink ID="HLsx122" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        �̲�</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TStmg">
                    </td>
                    <td align="middle" id="TmJetmg" runat="server">
                        <asp:HyperLink ID="HLtmg" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ��Ф<br />
                        ����</td>
                    <td id="TSsx6n" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle">
                        <asp:HyperLink ID="HLsx6n" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ��Ф<br />
                        ����</td>
                    <td class="Td_Title" id="TSsx6yb" runat="server">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" class="ra_listbet_title">
                        ����</td>
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx123" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx123">
                    </td>
                    <td align="middle" id="TmJesx123" runat="server">
                        <asp:HyperLink ID="HLsx123" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ����</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TStmb">
                    </td>
                    <td align="middle" id="TmJetmb" runat="server">
                        <asp:HyperLink ID="HLtmb" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ��Ф</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx5">
                    </td>
                    <td align="middle" id="TD11" runat="server">
                        <asp:HyperLink ID="HLsx5" runat="server" class="show_je">[HLsx5]</asp:HyperLink></td>
                    <td class="Td_Title">
                    </td>
                    <td class="Td_Title">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" rowspan="9" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx124" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx124">
                    </td>
                    <td align="middle" id="TmJesx124" runat="server">
                        <asp:HyperLink ID="HLsx124" runat="server" class="show_je"></asp:HyperLink></td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td class="Td_Title">
                        ��Ф</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx4">
                    </td>
                    <td align="middle" id="TD9" runat="server">
                        <asp:HyperLink ID="HLsx4" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                    </td>
                    <td class="Td_Title">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx125" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx125">
                    </td>
                    <td align="middle" id="TmJesx125" runat="server">
                        <asp:HyperLink ID="HLsx125" runat="server" class="show_je"></asp:HyperLink></td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td class="Td_Title">
                        ��Ф</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx3">
                    </td>
                    <td align="middle" id="TD10" runat="server">
                        <asp:HyperLink ID="HLsx3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                    </td>
                    <td class="show_Td_pl" align="right">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx126" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx126">
                    </td>
                    <td align="middle" id="TmJesx126" runat="server">
                        <asp:HyperLink ID="HLsx126" runat="server" class="show_je"></asp:HyperLink></td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td class="Td_Title">
                        ��Ф</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx2">
                    </td>
                    <td align="middle" id="TD5" runat="server">
                        <asp:HyperLink ID="HLsx2" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                    </td>
                    <td class="Td_Title">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx127" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx127">
                    </td>
                    <td align="middle" id="TmJesx127" runat="server">
                        <asp:HyperLink ID="HLsx127" runat="server" class="show_je"></asp:HyperLink></td>
                    <td colspan="6" class="ra_listbet_title">
                        ��β</td>
                    <td class="ra_listbet_title">
                        ��ͷ</td>
                    <td class="ra_listbet_title">
                        ����</td>
                    <td class="ra_listbet_title" width="40">
                        ע��</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx128" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx128">
                    </td>
                    <td align="middle" id="TmJesx128" runat="server">
                        <asp:HyperLink ID="HLsx128" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        1β</td>
                    <td id="TSws1" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews1" runat="server">
                        <asp:HyperLink ID="HLws1" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        6β</td>
                    <td id="TSws6" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews6" runat="server">
                        <asp:HyperLink ID="HLws6" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        0ͷ</td>
                    <td class="Td_Title" id="TSts0" runat="server">
                    </td>
                    <td>
                        <asp:HyperLink ID="HLts0" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx129" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx129">
                    </td>
                    <td align="middle" id="TmJesx129" runat="server">
                        <asp:HyperLink ID="HLsx129" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        2β</td>
                    <td id="TSws2" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews2" runat="server">
                        <asp:HyperLink ID="HLws2" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        7β</td>
                    <td id="TSws7" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews7" runat="server">
                        <asp:HyperLink ID="HLws7" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        1ͷ</td>
                    <td class="Td_Title" id="TSts1" runat="server">
                    </td>
                    <td>
                        <asp:HyperLink ID="HLts1" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx1210" runat="server">
                    </td>
                    <td class="show_Td_pl" align="right" id="TSsx1210" runat="server">
                    </td>
                    <td align="middle" id="TmJesx1210" runat="server">
                        <asp:HyperLink ID="HLsx1210" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        3β</td>
                    <td id="TSws3" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews3" runat="server">
                        <asp:HyperLink ID="HLws3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        8β</td>
                    <td id="TSws8" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews8" runat="server">
                        <asp:HyperLink ID="HLws8" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        2ͷ</td>
                    <td class="Td_Title" id="TSts2" runat="server">
                    </td>
                    <td>
                        <asp:HyperLink ID="HLts2" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx1211" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx1211">
                    </td>
                    <td align="middle" id="TmJesx1211" runat="server">
                        <asp:HyperLink ID="HLsx1211" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        4β</td>
                    <td id="TSws4" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews4" runat="server">
                        <asp:HyperLink ID="HLws4" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        9β</td>
                    <td id="TSws9" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews9" runat="server">
                        <asp:HyperLink ID="HLws9" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        3ͷ</td>
                    <td class="Td_Title" id="TSts3" runat="server">
                    </td>
                    <td>
                        <asp:HyperLink ID="HLts3" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNosx1212" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSsx1212">
                    </td>
                    <td align="middle" id="TmJesx1212" runat="server">
                        <asp:HyperLink ID="HLsx1212" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        5β</td>
                    <td id="TSws5" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews5" runat="server">
                        <asp:HyperLink ID="HLws5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        0β</td>
                    <td id="TSws0" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td align="middle" id="TmJews0" runat="server">
                        <asp:HyperLink ID="HLws0" class="show_je" runat="server"></asp:HyperLink></td>
                    <td class="Td_Title">
                        4ͷ</td>
                    <td class="Td_Title" id="TSts4" runat="server">
                    </td>
                    <td>
                        <asp:HyperLink ID="HLts4" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
            </tbody>
        </table>
        <table id="Table1" class="ra_listbet_tab" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40">
                    </td>
                    <td width="35">
                        ����</td>
                    <td>
                        ����</td>
                    <td>
                        ����</td>
                    <td width="40">
                        ע��</td>
                    <td width="35">
                        ����</td>
                    <td>
                        ����</td>
                    <td>
                        ����</td>
                    <td width="40">
                        ע��</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td>
                    </td>
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNowx1" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSwx1">
                    </td>
                    <td align="middle" id="TmJeyx1" runat="server">
                        <asp:HyperLink ID="HLwx1" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ľ</td>
                    <td align="middle" id="TmNowx2" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSwx2">
                    </td>
                    <td align="middle" id="TmJeyx2" runat="server">
                        <asp:HyperLink ID="HLwx2" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td>
                    </td>
                    <td class="Td_Title">
                        ˮ</td>
                    <td align="middle" id="TmNowx3" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSwx3">
                    </td>
                    <td align="middle" id="TmJeyx3" runat="server">
                        <asp:HyperLink ID="HLwx3" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNowx4" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSwx4">
                    </td>
                    <td align="middle" id="TmJeyx4" runat="server">
                        <asp:HyperLink ID="HLwx4" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td>
                    </td>
                    <td class="Td_Title">
                        ��</td>
                    <td align="middle" id="TmNowx5" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSwx5">
                    </td>
                    <td align="middle" id="TmJeyx5" runat="server">
                        <asp:HyperLink ID="HLwx5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffcc" colspan="9">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0" id="TSetupPl" runat="server">
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                </td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                </td>
                                <td id="Td1" runat="server" bgcolor="#ffffcc" colspan="7" style="height: 24px" align="right">
                                    <input id="WagerTxt" runat="server" maxlength="0" readonly="readonly" type="text" style="visibility: hidden" /><input id="ButPlValue" runat="server" title="����(�̱�A���̱�B���̱�C���̱�D)���̲�ͬʱ���"
                                        type="checkbox" />���̲�ͬ��</td>
                                <td id="Td2" runat="server" bgcolor="#ffffcc">
                                    <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();" Text="ȷ��" Width="43px" /><input name="Submit2" type="reset" value="���" /></td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    ʮ����Ф����
                                </td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    <input name="textfield2" type="text" id="Tmplsx12" runat="server" style="width: 51px" /></td>
                                <td id="Td3" runat="server" bgcolor="#ffffcc" colspan="7" style="height: 24px">
                                    <span style="font-size: 11pt; color: #000000"><strong>
                                        <asp:HyperLink ID="HyperLink18" runat="server" BackColor="WhiteSmoke" ForeColor="Black" NavigateUrl="javascript:SelectClassAll('Tmplsx12','sx121.sx122.sx123.sx124.sx125.sx126.sx127.sx128.sx129.sx1210.sx1211.sx1212.')">ȫ��</asp:HyperLink>&nbsp;
                                        &nbsp;
                                        <asp:HyperLink ID="ContPa" runat="server" NavigateUrl="javascript:tmpl('Tmplsx12','sx121')">��</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="ContPb" runat="server"
                                            NavigateUrl="javascript:tmpl('Tmplsx12','sx122')">ţ</asp:HyperLink>
                                        &nbsp;
                                        <asp:HyperLink ID="ContPc" runat="server" NavigateUrl="javascript:tmpl('Tmplsx12','sx123')">��</asp:HyperLink><strong> &nbsp; &nbsp;</strong><asp:HyperLink ID="ContPd" runat="server"
                                            NavigateUrl="javascript:tmpl('Tmplsx12','sx124')">��</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="ContPe" runat="server" NavigateUrl="javascript:tmpl('Tmplsx12','sx125')">��</asp:HyperLink><strong>&nbsp;
                                                &nbsp;</strong><asp:HyperLink ID="ContPf" runat="server" NavigateUrl="javascript:tmpl('Tmplsx12','sx126')">��</asp:HyperLink><strong> </strong>
                                        <asp:HyperLink ID="ContPg" runat="server" NavigateUrl="javascript:tmpl('Tmplsx12','sx127')">��</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="ContPh" runat="server"
                                            NavigateUrl="javascript:tmpl('Tmplsx12','sx128')">��</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="ContPi" runat="server" NavigateUrl="javascript:tmpl('Tmplsx12','sx129')">��</asp:HyperLink><strong>
                                                &nbsp; &nbsp;</strong><asp:HyperLink ID="ContPj" runat="server" NavigateUrl="javascript:tmpl('Tmplsx12','sx1210')">��</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="ContPk"
                                                    runat="server" NavigateUrl="javascript:tmpl('Tmplsx12','sx1211')">��</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="ContPl" runat="server" NavigateUrl="javascript:tmpl('Tmplsx12','sx1212')">��</asp:HyperLink></strong></span>
                                </td>
                                <td id="Td6" runat="server" bgcolor="#ffffcc">
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1">
                                    ɫ������
                                </td>
                                <td bgcolor="#ffffcc" colspan="1">
                                    <input name="textfield2" type="text" id="Tmpl" runat="server" style="width: 51px" /></td>
                                <td id="Td7" runat="server" bgcolor="#ffffcc" colspan="7">
                                    <span style="font-size: 11pt; color: #000000"><strong>
                                        <asp:HyperLink ID="HyperLink19" runat="server" BackColor="WhiteSmoke" ForeColor="Black" NavigateUrl="javascript:SelectClassAll('Tmpl','tmr.tmg.tmb.')">ȫ��</asp:HyperLink>&nbsp; &nbsp;
                                        <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="javascript:tmpl('Tmpl','tmr')">�첨</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="javascript:tmpl('Tmpl','tmg')">�̲�</asp:HyperLink>
                                        &nbsp;
                                        <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="javascript:tmpl('Tmpl','tmb')">����</asp:HyperLink>
                                        &nbsp; </strong></span>
                                </td>
                                <td id="Td12" runat="server" bgcolor="#ffffcc">
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    ��Ф����</td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    <input name="textfield2" type="text" id="Tmplsx6" runat="server" style="width: 51px" /></td>
                                <td id="Td13" runat="server" bgcolor="#ffffcc" colspan="7" style="height: 24px">
                                    <span style="font-size: 11pt; color: #000000"><strong>
                                        <asp:HyperLink ID="HyperLink20" runat="server" BackColor="WhiteSmoke" ForeColor="Black" NavigateUrl="javascript:SelectClassAll('Tmplsx6','sx6y.sx6n.sx5.sx4.sx3.sx2.')">ȫ��</asp:HyperLink>&nbsp;
                                        &nbsp;
                                        <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="javascript:tmpl('Tmplsx6','sx6y')">��</asp:HyperLink><strong>&nbsp; &nbsp;</strong><asp:HyperLink ID="HyperLink14" runat="server"
                                            NavigateUrl="javascript:tmpl('Tmplsx6','sx6n')">����</asp:HyperLink>
                                        &nbsp; </strong></span>
                                </td>
                                <td id="Td14" runat="server" bgcolor="#ffffcc" style="height: 24px">
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 23px">
                                    ��ͷ����
                                </td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 23px">
                                    <input name="textfield2" type="text" id="Tmplts" runat="server" style="width: 51px" /></td>
                                <td id="Td15" runat="server" bgcolor="#ffffcc" colspan="7" style="height: 23px">
                                    <span style="font-size: 11pt; color: #000000"><strong>
                                        <asp:HyperLink ID="HyperLink21" runat="server" BackColor="WhiteSmoke" ForeColor="Black" NavigateUrl="javascript:SelectClassAll('Tmplts','ts0.ts1.ts2.ts3.ts4.')">ȫ��</asp:HyperLink>&nbsp;&nbsp;
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="javascript:tmpl('Tmplts','ts0')">0ͷ</asp:HyperLink>&nbsp;&nbsp;
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="javascript:tmpl('Tmplts','ts1')">1ͷ</asp:HyperLink>&nbsp; &nbsp;
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="javascript:tmpl('Tmplts','ts2')">2ͷ</asp:HyperLink>&nbsp; &nbsp;
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="javascript:tmpl('Tmplts','ts3')">3ͷ</asp:HyperLink>&nbsp;&nbsp;
                                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="javascript:tmpl('Tmplts','ts4')">4ͷ</asp:HyperLink>&nbsp;&nbsp; </strong></span>
                                </td>
                                <td id="Td16" runat="server" bgcolor="#ffffcc" style="height: 23px">
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    ��β����</td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    <input id="Tmplws" runat="server" name="textfield2" style="width: 51px" type="text" /></td>
                                <td id="Td17" runat="server" bgcolor="#ffffcc" colspan="7" style="height: 24px">
                                    <strong><span style="font-size: 11pt">
                                        <asp:HyperLink ID="HyperLink22" runat="server" BackColor="WhiteSmoke" ForeColor="Black" NavigateUrl="javascript:SelectClassAll('Tmplws','ws1.ws2.ws3.ws4.ws5.ws6.ws7.ws8.ws9.ws0.')">ȫ��</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws1')">1β</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink24" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws2')">2β</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink25" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws3')">3β</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws4')">4β</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws5')">5β</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws6')">6β</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink29" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws7')">7β</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink30" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws8')">8β</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink31" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws9')">9β</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink32" runat="server" NavigateUrl="javascript:tmpl('Tmplws','ws0')">0β</asp:HyperLink>
                                    </span></strong>
                                </td>
                                <td id="Td18" runat="server" bgcolor="#ffffcc" style="font-weight: bold; font-size: 11pt">
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    ��������</td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    <input id="Tmplwx" runat="server" name="textfield2" style="width: 51px" type="text" /></td>
                                <td runat="server" bgcolor="#ffffcc" colspan="7" id="Td19">
                                    <strong><span style="font-size: 11pt">
                                        <asp:HyperLink ID="HyperLink33" runat="server" BackColor="WhiteSmoke" ForeColor="Black" NavigateUrl="javascript:SelectClassAll('Tmplwx','wx1.wx2.wx3.wx4.wx5.')">ȫ��</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink34" runat="server" NavigateUrl="javascript:tmpl('Tmplwx','wx1')">��</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink35" runat="server" NavigateUrl="javascript:tmpl('Tmplwx','wx2')">ľ</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink36" runat="server" NavigateUrl="javascript:tmpl('Tmplwx','wx3')">ˮ</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink37" runat="server" NavigateUrl="javascript:tmpl('Tmplwx','wx4')">��</asp:HyperLink>&nbsp;
                                        &nbsp;<asp:HyperLink ID="HyperLink38" runat="server" NavigateUrl="javascript:tmpl('Tmplwx','wx5')">��</asp:HyperLink></span></strong></td>
                                <td runat="server" bgcolor="#ffffcc" style="font-weight: bold; font-size: 11pt" id="Td20">
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
                    ��Ф�ʲ�: ��Ф���� = (1)ѡ��6��������Ф ��Ф����-��Ф�ʲ�(��Ф��˫)*2 &nbsp; (2)ѡ��5��������Ф ����-��Ф�ʲ�(��Ф��˫)*1 &nbsp; (3)ѡ��4��������Ф ����-��Ф�ʲ�*0&nbsp; (4)ѡ��3��������Ф ����-��Ф�ʲ�*0</td>
            </tr>
        </table>
    </form>
</body>
</html>
