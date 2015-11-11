// JScript 文件

 
function PageShow(vPageCount, vPageRowCount, vRecordStartId, lUrl) 
{//页号显示

    
    var lPageStr ="";
    var lPageNumMax = 5 ;//限制显示最大的页数
    var lPageNo = Math.round(vRecordStartId / vPageRowCount) ;//当前页号
    var lPageStartNo = 0;//页开始号
    var lPageEndNo = vPageCount;//页结束号
    if (vPageCount > lPageNumMax)//页总数如大于限制显示数
    {
        if (lPageNo > Math.floor(lPageNumMax / 2) )
        {
            if (lPageNo + lPageNumMax >  vPageCount )
            {
                lPageStartNo = vPageCount - lPageNumMax;//Math.floor 除 取下限值 
            }
            else
            {
                lPageStartNo = lPageNo -  Math.floor(lPageNumMax / 2);//Math.floor 除 取下限值 
            }
        }
        if (lPageStartNo + lPageNumMax < vPageCount )
        {
            lPageEndNo = lPageStartNo + lPageNumMax;
        }
    }
    
    
    for (var i=lPageStartNo;i< lPageEndNo ;i++)
    {  
        if (i ==lPageStartNo)
        {
            if (lPageNo == 0 )
            {
                lPageStr =lPageStr  + "<SPAN class=\"next\" >上一页</SPAN>" ;
            }
            else
            {
                lPageStr =lPageStr  + "<a  class=\"next\" href=\"javascript:onclick=PageClick('" +  lUrl.replace("*si*",String(vRecordStartId - 1 * vPageRowCount))+ "')\" >上一页</a>" ;
            }
            
            if (lPageEndNo > lPageNumMax )
            {
                lPageStr =lPageStr  + "<a  class=\"PageId\" href=\"javascript:onclick=PageClick('" +  lUrl.replace("*si*",String(0))+ "')\" >1..</a>" ;
            }
     
        }
        if (i  == lPageNo)
        {
            lPageStr =lPageStr  + "<SPAN class=\"NowPageId\">" + String(i+1)  + "</SPAN>";//当前页
        }
        else
        {
            lPageStr =lPageStr  + " <a  class=\"PageId\" href=\"javascript:onclick=PageClick('" +  lUrl.replace("*si*",String(i * vPageRowCount))+ "')\" >" + String(i+1) + "</a> " ;
        }
        
        if (i ==(lPageEndNo  - 1))
        {  
            
            if (lPageEndNo != vPageCount )
            {
                lPageStr =lPageStr  + "<a  class=\"PageId\"  href=\"javascript:onclick=PageClick('" +  lUrl.replace("*si*",String((vPageCount-1) * vPageRowCount))+ "')\" >" + String(vPageCount) + "..</a>" ;
            }
            if (lPageNo >= vPageCount-1)
            {
                lPageStr =lPageStr  + "<SPAN class=\"next\" >下一页</SPAN>" ;
            }
            else
            {
                lPageStr =lPageStr  + "<a class=\"next\" href=\"javascript:onclick=PageClick('" +  lUrl.replace("*si*",String(vRecordStartId + 1 * vPageRowCount))+ "')\" >下一页</a>" ;
            }
        }
    }
    document.getElementById("fpage").innerHTML =  lPageStr;
}
