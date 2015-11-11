<%@ page language="C#" autoeventwireup="true" inherits="adminZ_MWebLh_PlBall, App_Web_irsz2q38" enableEventValidation="false" %>

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
//            alert(vSelectTm);
                document.getElementById(vSelectTm).value=vTmPl;
                
        }   
         function SelectBall(vTmno){
            
             if (!(document.getElementById("TmPlValue").value.toLowerCase() == 'a' || document.getElementById("TmPlValue").value.toLowerCase() == 'b' ))
            {
                 if(isNaN(document.getElementById("TmPlValue").value) == true || document.getElementById("TmPlValue").value == '' )
                     {
                        document.getElementById("TmPlValue").focus();
                        alert("设置的赔率!!");
                        return ;
                    }
                    else
                    {
                        document.getElementById("TmPlValue").value = Number(document.getElementById("TmPlValue").value) ;
                    }
            }
            var arrNum = vTmno.split(".");
            for (var i = 0 ; i < (arrNum.length - 1); i++){
               var tmno = arrNum[i];

                if (document.getElementById('SelZM').value =='-1'){
                    SelectTmOk("TxtEditPlr"  + tmno,document.getElementById("TmPlValue").value );
                    SelectTmOk("TxtEditPlg"  + tmno,document.getElementById("TmPlValue").value );
                    SelectTmOk("TxtEditPlb"  + tmno,document.getElementById("TmPlValue").value );

                }
                else
                {
//                    alert(document.getElementById('SelZM').value);
	                SelectTmOk("TxtEditPl" + document.getElementById('SelZM').value  + tmno.toString(),document.getElementById("TmPlValue").value);
	            }
            }
        } 
 
            
        function SubData()
        {//生成将修改的字符串

            mChipMoneySum = 0 ;//保存注单的金额合计
            document.getElementById('WagerTxt').value = "" ;
            var lWagerStr= "",lSetValue = "";
            


            lSetValue = SetValue("21","rdr.rsa.rda.rxa.gdr.gsa.gda.gxa.bdr.bsa.bda.bxa");
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
                                <uc1:WebSetup_Pl_MenuToolsBar ID="WebSetup_Pl_MenuToolsBar" GameCaption="主盤" runat="server" ItmeChooseName="LinkPlBall" />
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
                    &nbsp;&nbsp;半波&nbsp;&nbsp;-- 香港时间:<asp:Label ID="LabNowDate" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table class="ra_listbet_tab" id="glist_table" cellspacing="1" cellpadding="0" border="0" runat="server">
            <tbody>
                <tr class="ra_listbet_title">
                    <td width="40">
                        时间</td>
                    <td width="40">
                        期数</td>
                    <td width="60">
                        半波</td>
                    <td width="90">
                        赔率</td>
                    <td width="90">
                        注单</td>
                    <td width="40">
                        半波</td>
                    <td width="90">
                        赔率</td>
                    <td width="90">
                        注单</td>
                    <td width="40">
                        半波</td>
                    <td width="90">
                        赔率</td>
                    <td width="90">
                        注单</td>
                    <td width="40">
                        半波</td>
                    <td width="90">
                        赔率</td>
                    <td width="90">
                        注单</td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td rowspan="3" id="Labtmwindate" runat="server">
                    </td>
                    <td align="middle" rowspan="3" id="Labtmwinno" runat="server">
                    </td>
                    <td class="Td_Title">
                        红单</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSrdr">
                    </td>
                    <td align="middle" id="rdr" runat="server">
                        <asp:HyperLink ID="HLrdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        红双</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSrsa">
                    </td>
                    <td align="middle" id="rsa" runat="server">
                        <asp:HyperLink ID="HLrsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        红大</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSrda">
                    </td>
                    <td align="middle" id="rda" runat="server">
                        <asp:HyperLink ID="HLrda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        红小</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSrxa">
                    </td>
                    <td align="middle" id="rxa" runat="server">
                        <asp:HyperLink ID="HLrxa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        绿单</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSgdr">
                    </td>
                    <td align="middle" id="gdr" runat="server">
                        <asp:HyperLink ID="HLgdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        绿双</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSgsa">
                    </td>
                    <td align="middle" id="gsa" runat="server">
                        <asp:HyperLink ID="HLgsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        绿大</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSgda">
                    </td>
                    <td align="middle" id="gda" runat="server">
                        <asp:HyperLink ID="HLgda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        绿小</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSgxa">
                    </td>
                    <td align="middle" id="gxa" runat="server">
                        <asp:HyperLink ID="HLgxa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td class="Td_Title">
                        蓝单</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSbdr">
                    </td>
                    <td align="middle" id="bdr" runat="server">
                        <asp:HyperLink ID="HLbdr" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        蓝双</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSbsa">
                    </td>
                    <td align="middle" id="bsa" runat="server">
                        <asp:HyperLink ID="HLbsa" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        蓝大</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSbda">
                    </td>
                    <td align="middle" id="bda" runat="server">
                        <asp:HyperLink ID="HLbda" runat="server" class="show_je"></asp:HyperLink></td>
                    <td class="Td_Title">
                        蓝小</td>
                    <td runat="server" class="show_Td_pl" align="right" id="TSbxa">
                    </td>
                    <td align="middle" id="bxa" runat="server">
                        <asp:HyperLink ID="HLbxa" runat="server" class="show_je"></asp:HyperLink></td>
                </tr>
                <tr bgcolor="#ffffff">
                    <td align="middle" colspan="14" bgcolor="#ffffcc">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0" id="TSetupPl" runat="server">
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                </td>
                                <td bgcolor="#ffffcc" colspan="13" style="height: 24px" align="right">
                                    <input id="WagerTxt" runat="server" maxlength="0" readonly="readonly" style="width: 381px; visibility: hidden;" type="text" /><input id="ButPlValue" runat="server" title="四盘(盘别A、盘别B、盘别C、盘别D)按盘差同时变更"
                                        type="checkbox" />按盘差同变</td>
                                <td runat="server" bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    <asp:Button ID="ButOk" runat="server" OnClick="ButOk_Click" OnClientClick="return SubData();" Text="确定" Width="43px" />
                                    <input name="Submit2" type="reset" value="清除" /></td>
                            </tr>
                            <tr>
                                <td bgcolor="#ffffcc" colspan="1" style="height: 24px">
                                    赔率
                                    <input name="textfield2" type="text" size="8" id="TmPlValue" runat="server" /></td>
                                <td bgcolor="#ffffcc" colspan="5" style="height: 24px">
                                    &nbsp;选择波色:&nbsp;
                                    <select class="za_select" id="SelZM" name="ltype" runat="server" style="width: 68px">
                                        <option value="-1" selected>全选</option>
                                        <option value="r">红波</option>
                                        <option value="g">绿波</option>
                                        <option value="b">蓝波</option>
                                    </select>
                                </td>
                                <td id="Td50" runat="server" bgcolor="#ffffcc" colspan="8" style="height: 24px">
                                    <strong><span style="font-size: 11pt; color: #cc0000">
                                        <asp:HyperLink ID="HyperLink12" runat="server" BackColor="Silver" ForeColor="Black" NavigateUrl="javascript:SelectBall('dr.sa.da.xa.')">全部</asp:HyperLink>
                                        &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" BackColor="#80FF80" NavigateUrl="javascript:SelectBall('dr.')">单</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#80FFFF" NavigateUrl="javascript:SelectBall('sa.')">双</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink3" runat="server" BackColor="#C0C0FF" NavigateUrl="javascript:SelectBall('da.')">大</asp:HyperLink>&nbsp;
                                        <asp:HyperLink ID="HyperLink4" runat="server" BackColor="#FFC0FF" NavigateUrl="javascript:SelectBall('xa.')">小</asp:HyperLink>
                                    </span></strong>
                                </td>
                                <td runat="server" bgcolor="#ffffcc" colspan="1" style="height: 24px">
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
