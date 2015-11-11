<%@ page language="c#" inherits="WebTm.ln_lm, App_Web_xt-ylzzg" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat ="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_TM.css" rel="stylesheet" type="text/css" />
    <link href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_TM.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../js/sub_chipEdit.js"></script>

    <script language="javascript" type="text/javascript" src="../Scripts/TimeAutoexeRef.js"></script>
    
    <script language="JavaScript" type="text/javascript">


        if(self == top) location = '/';
        //检查帐号,名称,密码 字元限制
        function CheckKey()
        {
            if(event.keyCode == 13) return true;
            if(!((event.keyCode > 47 && event.keyCode < 58 ) || event.keyCode == 46 ))
            {
                alert("金额不可使用特殊字符!!"); return false;
            }
        }

        var gTime = '11053';
        var type_nums = 10;  //预设为 3中2
        var type_min = 3;
        var cb_num = 0;
        var mess1 =  '最少选择';
        var mess11 = '个数字';
        var mess2 =  '最多选择';
        var mess3 = '请选择正号';
        var mess = '最多选择';
        var rs_num = 'R';	//设定要选择填入ㄉ号码是 正号 还是 副号
        var num_color = new Array();
        var select_num = new Array();
        var fst = '11053';

        num_color['01'] = 'r.gif'; 
        num_color['02'] = 'r.gif'; 
        num_color['03'] = 'b.gif'; 
        num_color['04'] = 'b.gif'; 
        num_color['05'] = 'g.gif'; 
        num_color['06'] = 'g.gif'; 
        num_color['07'] = 'r.gif'; 
        num_color['08'] = 'r.gif'; 
        num_color['09'] = 'b.gif'; 
        num_color['10'] = 'b.gif'; 
        num_color['11'] = 'g.gif'; 
        num_color['12'] = 'r.gif'; 
        num_color['13'] = 'r.gif'; 
        num_color['14'] = 'b.gif'; 
        num_color['15'] = 'b.gif'; 
        num_color['16'] = 'g.gif'; 
        num_color['17'] = 'g.gif'; 
        num_color['18'] = 'r.gif'; 
        num_color['19'] = 'r.gif'; 
        num_color['20'] = 'b.gif'; 
        num_color['21'] = 'g.gif'; 
        num_color['22'] = 'g.gif'; 
        num_color['23'] = 'r.gif'; 
        num_color['24'] = 'r.gif'; 
        num_color['25'] = 'b.gif'; 
        num_color['26'] = 'b.gif'; 
        num_color['27'] = 'g.gif'; 
        num_color['28'] = 'g.gif'; 
        num_color['29'] = 'r.gif'; 
        num_color['30'] = 'r.gif'; 
        num_color['31'] = 'b.gif'; 
        num_color['32'] = 'g.gif'; 
        num_color['33'] = 'g.gif'; 
        num_color['34'] = 'r.gif'; 
        num_color['35'] = 'r.gif'; 
        num_color['36'] = 'b.gif'; 
        num_color['37'] = 'b.gif'; 
        num_color['38'] = 'g.gif'; 
        num_color['39'] = 'g.gif'; 
        num_color['40'] = 'r.gif'; 
        num_color['41'] = 'b.gif'; 
        num_color['42'] = 'b.gif'; 
        num_color['43'] = 'g.gif'; 
        num_color['44'] = 'g.gif'; 
        num_color['45'] = 'r.gif'; 
        num_color['46'] = 'r.gif'; 
        num_color['47'] = 'b.gif'; 
        num_color['48'] = 'b.gif'; 
        num_color['49'] = 'g.gif'; 

        function select_types(type) {
//            if (type == 1 || type == 2) {
//	            type_nums = 10;//我改
////		            type_nums = 3;
//	            type_min = 3;
//            } else {
////		            type_nums = 2;
//	            type_nums = 10;//我改
//	            type_min = 2;
//            }
        	switch (type)
            {  
                case 1 :
                      type_nums = 10;
                      type_min = 3;
                      break;
                case 2:
	                type_nums = 10;//我改
	                type_min = 3;
                    break;
                case 3   :
	                type_nums = 10;//我改
	                type_min = 2;
                    break;
                case 4 :
	                type_nums = 10;//我改
	                type_min = 2;
                    break;
                case  5 :
	                type_nums = 10;//我改
	                type_min = 2;
                    break;
                case 6:
                     type_nums = 10;//我改
	                type_min = 5;
                    break;
                case 7:
                     type_nums = 10;//我改
	                type_min = 8;
                    break;
            }
//	            eval("RSTable.style.display=\"\";");
//	            select_RS('R');
            CHorRS();
        } 

        function select_RS(temp) {	//选择现在要选ㄉ号码 是正号还是副号
            if(temp == 'R') {
	            rs_num = 'R';
	            document.getElementById("RNumT").style.color = "#FF0000";
	            document.getElementById("SNumT").style.color = "#000000";
            } else {
	            rs_num = 'S';
	            document.getElementById("RNumT").style.color = "#000000";
	            document.getElementById("SNumT").style.color = "#FF0000";
            }	
        }



        //提交检查	
        function ZSubChk(obj) {
            var checkCount = 0;
            var checknum = obj.elements.length;
            var rtypechk = 0;
        	
        	
            for(i=0; i<obj.rtype.length; i++) {
	            if (obj.rtype[i].checked) {
		            rtypechk ++;
	            }
            }

            if (rtypechk == 0) {
              alert('请选择类别');
              return false;
            }
  
//	            for(i=0; i<obj.TmNo.length; i++) {
//		            if (obj.TmNo[i].checked) {
//			            checkCount ++;
//		            }
//	            }
            
            

            for(i=0; i<checknum; i++) {
	            if (obj.elements[i].checked && obj.elements[i].type == "checkbox") {
		            checkCount ++;
//			            alert(obj.elements[i].name +  obj.elements[i].type);
	            }
            }
            if (checkCount > (type_nums + 1)) 
            {
                alert(mess2 + type_nums +mess11);
        		
                return false;
            }          	
        	
            


            if (document.lt_form.RS.checked && document.lt_form.rs_r.value == '') {
            //检查选ㄌ 正/副码  检查他有没有选正号
	            alert(mess3);
	            select_RS('R');
	            return false;
            }
        	
//	            if (document.lt_form.RS.checked ) {
//	            //检查选ㄌ 正/副码  检查他有没有选正号

//	            }
//	            else{
//	           


//                }
//            alert(checkCount);
            if(checkCount < (type_min))
            {
                alert(mess1+type_min+mess11);
                return false;
            }
//                return SubChk();
//                alert("error");

            if (Number(document.lt_form.TxtLm.value)==0)
            {
	            alert('请写入金额');
	            return false;
            }
            return true;
        	
        }

        function SubChkBox(obj) {

            if(obj.checked == false)
            {
	            cb_num--;
	            //obj.checked = false;
	            document.getElementById("TmNum").innerHTML = cb_num;
	            
	            return true;
            }


            //alert (cb_num);


            if(obj.checked == true)
            {
	            if ( cb_num >= type_nums ) 
	            {
		            alert(mess + type_nums + mess11);
//			            cb_num--;
		            obj.checked = false;
		            return false;
	            }
	            
	            cb_num++;
	            document.getElementById("TmNum").innerHTML = cb_num;
	            return true;
            }
        }


    
   
       function  GroupNumber(vUnitNum,vTypeNum)
       {//求vUnitNum个数字，进行vTypeNum形式的组合，共有几种情况
           var i,j,k,m,n;
           if (vTypeNum==0)
           {
                return 0;
            }
           k = vUnitNum - vTypeNum;
           var lTypeNum = vTypeNum ;//求VlTypeNum的阶乘
            for( i=vTypeNum - 1; i > 0; i -- ) {
                lTypeNum = i *  lTypeNum

            }
            
           k = vUnitNum - vTypeNum;//求vUnitNum - vTypeNum的阶乘
           var lGroupNumber = vUnitNum ;
            for( i=vUnitNum-1; i > k; i -- ) {
                lGroupNumber = i *  lGroupNumber
            }
            return lGroupNumber /  lTypeNum
//C16(5)=(16*15*14*13*12*11)/(6*5*4*3*2*1)=8008
//这是你考虑5个数字顺序的方法，如果考虑顺序就是
//A16（5）=16*15*14*13*12*11=5765760 
       }
        function RSChkBox(obj) {
            if (! SubChkBox(obj)){
                return;
            }
             
       
            if(rs_num == 'R' && obj.checked) {
	            document.lt_form.rs_r.value = obj.value;
	            select_RS('S');
            }
            document.getElementById("RNumB").innerHTML = "";
            document.getElementById("SNumB").innerHTML = "";
            document.lt_form.rs_s.value ="";//存选定的副码
            document.lt_form.rs_num.value ="0";//存选定的副码的数量
            
            var lSNumBll = 0;
//	            numobj = document.lt_form.elements;
            var lobjname;
            var lobjChk;
            for (i=1; i<50; i++) {
                lobjname ="chk"+i;
//                    alert (lobjname ); 
       	        lobjChk = document.getElementById(lobjname) ;

                if ( lobjChk.checked == true) 
                {
	                if(lobjChk.value == document.lt_form.rs_r.value && document.lt_form.RS.checked ==true){
	                //正码添加
		                document.getElementById("RNumB").innerHTML  = "<span class='Td_LmBallfont' style='background-image: url(../imagesBall/"+ num_color[lobjChk.value] + ");background-repeat: no-repeat; text-align: center; height: 25px; width: 25px;'><font style=\"filter: glow(color=#000000,strength=1); height:10px; color:#000000; padding:2px\">"+ lobjChk.value +"</font></span>";
		                }
	                else{
	                //副码添加
	                    lSNumBll ++;
//		                document.getElementById("SNumB").innerHTML += "<span style='background-image: url(../imagesBall/"+ num_color[lobjChk.value] + ");background-repeat: no-repeat; text-align: center; height: 25px; width: 25px;'><font style=\"filter: glow(color=#000000,strength=1); height:10px; color:#000000; padding:2px\">"+ lobjChk.value +"</font></span>";
		                document.getElementById("SNumB").innerHTML += "<span class='Td_LmBallfont' style='height: 25px; width: 25px;background-image: url(../imagesBall/"+ num_color[lobjChk.value] + ")'><font class='ballfont'>"+ lobjChk.value +"</font></span>";

//		               document.getElementById("SNumB"].innerHTML += "<span style='background-image: url(../imagesBall/"+ num_color[lobjChk.value] + ")'><font class='ballfont'>"+ lobjChk.value +"</font></span>";
		                document.lt_form.rs_s.value += lobjChk.value +";";
		                }
                }
            }
            document.lt_form.rs_num.value =lSNumBll;//存选定的副码的数量
            if (document.lt_form.RS.checked ==true){
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,type_min-1) ;
            }else{
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,type_min) ;
               }

            if(document.getElementById("RNumB").innerHTML == "") {
	            document.lt_form.rs_r.value = "";
	            select_RS('R');
            }
        }
        
        function CHorRS() {
            var lSNumBll = document.lt_form.rs_num.value;
            
            if (document.lt_form.RS.checked ==true){
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,type_min-1) ;
            }else{
                document.getElementById("GroupNum").innerHTML = GroupNumber(lSNumBll,type_min) ;
               }
            if(document.lt_form.RS.checked) {
                select_RS('R'); //选择 正码
//	            eval("RNumT.style.display=\"\";");
//	            eval("RNumB.style.display=\"\";");
//	            eval("SNumT.style.display=\"\";");
//	            eval("SNumB.style.display=\"\";");
	            document.getElementById("RNumT").style.display="";
	            document.getElementById("RNumB").style.display="";
	            document.getElementById("SNumT").style.display="";
	            document.getElementById("SNumB").style.display="";
             
            } else {
                //选择副码
                if (!(document.lt_form.rs_r.value=="" || document.lt_form.rs_r.value == "00"))
                {
                    lobjname ="chk"+Number(document.lt_form.rs_r.value);
       	            obj = document.getElementById(lobjname)  ;
       	            obj.checked = false; 
                    RSChkBox(obj) ;
                    
                    document.lt_form.rs_r.value = "";
                    document.getElementById("RNumB").innerHTML  = "";

                }
                
//	            eval("RNumT.style.display=\"none\";");
//	            eval("RNumB.style.display=\"none\";");
//	            eval("SNumT.style.display=\"none\";");
	            
	            document.getElementById("RNumT").style.display="none";
	            document.getElementById("RNumB").style.display="none";
	            document.getElementById("SNumT").style.display="none";
//	            document.getElementById("SNumB").style.display="none";
//		            eval("SNumB.style.display=\"none\";");
            }	

        }
        function SendData()
        {//
            var obj = document.lt_form ;
            if (!ZSubChk(obj)){
                return;
                }
            
            var lquerstr = "";
           for(i=0; i<obj.rtype.length; i++) {
	            if (obj.rtype[i].checked) {
		            lquerstr = obj.rtype[i].value;
	            }
            }
            
            var arrTm = lquerstr.split(";");//返回选的号码类及号码ID
            var ltmZno= "00";
            if (document.lt_form.RS.checked) {
                ltmZno = document.lt_form.rs_r.value ;;
            }
//            window.open('FT_order_Lm.aspx?TmClassId=' + arrTm[1] + '&TmTypeId=' +  arrTm[0] + 
//                '&TmNo=' + document.lt_form.rs_s.value + '&TmZNo=' + ltmZno  + 
//                '&TmJe=' + document.lt_form.TxtLm.value,'bbnet_mem_order');//地址不变，重新打开不刷新页面
            window.parent.bbnet_mem_order.location.href='FT_order_Lm.aspx?TmClassId=' + arrTm[1] + '&TmTypeId=' +  arrTm[0] + 
                '&TmNo=' + document.lt_form.rs_s.value + '&TmZNo=' + ltmZno  + 
                '&TmJe=' + document.lt_form.TxtLm.value;
        }         

        function SendDataA()
        {
            window.parent.bbnet_mem_order.location.href='FT_order_Lm.aspx?TmClassId=20&TmTypeId=555&TmNo=01;02;鼠;虎;龙;&TmZNo=00&TmJe=10';
        }
            

        function openLink()
        {
            
            var lReftime = document.getElementById('retime').value; 
            location="?stoptime=" + lReftime ;
        }
        function PageLoad(){

                     
            if (document.getElementById("TableKK") == null)
            { 
            
            }
            else
            {
                var lReftime ="<% =Request.QueryString["stoptime"] %>";
                if (lReftime != "")
                {
                    document.getElementById('retime').value =lReftime;
                }
                CHorRS();
            }
            ReTimeShow();   
            
        }

        function ReTimeShow()
        {
            if (document.getElementById('retime') != null)
            {
                var lReftime = document.getElementById('retime').value; 
                AutoRefShow(lReftime,"LabReftime");
            }else{
                AutoRefShow(60,"");
            }
        } 
        function RefTimeBack()
        {
            if (document.getElementById("TableKK") == null){ 
                location='?stoptime=' + "60";
            }else{
                var cw = document.getElementById("FramePlShow");      
                cw.src= "lg_Gettmpl.aspx?classStr=tmClassId = '08' or tmClassId = '09'  or tmClassId = '10'  or tmClassId = '11'  or tmClassId = '12'  or tmClassId = '25'";
            }
        }

    </script>
