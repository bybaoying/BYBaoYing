<%@ page language="C#" autoeventwireup="true" inherits="member_d3_WebOt_ld_9z, App_Web_t2vtoice" enableEventValidation="false" %>

<%@ Register Src="Web_PageFootCont.ascx" TagName="Web_PageFootCont" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link id="Style_Page_Main" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_Main_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />
    <link id="Style_Page_Head" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_Page_HeadCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />
    <link id="Style_Page_Foot" href="../<%= base.GetGlobalResourceObject("res_css_style", "user_style_caption") %>/Style_PageFootCont_<% =Request.QueryString["GameType"] %>.css" rel="stylesheet"
        type="text/css" />

    <script language="JavaScript" type="text/javascript" src="../Scripts/but_chip_Check.js"></script>

    <script language="javascript" type="text/javascript" src="../Scripts/JS_Page_tab.js"></script>

    <script language="JavaScript" type="text/javascript">
        if(self == top) location = '/';
        //����ʺ�,����,���� ��Ԫ����

        

        function CheckKey()
        {
            if(event.keyCode == 13) return true;
            if(!((event.keyCode > 47 && event.keyCode < 58 ) || event.keyCode == 46 ))
            {
              alert("����ʹ�������ַ�!!"); return false;
            }
        }

        function chanagePage()
        {
            location="ld_1zEd.aspx?GameType=" + "<% =Request.QueryString["GameType"] %>" + "&Classid=" + "<% =Request.QueryString["Classid"] %>" ;
        }

        function openNewPage(vClassid)
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=' + vClassid ;
        }   
        function openLink()
        {
            location='?GameType=<% =Request.QueryString["GameType"] %>&Classid=<% =Request.QueryString["Classid"] %>';
        }
        var type_nums = 9;  //Ԥ��Ϊ 3��2
        var type_min = 4;
        var cb_num = 0;
        var mess1 =  '����ѡ��';
        var mess11 = '������';
        var mess2 =  '���ѡ��';
        var mess3 = '��ѡ������';
        var mess = '���ѡ��';
        var rs_num = 'R';	//�趨Ҫѡ������ɺ����� ���� ���� ����
        var num_color = new Array();
        var select_num = new Array();
        function select_types(type) {
            type_nums = 10;//�Ҹ�
            type_min =  Number(type)
            CHorRS();
        } 

        function select_RS(temp) {	//ѡ������Ҫѡ�ɺ��� �����Ż��Ǹ���
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



        //�ύ���	
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
              alert('��ѡ�����');
              return false;
            }
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
            //���ѡ�� ��/����  �������û��ѡ����
	            alert(mess3);
	            select_RS('R');
	            return false;
            }
            if(checkCount < (type_min))
            {
                alert(mess1+type_min+mess11);
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
       {//��vUnitNum�����֣�����vTypeNum��ʽ����ϣ����м������
           var i,j,k,m,n;
    	   
           k = vUnitNum - vTypeNum;
           var lTypeNum = vTypeNum ;//��VlTypeNum�Ľ׳�
            for( i=vTypeNum - 1; i > 0; i -- ) {
                lTypeNum = i *  lTypeNum

            }
            
           k = vUnitNum - vTypeNum;//��vUnitNum - vTypeNum�Ľ׳�
           var lGroupNumber = vUnitNum ;
            for( i=vUnitNum-1; i > k; i -- ) {
                lGroupNumber = i *  lGroupNumber
            }
            return lGroupNumber /  lTypeNum
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
            document.lt_form.rs_s.value ="";//��ѡ���ĸ���
            document.lt_form.rs_num.value ="0";//��ѡ���ĸ��������
            
            var lSNumBll = 0;
//	            numobj = document.lt_form.elements;
            var lobjname;
            var lobjChk;
            for (i=0; i<10; i++) {
                lobjname ="chk"+i;
//                    alert (lobjname ); 
       	        lobjChk = document.getElementById(lobjname) ;

                if ( lobjChk.checked == true) 
                {
	                if(lobjChk.value == document.lt_form.rs_r.value && document.lt_form.RS.checked ==true){
	                //�������
		                document.getElementById("RNumB").innerHTML  = "<span style='background-repeat: no-repeat; text-align: center; height: 25px; width: 25px;'><font style=\"filter: glow(color=#000000,strength=1); height:10px; color:#000000; padding:2px\">"+ lobjChk.value +"</font></span>";
		                }
	                else{
	                //�������
	                    lSNumBll ++;
		                document.getElementById("SNumB").innerHTML += "<span style='background-repeat: no-repeat; text-align: center; height: 25px; width: 25px;'><font style=\"filter: glow(color=#000000,strength=1); height:10px; color:#000000; padding:2px\">"+ lobjChk.value +"</font></span>";
		                document.lt_form.rs_s.value += lobjChk.value +";";
		                }
                }
            }
            document.lt_form.rs_num.value =lSNumBll;//��ѡ���ĸ��������
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
                select_RS('R'); //ѡ�� ����
	            
	            document.getElementById("RNumT").style.display="";
	            document.getElementById("RNumB").style.display="";
	            document.getElementById("SNumT").style.display="";
	            document.getElementById("SNumB").style.display="";
             
            } else {
                //ѡ����
                if (!(document.lt_form.rs_r.value=="" || document.lt_form.rs_r.value == "00"))
                {
                    lobjname ="chk"+Number(document.lt_form.rs_r.value);
       	            obj = document.getElementById(lobjname)  ;
       	            obj.checked = false; 
                    RSChkBox(obj) ;
                    
                    document.lt_form.rs_r.value = "";
                    document.getElementById("RNumB").innerHTML  = "";

                }
	            document.getElementById("RNumT").style.display="none";
	            document.getElementById("RNumB").style.display="none";
	            document.getElementById("SNumT").style.display="none";
//		            eval("SNumB.style.display=\"none\";");
            }	

        }
        function SendData()
        {
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
            
            var arrTm = lquerstr.split(";");//����ѡ�ĺ����༰����ID
            var ltmZno= "00";
            if (document.lt_form.RS.checked) {
                ltmZno = document.lt_form.rs_r.value ;;
            }
            window.parent.bbnet_mem_order.location.href='FT_order_9z.aspx?GameType=<% =Request.QueryString["GameType"] %>&TmClassId=' + arrTm[1] + '&TmTypeId=' +  arrTm[0] + 
                '&TmNo=' + document.lt_form.rs_s.value + '&TmZNo=' + ltmZno  + 
                '&TmJe=' + document.lt_form.Txtbutje.value;
        }        
    </script>

    <%--oncontextmenu="self.event.returnValue=false;window.event.returnValue=false;"
    ondragstart="return   false" onselectstart="return   false" onselect="document.selection.empty()"
    oncopy="document.selection.empty()" onbeforecopy="return false"--%>
