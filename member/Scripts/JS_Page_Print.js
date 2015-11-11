// JScript 文件


     　　function printsetup()
            {
     　　      // 打印页面设置
     　　      wb.execwb(8,1);
     　　} 

     　　function printpreview()
            {
     　　      // 打印页面预览
     　　　  wb.execwb(7,1); 　
     　　}
    
     　　function printit()
     　　{
     　　   window.print();
//     　　      if (confirm('确定打印吗？')) { wb.execwb(6,6) }
     　　}
     　　
//<style type="text/css" media=print>
//.noprint{display : none }
//</style>

//然后使用样式就可以：

//<p class="noprint">不需要打印的地方</p>

//=============================================================
//2：组件法
//WebBrowser是IE内置的浏览器控件，无需用户下载.

//一、WebBrowser控件 
//　　<object ID='WebBrowser' WIDTH=0 HEIGHT=0 CLASSID='CLSID:8856F961-340A-11D0-A96B-00C04FD705A2'></object> 
//二、WebBrowder控件的方法 
////打印 

//WebBrowser1.ExecWB(6,1); 

////打印设置 

//WebBrowser1.ExecWB(8,1); 

////打印预览 

//WebBrowser1.ExecWB(7,1); 

//关于这个组件还有其他的用法，列举如下： 
//WebBrowser.ExecWB(1,1) 打开 
//Web.ExecWB(2,1) 关闭现在所有的IE窗口，并打开一个新窗口 
//Web.ExecWB(4,1) 保存网页 
//Web.ExecWB(6,1) 打印 
//Web.ExecWB(7,1) 打印预览 
//Web.ExecWB(8,1) 打印页面设置 
//Web.ExecWB(10,1) 查看页面属性 
//Web.ExecWB(15,1) 好像是撤销，有待确认 
//Web.ExecWB(17,1) 全选 
//Web.ExecWB(22,1) 刷新 
//Web.ExecWB(45,1) 关闭窗体无提示 