<%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false" --%>
</head>

<body onload="PageLoad();">
    <form id="lt_form" name="lt_form" method="post" runat="server" enableviewstate="False">
        <div class="div_windows">
            <table id="Table4" class="table_windows" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        <table id="Table9" class="Page_Head" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td class="Page_HeadL">
                                </td>
                                <td class="Page_HeadM">
                                   <span class="img_message"> </span>  
                                    <span id="Msg">
                                        <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);"
                                            style="width: 600px; height: 16px">
                                            <% =Session["TmMessage"] %>
                                        </marquee>
                                    </span>
                                </td>
                                <td class="Page_HeadR">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="Td_Cont" class="Td_Table" runat="server"> 
                        <table id="TableKK" border="0" cellspacing="1"   cellpadding="0" runat="server">
                            <tr>
                                <td>
                                    <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>连码.不中</strong></td>
                                                            <td style="width: 250px">
                                                                (<b>香港时间:</b>
                                                                <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                            <td style="text-align: right;">
                                                                <a class="clickRefreshPage" onclick="openLink();">刷新</a> :<label id="LabReftime"></label>&nbsp;
                                                                <select id="retime" runat="server" name="retime" onchange="ReTimeShow();">
                                                                    <option value="20">20 s</option>
                                                                    <option value="40">40 s</option>
                                                                    <option selected="selected" value="60">60 s</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="table_ChipInfo" id="Table2" border="0" cellspacing="1" cellpadding="0">
                                                        <tr>
                                                            <td style="width: 150px">
                                                                <strong>期数:</strong>
                                                                <asp:Label ID="Labtmwinno" runat="server"></asp:Label></td>
                                                            <td style="width: 250px">
                                                            </td>
                                                            <td style="text-align: right">
                                                                <strong>开奖日期:
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></strong></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table id="Table20" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                        <tr class="tr_Chipsend">
                                                            <td style="width: 30px"  class="td_Chipsend">
                                                                金额</td>
                                                            <td style="width: 40px" >
                                                                 <asp:TextBox onkeypress="return MoneyKey(event);" ID="TxtLm" runat="server" CssClass="Ed_TmMoneyfont"
                                                                    MaxLength="7"></asp:TextBox></td>
                                                            <td style="width: 150px"  >
                                                                <input id="ButSend" type="button" onclick="SendData();" class="button_Ok" value="发送" />
                                                                <input onclick="cb_num=0;" type="reset" value="取消" class="button_Reset" name="btnSubmit">
                                                                <input id="TxtButData" runat="server" name="TxtButData" type="text" maxlength="1"
                                                                    size="1" style="visibility: hidden; width: 4px; display: none;" /></td>
                                                            <td  class="td_Chipsend">
                                                                <asp:Label ID="Label1" runat="server" Text="选号："></asp:Label>
                                                                <asp:Label ID="TmNum" runat="server"></asp:Label>
                                                                <asp:Label ID="Label3" runat="server" Text="组成"></asp:Label>
                                                                <asp:Label ID="GroupNum" runat="server"></asp:Label>
                                                                <asp:Label ID="Label2" runat="server" Text="单。"></asp:Label>&nbsp;
                                                                <input type="hidden" name="rs_r" size="3"><input type="hidden" name="rs_s" size="3"><input
                                                                    type="hidden" name="rs_num" size="3"></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                        <tbody>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    类别</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlm3z3" onclick="select_types(2);" type="radio" value="CH_3" name="rtype"
                                                        runat="server">三全中</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlm3z2" onclick="select_types(1);" type="radio" value="CH_32" name="rtype"
                                                        runat="server">三中二</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlm2z" onclick="select_types(3);" type="radio" value="CH_2" name="rtype"
                                                        runat="server">二全中</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlm2zt" onclick="select_types(4);" type="radio" value="CH_2S" name="rtype"
                                                        runat="server">二中特</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlmtc" onclick="select_types(5);" type="radio" value="CH_2SP" name="rtype"
                                                        runat="server">特串</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlmbz5" onclick="select_types(6);" type="radio" value="CH_2SP" name="rtype"
                                                        runat="server">五不中</td>
                                                <td class="TmLabfont">
                                                    <input id="Txtlmbz8" onclick="select_types(7);" type="radio" value="CH_2SP" name="rtype"
                                                        runat="server">八不中</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    赔率</td>
                                                <td class="Td_TmPlfont">
                                                    <span class="TmPlLabelfont">三全中</span>
                                                    <asp:Label ID="Lablm3z3" class="Show_Pl" runat="server">Label</asp:Label>
                                                    <asp:Label ID="Lablm3z3B" class="Show_Pl" runat="server" Visible="False">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <span class="TmPlLabelfont">中二</span>
                                                    <asp:Label ID="Lablm3z2" class="Show_Pl" runat="server">Label</asp:Label><br>
                                                    <span class="TmPlLabelfont">中三</span>
                                                    <asp:Label ID="Lablm3z2B" class="Show_Pl" runat="server">Label</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <span class="TmPlLabelfont">二全中</span>
                                                    <asp:Label ID="Lablm2z" class="Show_Pl" runat="server">Label</asp:Label>
                                                    <asp:Label ID="Lablm2zB" class="Show_Pl" runat="server" Visible="False">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <span class="TmPlLabelfont">中特</span>
                                                    <asp:Label ID="Lablm2zt" class="Show_Pl" runat="server">Label</asp:Label><br>
                                                    <span class="TmPlLabelfont">中二</span>
                                                    <asp:Label ID="Lablm2ztB" class="Show_Pl" runat="server">Label</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <span class="TmPlLabelfont">特串</span>
                                                    <asp:Label ID="Lablmtc" class="Show_Pl" runat="server">Label</asp:Label>
                                                    <asp:Label ID="LablmtcB" class="Show_Pl" runat="server" Visible="False">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <span class="TmPlLabelfont">五不中</span>
                                                    <asp:Label ID="Lablmbz5" class="Show_Pl" runat="server">Label</asp:Label>
                                                    <asp:Label ID="Lablmbz5B" class="Show_Pl" runat="server" Visible="False">.</asp:Label></td>
                                                <td class="Td_TmPlfont">
                                                    <span class="TmPlLabelfont">八不中</span>
                                                    <asp:Label ID="Lablmbz8" class="Show_Pl" runat="server">Label</asp:Label>
                                                    <asp:Label ID="Lablmbz8B" class="Show_Pl" runat="server" Visible="False">.</asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="8" >
                                                    <table id="RSTable" width="100%" cellspacing="0" cellpadding="0" border="0" >
                                                        <tr class="Tr_TmShow">
                                                            <td width="80px" class="TmLabfont">
                                                                <input id="RS" onclick="CHorRS();" type="checkbox" class="checkSy" value="R" name="RS" runat="server"/>
                                                                <span> 正/副号</span></td>
                                                            <td id="RNumT" onclick="select_RS('R');" width="40" class="TmLabfont">
                                                                正号</td>
                                                            <td id="RNumB" align="center" width="40" runat="server" class="Td_TmBallfont">
                                                            </td>
                                                            <td id="SNumT" onclick="select_RS('S');" width="40" class="TmLabfont">
                                                                副号</td>
                                                            <td id="SNumB" align="center" class="Td_TmBallfont">
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table id="Table7" class="table_Chip" border="0" cellspacing="1" cellpadding="0">
                                        <tr>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                号码</td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                勾选</td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                号码</td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                勾选</td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                号码</td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                勾选</td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                号码</td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                勾选</td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                号码</td>
                                            <td class="td_Head_set_cen" style="width: 50px">
                                                勾选</td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">01</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk1"  onclick="RSChkBox(this);" type="checkbox" class="checkSy"
                                                    value="01" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">11</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk11" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="11" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">21</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk21" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="21" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">31</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk31" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="31" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">41</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk41" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="41" name="TmNo"></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">02</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk2" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="02" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">12</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk12" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="12" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">22</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk22" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="22" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">32</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk32" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="32" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">42</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk42" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="42" name="TmNo"></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">03</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk3" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="03" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">13</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk13" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="13" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">23</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk23" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="23" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">33</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk33" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="33" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">43</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk43" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="43" name="TmNo"></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">04</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk4" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="04" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">14</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk14" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="14" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">24</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk24" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="24" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">34</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk34" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="34" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">44</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk44" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="44" name="TmNo"></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">05</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk5" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="05" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">15</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk15" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="15" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">25</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk25" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="25" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">35</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk35" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="35" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">45</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk45" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="45" name="TmNo"></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">06</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk6" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="06" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">16</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk16" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="16" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">26</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk26" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="26" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">36</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk36" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="36" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">46</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk46" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="46" name="TmNo"></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">07</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk7" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="07" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">17</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk17" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="17" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">27</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk27" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="27" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">37</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk37" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="37" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">47</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk47" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="47" name="TmNo"></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">08</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk8" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="08" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">18</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk18" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="18" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">28</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk28" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="28" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">38</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk38" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="38" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">48</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk48" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="48" name="TmNo"></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">09</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk9" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="09" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">19</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk19" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="19" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">29</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk29" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="29" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">39</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk39" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="39" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/g.gif)">
                                                <font class="ballfont">49</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk49" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="49" name="TmNo"></td>
                                        </tr>
                                        <tr class="Tr_TmShow">
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">10</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk10" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="10" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/b.gif)">
                                                <font class="ballfont">20</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk20" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="20" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">30</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk30" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="30" name="TmNo"></td>
                                            <td class="Td_TmBallfont" style="background-image: url(../imagesBall/r.gif)">
                                                <font class="ballfont">40</font></td>
                                            <td class="Show_Pl">
                                                <input id="chk40" onclick="RSChkBox(this); " type="checkbox" class="checkSy" value="40" name="TmNo"></td>
                                            <td align="center" class="Td_TmBallfont">
                                                &nbsp;</td>
                                            <td class="Show_Pl">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
        <iframe id="FramePlShow" name="FramePlShow" src="" width="40" height="0" style="visibility: hidden">
        </iframe>
    </form>
</body>
</html>

