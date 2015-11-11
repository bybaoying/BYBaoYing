<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_PlZmYL, App_Web_irsz2q38" enableEventValidation="false" %>
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
             
         function SelectBall(vTmno){
             if (!(document.getElementById("TmPlValue").value .toLowerCase() == 'a' || document.getElementById("TmPlValue").value .toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById("TmPlValue").value ) == true || document.getElementById("TmPlValue").value  == '' )
                     {
                        document.getElementById("TmPlValue").focus();
                        alert("���õ�����!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById("TmPlValue").value  = Number(document.getElementById("TmPlValue").value ) ;
                    }
            }
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = arrNum[i];

                if (document.getElementById('SelZM').value =='-1'){
                    SelectTmOk("TxtEditPlzma"  + tmno,document.getElementById("TmPlValue").value );
                    SelectTmOk("TxtEditPlzmb"  + tmno,document.getElementById("TmPlValue").value );
                    SelectTmOk("TxtEditPlzmc"  + tmno,document.getElementById("TmPlValue").value );
                    SelectTmOk("TxtEditPlzmd"  + tmno,document.getElementById("TmPlValue").value );
                    SelectTmOk("TxtEditPlzme"  + tmno,document.getElementById("TmPlValue").value );
                    SelectTmOk("TxtEditPlzmf"  + tmno,document.getElementById("TmPlValue").value );
                }
                else
                {
	            SelectTmOk("TxtEditPlzm" + document.getElementById('SelZM').value  + tmno,document.getElementById("TmPlValue").value );
	            }
            }
        }



        function SubData()
        {//���ɽ��޸ĵ��ַ���

            mChipMoneySum = 0 ;//����ע���Ľ��ϼ�
            document.getElementById('WagerTxt').value = "" ;
            var lWagerStr= "",lSetValue = "";
            


            lSetValue = SetValue("16","zmad.zmas.zmbd.zmbs.zmcd.zmcs.zmdd.zmds.zmed.zmes.zmfd.zmfs");
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ;
            

            
                lSetValue = SetValue("17","zmaa.zmab.zmba.zmbb.zmca.zmcb.zmda.zmdb.zmea.zmeb.zmfa.zmfb");
                if (lSetValue == "ChkFalse"){
                    return false;
                }                
                lWagerStr = lWagerStr + lSetValue ;
                

                lSetValue = SetValue("18","zmah.zmal.zmak.zmbh.zmbl.zmbk.zmch.zmcl.zmck.zmdh.zmdl.zmdk.zmeh.zmel.zmek.zmfh.zmfl.zmfk");
                if (lSetValue == "ChkFalse"){
                    return false;
                }   
                lWagerStr = lWagerStr + lSetValue ;
                

                lSetValue = SetValue("35","zmadh.zmash.zmbdh.zmbsh.zmcdh.zmcsh.zmddh.zmdsh.zmedh.zmesh.zmfdh.zmfsh");
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
                                &nbsp;&nbsp;��ʱע��:
                                <select class="za_select" id="ltype" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;"
                                    name="ltype" runat="server">
                                    <option value="LA" selected>�̱� A</option>
                                    <option value="LB">�̱� B</option>
                                    <option value="LC">�̱� C</option>
                                    <option value="LD">�̱� D</option>
                                </select>
                                <select class="za_select" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;" name="pct"
                                    id="pct" runat="server">
                                    <option value="0" selected>ȫ��</option>
                                    <option value="1">����</option>
                                    <option value="2">���</option>
                                </select>
                                <a class="click_text" onclick="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;">ˢ��</a>:<asp:Label
                                    ID="LabReftime" runat="server"></asp:Label>
                                <select class="za_select" id="retime" onchange="location='?ltype=' + document.getElementById('ltype').value  + '&pct=' + document.getElementById('pct').value  + '&stoptime=' + document.getElementById('retime').value ;"
                                    name="retime" runat="server">
                                    <option value="-1" selected>��ˢ��</option>
                                    <option value="20">20 sec</option>
                                    <option value="40">40 sec</option>
                                    <option value="60">60 sec</option>
                                </select><uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" GameCaption="���P" runat="server" ItmeChooseName="LinkPlZmYL"/>

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
                    &nbsp;&nbsp;����1-6&nbsp;&nbsp;-- ���ʱ��:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40">
                        ʱ��</td>
                    <td width="30">
                        ����</td>
                    <td width="60">
                        ���</td>
                    <td>
                        ����һ</td>
                    <td>
                        ע��</td>
                    <td>
                        �����</td>
                    <td>
                        ע��</td>
                    <td>
                        ������</td>
                    <td>
                        ע��</td>
                    <td>
                        ������</td>
                    <td>
                        ע��</td>
                    <td>
                        ������</td>
                    <td>
                        ע��</td>
                    <td>
                        ������</td>
                    <td>
                        ע��</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td rowspan="9" id="Labtmwindate" runat="server">
                    </td>
                    <td align="middle" rowspan="9" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title">
                        ��</td>
                    <td class="show_Td_pl" align="right" id="TSzmad" runat="server">
                    </td>
                    <td id="Td1" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmad" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmbd" runat="server">
                    </td>
                    <td id="Td2" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmbd" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmcd" runat="server">
                    </td>
                    <td id="Td3" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmcd" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmdd" runat="server">
                    </td>
                    <td id="Td4" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmdd" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmed" runat="server">
                    </td>
                    <td id="Td5" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmed" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmfd" runat="server">
                    </td>
                    <td id="Td6" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmfd" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ˫</td>
                    <td class="show_Td_pl" align="right" id="TSzmas" runat="server">
                    </td>
                    <td id="Td7" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmas" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmbs" runat="server">
                    </td>
                    <td id="Td8" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmbs" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmcs" runat="server">
                    </td>
                    <td id="Td9" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmcs" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmds" runat="server">
                    </td>
                    <td id="Td10" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmds" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmes" runat="server">
                    </td>
                    <td id="Td11" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmes" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmfs" runat="server">
                    </td>
                    <td id="Td12" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmfs" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��</td>
                    <td class="show_Td_pl" align="right" id="TSzmaa" runat="server">
                    </td>
                    <td id="Td13" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmaa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmba" runat="server">
                    </td>
                    <td id="Td14" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmba" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmca" runat="server">
                    </td>
                    <td id="Td15" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmca" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmda" runat="server">
                    </td>
                    <td id="Td16" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmea" runat="server">
                    </td>
                    <td id="Td17" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmea" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmfa" runat="server">
                    </td>
                    <td id="Td18" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmfa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        С</td>
                    <td class="show_Td_pl" align="right" id="TSzmab" runat="server">
                    </td>
                    <td id="Td19" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmab" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmbb" runat="server">
                    </td>
                    <td id="Td20" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmbb" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmcb" runat="server">
                    </td>
                    <td id="Td21" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmcb" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmdb" runat="server">
                    </td>
                    <td id="Td22" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmdb" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmeb" runat="server">
                    </td>
                    <td id="Td23" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmeb" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmfb" runat="server">
                    </td>
                    <td id="Td24" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmfb" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        �ϵ�</td>
                    <td class="show_Td_pl" align="right" id="TSzmadh" runat="server">
                    </td>
                    <td id="Td43" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmadh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmbdh" runat="server">
                    </td>
                    <td id="Td44" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmbdh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmcdh" runat="server">
                    </td>
                    <td id="Td45" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmcdh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmddh" runat="server">
                    </td>
                    <td id="Td46" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmddh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmedh" runat="server">
                    </td>
                    <td id="Td47" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmedh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmfdh" runat="server">
                    </td>
                    <td id="Td48" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmfdh" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ��˫</td>
                    <td class="show_Td_pl" align="right" id="TSzmash" runat="server">
                    </td>
                    <td id="Td49" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmash" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmbsh" runat="server">
                    </td>
                    <td id="Td51" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmbsh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmcsh" runat="server">
                    </td>
                    <td id="Td52" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmcsh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmdsh" runat="server">
                    </td>
                    <td id="Td53" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmdsh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmesh" runat="server">
                    </td>
                    <td id="Td54" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmesh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmfsh" runat="server">
                    </td>
                    <td id="Td55" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmfsh" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        �첨</td>
                    <td class="show_Td_pl" align="right" id="TSzmah" runat="server">
                    </td>
                    <td id="Td25" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmah" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmbh" runat="server">
                    </td>
                    <td id="Td26" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmbh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmch" runat="server">
                    </td>
                    <td id="Td27" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmch" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmdh" runat="server">
                    </td>
                    <td id="Td28" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmdh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmeh" runat="server">
                    </td>
                    <td id="Td29" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmeh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmfh" runat="server">
                    </td>
                    <td id="Td30" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmfh" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        �̲�</td>
                    <td class="show_Td_pl" align="right" id="TSzmal" runat="server">
                    </td>
                    <td id="Td31" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmal" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" style="" id="TSzmbl" runat="server">
                    </td>
                    <td id="Td32" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmbl" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmcl" runat="server">
                    </td>
                    <td id="Td33" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmcl" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmdl" runat="server">
                    </td>
                    <td id="Td34" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmdl" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmel" runat="server">
                    </td>
                    <td id="Td35" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmel" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmfl" runat="server">
                    </td>
                    <td id="Td36" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmfl" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        ����</td>
                    <td class="show_Td_pl" align="right" id="TSzmak" runat="server">
                    </td>
                    <td id="Td37" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmak" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" style="" id="TSzmbk" runat="server">
                    </td>
                    <td id="Td38" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmbk" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmck" runat="server">
                    </td>
                    <td id="Td39" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmck" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmdk" runat="server">
                    </td>
                    <td id="Td40" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmdk" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmek" runat="server">
                    </td>
                    <td id="Td41" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmek" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" id="TSzmfk" runat="server">
                    </td>
                    <td id="Td42" runat="server" align="middle">
                        <asp:HyperLink ID="HLzmfk" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffcc">
                    <td colspan="15">
                        <table cellspacing="0" cellpadding="0" border="0" id="TSetupPl" width="100%" runat="server">
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1">
                                </td>
                                <td bgcolor="#ffffcc" colspan="5">
                                </td>
                                <td runat="server" bgcolor="#ffffcc" colspan="8" align="right">
                                    <input id="WagerTxt" runat="server" maxlength="0" readonly="readonly" style="width: 381px; visibility: hidden;" type="text" /><input id="ButPlValue" runat="server" title="����(�̱�A���̱�B���̱�C���̱�D)���̲�ͬʱ���"
                                        type="checkbox" />���̲�ͬ��</td>
                                <td runat="server" bgcolor="#ffffcc" colspan="1">
                                    <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();" Text="ȷ��" Width="43px" />
                                    <input name="Submit2" type="reset" value="���" /></td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1">
                                    ����
                                    <input name="textfield2" type="text" size="8" id="TmPlValue" runat="server" /></td>
                                <td bgcolor="#ffffcc" colspan="5">
                                    &nbsp;ѡ������&nbsp;
                                    <select class="za_select" id="SelZM" name="ltype" runat="server" style="width: 68px">
                                        <option value="-1" selected>ȫ ѡ</option>
                                        <option value="a">����һ</option>
                                        <option value="b">�����</option>
                                        <option value="c">������</option>
                                        <option value="d">������</option>
                                        <option value="e">������</option>
                                        <option value="f">������</option>
                                    </select>
                                </td>
                                <td id="Td50" runat="server" bgcolor="#ffffcc" colspan="8">
                                    <strong><span style="font-size: 11pt; color: #cc0000">
                                        <asp:HyperLink ID="HyperLink12" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectBall('d.s.a.b.dh.sh.h.l.k.')">ȫ��</asp:HyperLink>
                                        &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBall('d.')">����</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBall('s.')">��˫</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink3" runat="server" BackColor="#C0C0FF" NavigateUrl="javascript:SelectBall('a.')">����</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink4" runat="server" BackColor="#FFC0FF" NavigateUrl="javascript:SelectBall('b.')">��С</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBall('dh.')">�ϵ�</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink6" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBall('sh.')">��˫</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="ContTmRBall" runat="server" BackColor="Red" ForeColor="Black" NavigateUrl="javascript:SelectBall('h.')">�첨</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="ContTmGBall" runat="server" BackColor="Lime" ForeColor="Black" NavigateUrl="javascript:SelectBall('l.')">�̲�</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="ContTmBBall" runat="server" BackColor="Blue" ForeColor="Black" NavigateUrl="javascript:SelectBall('k.')">����</asp:HyperLink>
                                    </span></strong>
                                </td>
                                <td runat="server" bgcolor="#ffffcc" colspan="1">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="TableA" runat="server" border="0" cellpadding="0" cellspacing="1" class="m_tab_ed">
            <tr align="center" class="m_title_edit">
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
        </table>
    </form>
</body>
</html>