</head>
<body>
    <form id="lt_form" method="post" runat="server">
        <div class="div_windows">
            <table id="Table4" class="table_windows" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td>
                            <table id="Table9" class="Page_Head" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td class="Page_HeadL">
                                    </td>
                                    <td class="Page_HeadM">
                                        <span class="img_message"></span><span id="Msg">
                                            <marquee id="helpor_net" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);" style="width: 600px; height: 16px">
                                                <% =mOtMessage %>
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
                        <td class="Td_TabPage">
                            <div id="tab">
                                <ul>
                                    <li id="linkZ3" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage(61);">����</a></li>
                                    <li id="linkZ6" runat="server" class="unTagClick"><a onmousemove="Object_hover(this);" onmouseout="Object_leave(this);" href="javascript:openNewPage(62);">����</a></li>
                                    <li id="space"><span></span></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="Td_Cont" class="Td_Table" runat="server">
                            <table id="TableKK" border="0" cellspacing="1" cellpadding="0" runat="server">
                                <tr>
                                    <td>
                                        <table id="Table8" class="table_ChipHead" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table class="table_ChipTitle" id="Table12" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td style="width: 150px">
                                                                    <strong>
                                                                        <asp:Label ID="LabItemCaption" runat="server">����������</asp:Label></strong></td>
                                                                <td style="width: 250px">
                                                                    (<b>���ʱ��:</b>
                                                                    <asp:Label ID="LabNowDate" runat="server"></asp:Label>)</td>
                                                                <td style="text-align: right;">
                                                                    <strong><a class="click_text" onclick="openLink();">ˢ��</a></strong>
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
                                                                    <strong>����:</strong>
                                                                    <asp:Label ID="Labtmwinno" runat="server"></asp:Label>
                                                                </td>
                                                                <td style="width: 250px">
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <b>��������:</b>
                                                                    <asp:Label ID="Labtmwindate" runat="server"></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table id="Table1" class="table_Chip" border="0" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_Chipsend">
                                                                <td style="width: 40px" class="td_Chipsend">
                                                                    ���:
                                                                </td>
                                                                <td style="width: 80px">
                                                                    <asp:TextBox onkeypress="return MoneyKey(event);" ID="Txtbutje" runat="server" MaxLength="7" CssClass="Ed_TmMoneyfont"></asp:TextBox></td>
                                                                <td>
                                                                    <input id="ButSend" onclick="SendData();" type="button" class="button_Ok" value="����" />
                                                                    <input onmouseup="return reset();" type="reset" class="button_Reset" value="ȡ��" />
                                                                    <input id="TxtClassid" runat="server" type="text" style="visibility: hidden; width: 3px" /></td>
                                                                <td>
                                                                    <asp:Label ID="Label10" runat="server" Text="ѡ�ţ�"></asp:Label>
                                                                    <asp:Label ID="TmNum" runat="server"></asp:Label>
                                                                    <asp:Label ID="Label11" runat="server" Text="���"></asp:Label>
                                                                    <asp:Label ID="GroupNum" runat="server"></asp:Label>
                                                                    <asp:Label ID="Label12" runat="server" Text="����"></asp:Label>&nbsp;
                                                                    <input type="hidden" name="rs_r" size="10">
                                                                    <input type="hidden" name="rs_s" size="10">
                                                                    <input type="hidden" name="rs_num" size="5">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table id="RSTable" class="table_Chip" cellspacing="0" cellpadding="0" border="0">
                                                            <tr class="tr_Chipsend">
                                                                <td width="80">
                                                                    <input id="RS" onclick="CHorRS();" type="checkbox" value="R" name="RS" runat="server">��/����</td>
                                                                <td id="RNumT" onclick="select_RS('R');" width="40">
                                                                    ����</td>
                                                                <td id="RNumB" align="center" width="40" runat="server">
                                                                </td>
                                                                <td id="SNumT" onclick="select_RS('S');" width="40">
                                                                    ����</td>
                                                                <td id="SNumB" align="center" width="300">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table id="TableA" class="table_Chip" cellspacing="1" runat="server">
                                            <tr class="Tr_TmShow">
                                                <td class="TmLabfont">
                                                    ���</td>
                                            </tr>
                                            <tr class="Tr_TmShow">
                                                <td class="td_TmLabfont">
                                                    ����</td>
                                            </tr>
                                        </table>
                                        <table id="Table6" class="table_Chip" cellspacing="1" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        ����</td>
                                                    <td class="td_Head_set_cen">
                                                        ѡ��</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        ����</td>
                                                    <td class="td_Head_set_cen">
                                                        ѡ��</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        ����</td>
                                                    <td class="td_Head_set_cen">
                                                        ѡ��</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        ����</td>
                                                    <td class="td_Head_set_cen">
                                                        ѡ��</td>
                                                    <td class="td_Head_set_cen" style="width: 30px">
                                                        ����</td>
                                                    <td class="td_Head_set_cen">
                                                        ѡ��</td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">0</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk0" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="0" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">1</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk1" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="1" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">2</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk2" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="2" />
                                                    </td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">3</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk3" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="3" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">4</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk4" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="4" /></td>
                                                </tr>
                                                <tr class="Tr_TmShow">
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">5</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk5" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="5" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">6</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk6" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="6" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">7</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk7" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="7" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">8</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk8" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="8" /></td>
                                                    <td class="Td_TmBallfont">
                                                        <font class="ballfont">9</font></td>
                                                    <td class="Show_Pl">
                                                        <input id="chk9" onclick="RSChkBox(this);" type="checkbox" class="checkSy" name="Chktm" value="9" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <uc2:Web_PageFootCont ID="WebPageFoot1" runat="server" />
        </div>
    </form>
</body>
</html>
