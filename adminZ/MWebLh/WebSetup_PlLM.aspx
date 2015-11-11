<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_PlLM, App_Web_irsz2q38" enableEventValidation="false" %>

<%@ Register Src="WebSetup_Pl_MenuToolsBar.ascx" TagName="WebSetup_Pl_MenuToolsBar" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        function HrefLj(tm)
        {
            location=tm + '?ltype=' + document.getElementById('ltype').value + '&pct=' + document.getElementById('pct').value + '&stoptime=-1';
        }
       function SubData()
        {//生成将修改的字符串

            mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById('WagerTxt').value = "" ;
            var lWagerStr= "",lSetValue = "";
            
            lSetValue = SetValue("08","lm2z");//连码二全中
            if (lSetValue == "ChkFalse"){
                return false;
            }
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("11","lm2zt.lm2ztA");//连码二中特
            if (lSetValue == "ChkFalse"){
                return false;
            }                
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("10","lm3z2.lm3z2A");//连码三中二
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;

            lSetValue = SetValue("09","lm3z3");//连码三中三
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("12","lmtc");//连码特串
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;

            lSetValue = SetValue("25","lmbz5.lmbz8");//连码不中
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;
//            lSetValue = SetValue("25","lmbz8");//连码不中
//            if (lSetValue == "ChkFalse"){
//                return false;
//            }   
//            lWagerStr = lWagerStr + lSetValue ;


            lSetValue = SetValue("38","lx2Y.lx2N.lx2YA.lx2NA");//连肖
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;
            lSetValue = SetValue("43","lx3Y.lx3N.lx3YA.lx3NA");//连肖
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;
            lSetValue = SetValue("44","lx4Y.lx4N.lx4YA.lx4NA");//连肖
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;
            lSetValue = SetValue("45","lx5Y.lx5N.lx5YA.lx5NA");//连肖
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;
            
            lSetValue = SetValue("39","lw2.lw2A");//连尾
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;
            lSetValue = SetValue("46","lw3.lw3A");//连尾
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;
            lSetValue = SetValue("47","lw4.lw4A");//连尾
            if (lSetValue == "ChkFalse"){
                return false;
            }   
            lWagerStr = lWagerStr + lSetValue ;
            lSetValue = SetValue("48","lw5.lw5A");//连尾
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
                                <uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" GameCaption="主盤" runat="server" ItmeChooseName="LinkPlLm" />
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
                    &nbsp;&nbsp;连码&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40">
                        时间</td>
                    <td width="30">
                        期数</td>
                    <td style="width: 100px" colspan="2">
                        三中二</td>
                    <td style="width: 60px">
                        注单</td>
                    <td style="width: 100px" colspan="2">
                        三全中</td>
                    <td style="width: 60px">
                        注单</td>
                    <td style="width: 100px" colspan="2">
                        二全中</td>
                    <td style="width: 60px">
                        注单</td>
                    <td style="width: 100px" colspan="2">
                        二中特</td>
                    <td style="width: 60px">
                        注单</td>
                    <td style="width: 100px" colspan="2">
                        特串</td>
                    <td style="width: 60px">
                        注单</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td rowspan="14" id="Labtmwindate" runat="server">
                    </td>
                    <td align="middle" rowspan="14" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title">
                        中二</td>
                    <td class="show_Td_pl" align="right" id="TSlm3z2" runat="server">
                    </td>
                    <td runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlm3z2" runat="server" CssClass="Show_Je">[HLlm3z2]</asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" rowspan="2" id="TSlm3z3" runat="server" colspan="2">
                        &nbsp;</td>
                    <td runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlm3z3" runat="server" CssClass="Show_Je">[HLlm3z3]</asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" rowspan="2" id="TSlm2z" runat="server" colspan="2">
                        &nbsp;</td>
                    <td runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlm2z" runat="server" CssClass="Show_Je">[HLlm2z]</asp:HyperLink></td>
                    <td class="Td_Title">
                        中特</td>
                    <td class="show_Td_pl" align="right" id="TSlm2zt" runat="server">
                        &nbsp;</td>
                    <td runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlm2zt" runat="server" CssClass="Show_Je">[HLlm2zt]</asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" rowspan="2" id="TSlmtc" runat="server" colspan="2">
                        &nbsp;</td>
                    <td runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlmtc" runat="server" CssClass="Show_Je">[HLlmtc]</asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        中三</td>
                    <td class="show_Td_pl" align="right" id="TSlm3z2A" runat="server">
                    </td>
                    <td class="Td_Title">
                        中二</td>
                    <td class="show_Td_pl" align="right" id="TSlm2ztA" runat="server">
                        &nbsp;</td>
                </tr>
                <tr class="ra_listbet_title">
                    <td colspan="2">
                        五不中</td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        八不中</td>
                    <td>
                        注单</td>
                    <td colspan="2">
                    </td>
                    <td>
                    </td>
                    <td colspan="2">
                    </td>
                    <td>
                    </td>
                    <td colspan="2">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="show_Td_pl" align="right" colspan="2" id="TSlmbz5" rowspan="2" runat="server">
                    </td>
                    <td id="Td5" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlmbz5" runat="server" CssClass="Show_Je">[HLlmbz5]</asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" rowspan="2" id="TSlmbz8" runat="server" colspan="2">
                        &nbsp;</td>
                    <td id="Td7" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlmbz8" runat="server" CssClass="Show_Je">[HLlmbz8]</asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" rowspan="2" id="Td8" runat="server" colspan="2">
                    </td>
                    <td id="Td9" runat="server" class="show_Td_pl" align="right" rowspan="2">
                    </td>
                    <td class="Td_Title" colspan="2" rowspan="2">
                    </td>
                    <td id="Td11" runat="server" class="show_Td_pl" align="right" rowspan="2">
                    </td>
                    <td class="show_Td_pl" align="right" rowspan="2" id="Td12" runat="server" colspan="2">
                    </td>
                    <td id="Td13" runat="server" class="show_Td_pl" align="right" rowspan="2">
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                </tr>
                <tr class="ra_listbet_title">
                    <td colspan="2">
                        二肖碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        三肖碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        四肖碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        五肖碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        二肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx2Y" runat="server">
                    </td>
                    <td id="Td23" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlx2Y" runat="server" CssClass="Show_Je">[HLlx2Y]</asp:HyperLink></td>
                    <td class="Td_Title" style="width: 100px">
                        三肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx3Y" runat="server">
                        &nbsp;</td>
                    <td id="Td25" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlx3Y" runat="server" CssClass="Show_Je">[HLlx3Y]</asp:HyperLink></td>
                    <td runat="server" class="Td_Title">
                        四肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx4Y" runat="server" style="width: 100px">
                        &nbsp;</td>
                    <td id="Td27" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlx4Y" runat="server" CssClass="Show_Je">[HLlx4Y]</asp:HyperLink></td>
                    <td class="Td_Title">
                        五肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx5Y" runat="server">
                        &nbsp;</td>
                    <td id="Td29" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlx5Y" runat="server" CssClass="Show_Je">[HLlx5Y]</asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" rowspan="2" id="Td30" runat="server" colspan="2">
                    </td>
                    <td id="Td31" runat="server" class="show_Td_pl" align="right" rowspan="2">
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        首肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx2YA" runat="server">
                    </td>
                    <td class="Td_Title">
                        首肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx3YA" runat="server">
                    </td>
                    <td class="Td_Title">
                        首肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx4YA" runat="server" style="width: 100px">
                    </td>
                    <td class="Td_Title">
                        首肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx5YA" runat="server">
                        &nbsp;</td>
                </tr>
                <tr class="ra_listbet_title">
                    <td colspan="2">
                        二肖不碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        三肖不碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        四肖不碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        五肖不碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        二肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx2N" runat="server">
                    </td>
                    <td id="Td15" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlx2N" runat="server" CssClass="Show_Je">[HLlx2N]</asp:HyperLink></td>
                    <td class="Td_Title" style="width: 100px">
                        三肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx3N" runat="server">
                        &nbsp;</td>
                    <td id="Td17" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlx3N" runat="server" CssClass="Show_Je">[HLlx3N]</asp:HyperLink></td>
                    <td id="Td18" runat="server" class="Td_Title">
                        四肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx4N" runat="server" style="width: 100px">
                        &nbsp;</td>
                    <td id="Td24" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlx4N" runat="server" CssClass="Show_Je">[HLlx4N]</asp:HyperLink></td>
                    <td class="Td_Title">
                        五肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx5N" runat="server">
                        &nbsp;</td>
                    <td id="Td28" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlx5N" runat="server" CssClass="Show_Je">[HLlx5N]</asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" rowspan="2" id="Td32" runat="server" colspan="2">
                    </td>
                    <td id="Td34" runat="server" class="show_Td_pl" align="right" rowspan="2">
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        首肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx2NA" runat="server">
                    </td>
                    <td class="Td_Title">
                        首肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx3NA" runat="server">
                    </td>
                    <td class="Td_Title">
                        首肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx4NA" runat="server" style="width: 100px">
                    </td>
                    <td class="Td_Title">
                        首肖</td>
                    <td class="show_Td_pl" align="right" id="TSlx5NA" runat="server">
                        &nbsp;</td>
                </tr>
                <tr class="ra_listbet_title">
                    <td colspan="2">
                        二尾碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        三尾碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        四尾碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                        五尾碰
                    </td>
                    <td>
                        注单</td>
                    <td colspan="2">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        二尾</td>
                    <td class="show_Td_pl" align="right" id="TSlw2" runat="server">
                    </td>
                    <td id="Td42" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlw2" runat="server" CssClass="Show_Je">[HLlw2]</asp:HyperLink></td>
                    <td class="Td_Title" style="width: 100px">
                        三尾</td>
                    <td class="show_Td_pl" align="right" id="TSlw3" runat="server">
                        &nbsp;</td>
                    <td id="Td44" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlw3" runat="server" CssClass="Show_Je">[HLlw3]</asp:HyperLink></td>
                    <td id="Td45" runat="server" class="Td_Title">
                        四尾</td>
                    <td class="show_Td_pl" align="right" id="TSlw4" runat="server" style="width: 100px">
                        &nbsp;</td>
                    <td id="Td47" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlw4" runat="server" CssClass="Show_Je">[HLlw4]</asp:HyperLink></td>
                    <td class="Td_Title">
                        五尾</td>
                    <td class="show_Td_pl" align="right" id="TSlw5" runat="server">
                        &nbsp;</td>
                    <td id="Td49" runat="server" class="show_Td_pl" align="right" rowspan="2">
                        <asp:HyperLink ID="HLlw5" runat="server" CssClass="Show_Je">[HLlw5]</asp:HyperLink></td>
                    <td class="show_Td_pl" align="right" rowspan="2" id="Td50" runat="server" colspan="2">
                    </td>
                    <td id="Td52" runat="server" class="show_Td_pl" align="right" rowspan="2">
                    </td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        零尾</td>
                    <td class="show_Td_pl" align="right" id="TSlw2A" runat="server">
                    </td>
                    <td class="Td_Title">
                        零尾</td>
                    <td class="show_Td_pl" align="right" id="TSlw3A" runat="server">
                    </td>
                    <td class="Td_Title">
                        零尾</td>
                    <td class="show_Td_pl" align="right" id="TSlw4A" runat="server" style="width: 100px">
                    </td>
                    <td class="Td_Title">
                        零尾</td>
                    <td class="show_Td_pl" align="right" id="TSlw5A" runat="server">
                        &nbsp;</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" colspan="17">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0" id="TSetupPl" runat="server">
                            <tr>
                                <td bgcolor="#ffffcc">
                                </td>
                                <td bgcolor="#ffffcc" align="right">
                                    <input id="WagerTxt" runat="server" maxlength="0" readonly="readonly" type="text" style="visibility: hidden; width: 381px" />
                                    <input id="ButPlValue" runat="server" title="四盘(盘别A、盘别B、盘别C、盘别D)按盘差同时变更" type="checkbox" />按盘差同变</td>
                                <td id="Td1" runat="server" bgcolor="#ffffcc">
                                    <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();" Text="确定" Width="43px" />
                                    <input name="Submit2" type="reset" value="清除" /></td>
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
