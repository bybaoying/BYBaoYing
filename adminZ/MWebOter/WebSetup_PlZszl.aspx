<%@ page language="C#" autoeventwireup="true" inherits="adminZ_WebOter_WebSetup_PlZszl, App_Web_nwkt-b7n" enableEventValidation="false" %>

<%@ Register Src="WebSetup_Pl_MenuToolsBar.ascx" TagName="WebSetup_Pl_MenuToolsBar" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>main</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/WebSetup_Pl.css" type="text/css" rel="stylesheet" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/AutoRefreshShow.js"></script>

    <script language="JavaScript" type="text/javascript" src="../Scripts/JsTableRowLight.js"></script>

    <script language="JavaScript" type="text/javascript">
        var msGT = "<% =Request.QueryString["gt"] %>";
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
            AutoRefShow(lReftime,'gt='+ msGT +'&ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&');
        }
        function HrefLj(tm)
        {
            location=tm + '?gt='+ msGT +'&ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=-1';
        }
        function ChageShow()
        {
            var lclassid = "<% =Request.QueryString["classid"] %>";
            location = '?gt='+ msGT +'&ltype=' + document.getElementById('ltype').value + '&pct=' + 
                document.getElementById('pct').value  + '&classid=' + 
                lclassid + '&stoptime=' + document.getElementById('retime').value;
            
        }
        function ChageClassid(lClassid)
        {
            location = '?gt='+ msGT +'&ltype=' + document.getElementById('ltype').value + '&pct=' + 
                document.getElementById('pct').value  + '&classid=' + 
                lClassid + '&stoptime=' + document.getElementById('retime').value;
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
            
            lSetValue = SetValue("61","zs","z4.z5.z6.z7.z8.z0");
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ;
            
            
            lSetValue = SetValue("62","zl","z4.z5.z6.z7.z8.z0");
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ; 
            
            lSetValue = SetValue("63","","tmfszh");
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
                                <select class="za_select" id="ltype" onchange="ChageShow();" name="ltype" runat="server">
                                    <option value="LA" selected>盘别 A</option>
                                    <option value="LB">盘别 B</option>
                                    <option value="LC">盘别 C</option>
                                    <option value="LD">盘别 D</option>
                                </select>
                                <select class="za_select" onchange="ChageShow();" name="pct" id="pct" runat="server">
                                    <option value="0" selected>全部</option>
                                    <option value="1">笔数</option>
                                    <option value="2">金额</option>
                                </select>
                                <a class="click_text" onclick="ChageShow();">刷新</a>:<asp:Label ID="LabReftime" runat="server"></asp:Label>
                                <select class="za_select" id="retime" onchange="ChageShow();" name="retime" runat="server">
                                    <option value="-1" selected>不刷新</option>
                                    <option value="20">20 sec</option>
                                    <option value="40">40 sec</option>
                                    <option value="60">60 sec</option>
                                </select>
                                <uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" runat="server" />
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
                    &nbsp;&nbsp;组三.组六&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40">
                        时间</td>
                    <td width="35">
                        组三</td>
                    <td>
                        赔率</td>
                    <td width="55">
                        注单</td>
                    <td width="35">
                        组六</td>
                    <td>
                        赔率</td>
                    <td width="55">
                        注单</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td rowspan="1" id="Labtmwindate" runat="server">
                    </td>
                    <td class="Td_Title">
                        四字
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSzsz4">
                    </td>
                    <td align="middle" id="TmJezsz4" runat="server">
                        <asp:HyperLink ID="HLzsz4" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        四字</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSzlz4">
                    </td>
                    <td align="middle" id="TmJeyx1" runat="server">
                        <asp:HyperLink ID="HLzlz4" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" class="ra_listbet_title">
                        期数</td>
                    <td class="Td_Title">
                        五字</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSzsz5">
                    </td>
                    <td align="middle" id="TmJezsz5" runat="server">
                        <asp:HyperLink ID="HLzsz5" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        五字</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSzlz5">
                    </td>
                    <td align="middle" id="TmJeyx2" runat="server">
                        <asp:HyperLink ID="HLzlz5" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" rowspan="1" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title">
                        六字</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSzsz6">
                    </td>
                    <td align="middle" id="TmJesx123" runat="server">
                        <asp:HyperLink ID="HLzsz6" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        六字</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSzlz6">
                    </td>
                    <td align="middle" id="TmJeyx3" runat="server">
                        <asp:HyperLink ID="HLzlz6" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td id="Td3" runat="server" align="middle" rowspan="1">
                    </td>
                    <td class="Td_Title">
                        七字</td>
                    <td id="TSzsz7" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td4" runat="server" align="middle">
                        <asp:HyperLink ID="HLzsz7" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        七字</td>
                    <td id="TSzlz7" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td5" runat="server" align="middle">
                        <asp:HyperLink ID="HLzlz7" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td id="Td6" runat="server" align="middle" rowspan="1">
                    </td>
                    <td class="Td_Title">
                        八字</td>
                    <td id="TSzsz8" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td7" runat="server" align="middle">
                        <asp:HyperLink ID="HLzsz8" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        八字</td>
                    <td id="TSzlz8" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td8" runat="server" align="middle">
                        <asp:HyperLink ID="HLzlz8" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td id="Td9" runat="server" align="middle" rowspan="1">
                    </td>
                    <td class="Td_Title">
                        全字</td>
                    <td id="TSzsz0" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td10" runat="server" align="middle">
                        <asp:HyperLink ID="HLzsz0" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        全字</td>
                    <td id="TSzlz0" runat="server" class="show_Td_pl" align="right">
                    </td>
                    <td id="Td11" runat="server" align="middle">
                        <asp:HyperLink ID="HLzlz0" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td runat="server" align="middle" rowspan="1">
                    </td>
                    <td class="Td_Title">复式组合
                    </td>
                    <td runat="server" align="right" class="show_Td_pl" id="TStmfszh">
                    </td>
                    <td runat="server" align="middle">
                        <asp:HyperLink ID="HLtmfszh" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                    </td>
                    <td runat="server" align="right" class="show_Td_pl">
                    </td>
                    <td runat="server" align="middle">
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffcc" colspan="11">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0" id="TSetupPl" runat="server">
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                </td>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                </td>
                                <td id="Td1" runat="server" bgcolor="#ffffcc" colspan="7" style="height: 24px; width: 604px;" align="right">
                                    <input id="WagerTxt" runat="server" maxlength="0" readonly="readonly" type="text" style="visibility: hidden" /><input id="ButPlValue" runat="server" title="四盘(盘别A、盘别B、盘别C、盘别D)按盘差同时变更"
                                        type="checkbox" style="visibility: hidden" /></td>
                                <td id="Td2" runat="server" bgcolor="#ffffcc" align="right">
                                    <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();" Text="确定" Width="43px" /><input name="Submit2" type="reset" value="清除" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
