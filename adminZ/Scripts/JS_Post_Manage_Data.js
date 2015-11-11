// JScript 文件

         function Row_del(vDo_Tag,vId,vRowTag)
        {

  
            if(confirm('确定删除记录吗?'))
            {
                 var lSrc = "../Mapp/Post_Manage_Data.aspx?Back_Method_Success=Row_delete_success&Back_Method_Fail=Row_delete_Fail&Do_Tag=" + vDo_Tag +"&sysid=" + vId + "&Objet_Tag=" + vRowTag;
     
                  this.window.frames['Post_Manage_Data'].location.href=lSrc;
   
       
            }
            else
            {

            }
            
        } 
        function Row_delete_success(vRowId)
        {
            
             
             document.getElementById(vRowId).parentNode.removeChild( document.getElementById(vRowId) );
        }
        function Row_delete_Fail(vInfo)
        {
            
            alert(vInfo);
        }    