// JScript 文件

var LR_xmlHttp;
var lastclsid=null;
var kind0=true;
function GetXmlHttpObject(handler){
    var objXmlHttp = null;
    if(kind0)objXmlHttp = GetMSXmlHttp();
    
    if (objXmlHttp != null){
        
        objXmlHttp.onreadystatechange = handler;
//        alert (handler  );
    }else{
        kind0=false;
        objXmlHttp = new XMLHttpRequest();
        if (objXmlHttp != null){
            try{
                objXmlHttp.onload = handler;
                objXmlHttp.onerror = handler;
                objXmlHttp.onreadystatechange = handler;
            }catch(e){}
        }
    }
    return objXmlHttp;
}

function GetMSXmlHttp(){
    var xmlHttp = null;
    if(lastclsid==null){
        var clsids = ['Msxml2.XMLHTTP.6.0','Msxml2.XMLHTTP.5.0','Msxml2.XMLHTTP.4.0','Msxml2.XMLHTTP.3.0','Msxml2.XMLHTTP.2.6','Microsoft.XMLHTTP.1.0','Microsoft.XMLHTTP.1','Microsoft.XMLHTTP'];
        for(var i=0; i<clsids.length && xmlHttp == null; i++){
            xmlHttp = CreateXmlHttp(clsids[i]);
            }
    }else{
        xmlHttp = CreateXmlHttp(lastclsid);
    }
    return xmlHttp;
}
function CreateXmlHttp(clsid){
    var xmlHttp = null;
    try{
        xmlHttp = new ActiveXObject(clsid);
        lastclsid = clsid;
        return xmlHttp;
    }
    catch(e) {
        return null;
    }
}
var Ajax_timerID;
var trypost=0;
//alert ("trypost" );
function PostCall(url,poststr){
//    alert (url );
//    poststr = PostCharESC(poststr) ;
    if(LR_xmlHttp!=null){
        trypost++;
        if(trypost>20){
            getReady('err2');
//            alert (trypost );
            LR_xmlHttp=null;
            return;
        }
//        alert ('err2d?' + trypost );
//        Ajax_timerID=setTimeout("PostCall('"+url+"','"+poststr+"')",1000);
        return;
    }
    trypost=0;

//        alert(typeof(window.XMLHttpRequest));
    if(window.XMLHttpRequest)   // firefox
    {        
        try 
        { 
            netscape.security.PrivilegeManager.enablePrivilege("UniversalBrowserRead"); 
            //权限UniversalBrowserWrite/UniversalBrowserRead分别表示可写/可读.
        }
        catch (exception)
        { 
            alert(exception +"\r\n" + "在firefox的地址栏中输入 [about:config]，并找到signed.applets.codebase_principal_support，将其设为true。"); 
        }
    }
    try{
        LR_xmlHttp = GetXmlHttpObject(CallbackMethod);
 
        if (typeof(LR_xmlHttp) !='object'){
            return;
        }

        if(typeof(LR_xmlHttp.setRequestHeader) != 'undefined'){
            
            LR_xmlHttp.open('POST', url, true);
            
            LR_xmlHttp.setRequestHeader('content-length',poststr.length);
            LR_xmlHttp.setRequestHeader('content-type','application/x-www-form-urlencoded');//;charset=utf-8
//            alert(url);
            LR_xmlHttp.send(poststr);
     
        }
        else{
            LR_xmlHttp.open('GET', url+'?'+poststr, true);
            LR_xmlHttp.send(null);
        }
    }
    catch(e){
        getReady('err3');
        
        LR_xmlHttp=null;
    }
    
}

