<%@ control language="C#" autoeventwireup="true" inherits="member_app_WebMoneyManToolMenu, App_Web_vwupdd6k" %>
  
    <script language="javascript" type="text/javascript">
        
        function openNewPage(vUlr)
        {
            
            document.location=vUlr ;
        }  
            
    </script>

    <a id="linkZm1" runat="server" class="ClickChipChooseOn" onclick="javascript:openNewPage('WebMoneyOutInRecord.aspx');">
        <img src="../images/add.gif" align="absmiddle" height="16" width="16" />
        <span>交易记录</span></a>
    <a id="linkZm2" runat="server" class="ClickChipChooseOn" onclick="javascript:openNewPage('WebMoneyManOut.aspx');"><img src="../images/add.gif" align="absmiddle" height="16" width="16" />
        <span>提款</span></a>
    <a id="Button1" runat="server" class="ClickChipChooseOn" onclick="javascript:openNewPage('WebMoneyManIn.aspx');"><img src="../images/add.gif" align="absmiddle" height="16" width="16" />
        <span>存款</span></a>
    <a id="Button3" runat="server" class="ClickChipChooseOn" onclick="javascript:openNewPage('WebMoneyManPW.aspx');"><img src="../images/add.gif" align="absmiddle" height="16" width="16" />
            提款密码</a>
    <a id="Button4" runat="server" class="ClickChipChooseOn" onclick="javascript:openNewPage('WebMoneyManage.aspx');"><img src="../images/add.gif" align="absmiddle" height="16" width="16" />
        <span>钱包资料</span></a>
        
 
