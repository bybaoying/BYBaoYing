<%@ page language="C#" autoeventwireup="true" inherits="adminZ_Mapp_mainlogout, App_Web_i89w4dwr" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
        <script   language="C#" runat="server">
		    public string mMain_Src = "";
            protected void Page_Init(object sender, EventArgs e)
            {
                string lServer_Name = Request.ServerVariables.Get("Server_Name").ToString();

                string lUserSrc = ConfigurationSettings.AppSettings["UserSrc"];
                string lSysSrc = ConfigurationSettings.AppSettings["SysSrc"];
                string lManagerc = ConfigurationSettings.AppSettings["Managerc"];

                

                if (lServer_Name.IndexOf(lSysSrc) != -1)
                {
                    mMain_Src = base.GetGlobalResourceObject("res_css_style", "Manage_weblogin").ToString();
                }
                else if (lServer_Name.IndexOf(lManagerc) != -1)
                {
                        mMain_Src = "WLoginM.aspx";
                }
                else 
                {
                    mMain_Src = base.GetGlobalResourceObject("res_css_style", "Manage_weblogin").ToString();
                }

                //Response.Redirect(mMain_Src, false);
                //mMain_Src = "member/app/WebLoginA.aspx";
                //mMain_Src = "websess.aspx";
               
            }
		</script>
		<script language="JavaScript" type="text/javascript">
            alert('請重新輸入管理帳戶及密碼進入!');
//            window.open('WLoginZ.aspx',"IB888_MAIN");
            window.open("<% = mMain_Src %>","IB888_MAIN");
//            window.open('WLoginZ.aspx','_parent');
		</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