function GetCall(url,poststr){
     

    if(window.XMLHttpRequest)   // firefox
    {        
        try 
        { 
            netscape.security.PrivilegeManager.enablePrivilege("UniversalBrowserRead"); 
            //权限UniversalBrowserWrite/UniversalBrowserRead分别表示可写/可读.
        }
        catch (exception)
        { 
            alert(exception +"\r\n" + "在firefox的地址栏中输入 [about:config]，并找到signed.applets.codebase_principal_support，将其设为true。"); 
        }
    }
    try{
        LR_xmlHttp = GetXmlHttpObject(CallbackMethod);
        if (typeof(LR_xmlHttp) !='object'){
            return;
        }
        if (poststr=="")
        {
            LR_xmlHttp.open('GET', url , true);
//            LR_xmlHttp.open('GET', url+'?rdom='+Math.random() , true);
//布尔型，指定此请求是否为异步方式，默认为true。如果为真，当状态改变时会调用onreadystatechange属性指定的回调函数。 

//            response.buffer=false 

        }
        else
        {
            
            LR_xmlHttp.open('GET', url+'?'+poststr , true);
        }
//        alert(url+'?rdom='+Math.random());
//        window.Refresh;
    
//        LR_xmlHttp.setRequestHeader('Referer','yyy');
//        alert(LR_xmlHttp.getAllResponseHeaders());

        LR_xmlHttp.send(null);
//  alert(LR_xmlHttp.getAllResponseHeaders());
    }
    catch(e){
        getReady('err3');
        
        LR_xmlHttp=null;
    }
    
}
function CallbackMethod(){
    try{
      
        if(LR_xmlHttp==null){return;}
        if(LR_xmlHttp.readyState == 0){}
        else if(LR_xmlHttp.readyState == 1){}
        else if(LR_xmlHttp.readyState == 2){}
        else if(LR_xmlHttp.readyState == 3){}
        else if(LR_xmlHttp.readyState == 4 || LR_xmlHttp.readyState == 'complete')//对象读取服务器响应结束。

        {
            if(LR_xmlHttp.status == 200 ){
                var response = LR_xmlHttp.responseText;
//                alert (response.length);
                
                getReady(response);
            }
            else{
                getReady('err4:' +LR_xmlHttp.status);
            }
//                   alert (LR_xmlHttp.status );
            LR_xmlHttp.abort;//'退出当前请求
            LR_xmlHttp=null;
        }
        else 
        {
            if(LR_xmlHttp.status == 404){
                getReady('err5:');//是没有找到文件
                LR_xmlHttp=null;
            }
            else{
                getReady('err6:');
                LR_xmlHttp=null;
            }
        }
    }
    catch(e){
        getReady('err7:');
        LR_xmlHttp=null;
    }
}


function getReady(returnvalue){
//    alert (returnvalue );
    if (returnvalue==null ){

 
         return;
     }
     if (returnvalue.indexOf('err')==0){
 
        return;
    }
//    returnvalue = GetCharESC(returnvalue );
    CalledBackMessage(returnvalue);
//     var rr = returnvalue.split("&");
//     for(w=0;w<rr.length;w++){
//         if(rr[w]==''){
//            continue;
//         }
//         else
//         {
//            var lCommandIndex = rr[w].indexOf("=");
//            if (lCommandIndex != -1)
//            {
//                var lGetCommand = rr[w].substring(0,lCommandIndex);
//                var lGetCharString = rr[w].substring(lCommandIndex+1);
//                lGetCharString = GetCharESC(lGetCharString );
//                BackCommand(lGetCommand,lGetCharString);
//            }
//         }
//     }
}

function BackCommand(vGetCommand,vGetCharString){
//    CalledBackMessage(vGetCommand)
    switch(vGetCommand){
        case 'GetMessage': 
            
            CalledBackMessage(vGetCharString)
            break;

        case 'direct':


            return;
        case 'exit':
            return;
    }
}
//     if(rr[w]=='noinput'){
//         f10(c21+':'+shortcut);
//         continue;
//     }
//     
//     var o = rr[w].split("|");
//     if(o.length>1 && o[0]=='inputting'){
//         f10(c86.replace('{0}',unescape(o[1].replace(/\+/g,'%20'))));
//         continue;
//     }

function PostCharESC(vCharString){

//    vCharString = vCharString.replace ('%',"%25");
//    vCharString = vCharString.replace ('&',"%26");
    
    vCharString = escape(vCharString);
//    alert (vCharString);
    return vCharString;
}
function GetCharESC(vCharString){
//    alert (vCharString);
//    vCharString = vCharString.replace ('%25',"%");
//    vCharString = vCharString.replace ('%26',"&");
    vCharString = unescape(vCharString);
//    alert (vCharString);
    return vCharString;
}

 function OpenDialog(url,width,height){
 if (navigator.appName=='Microsoft Internet Explorer'){
    window.showModalDialog(url,self,'dialogWidth:'+width+'px;dialogHeight:'+height+'px;status:0;scroll:0;location:0;help:0;')
 ;}else{window.open(url,'LR_Dialog','modal=yes,width='+width+',height='+height+',resizable=no,scrollbars=no,location=no,status=no');
 }}
  function SetFont(){OpenDialog('SetFont_'+c13+'.aspx',380,280);}