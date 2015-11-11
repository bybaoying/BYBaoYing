// JScript 文件

//    var ChipNoSx_Tag= new Array();//生肖 
//    ChipNoSx_Tag[1]=	'鼠';
//    ChipNoSx_Tag[2]=	'牛';
//    ChipNoSx_Tag[3]=	'虎';
//    ChipNoSx_Tag[4]=	'兔';
//    ChipNoSx_Tag[5]=	'龙';
//    ChipNoSx_Tag[6]=	'蛇';
//    ChipNoSx_Tag[7]=	'马';
//    ChipNoSx_Tag[8]=  '羊';
//    ChipNoSx_Tag[9]=	'猴';
//    ChipNoSx_Tag[10]=	'鸡';
//    ChipNoSx_Tag[11]=	'狗';
//    ChipNoSx_Tag[12]=	'猪';
//        ChipNoSx_Property[] =true;//首肖含49码\r\n");

    var ChipNoWs_Tag= new Array();//生肖 
    ChipNoWs_Tag[0]=	'零尾';
    ChipNoWs_Tag[1]=	'一尾';
    ChipNoWs_Tag[2]=	'二尾';
    ChipNoWs_Tag[3]=	'三尾';
    ChipNoWs_Tag[4]=	'四尾';
    ChipNoWs_Tag[5]=	'五尾';
    ChipNoWs_Tag[6]=	'六尾';
    ChipNoWs_Tag[7]=	'七尾';
    ChipNoWs_Tag[8]=  '八尾';
    ChipNoWs_Tag[9]=	'九尾';
    var ChipNoWs_Property= new Array();//尾数
    ChipNoWs_Property[0]=	true;
    ChipNoWs_Property[1]=	false;
    ChipNoWs_Property[2]=	false;
    ChipNoWs_Property[3]=	false;
    ChipNoWs_Property[4]=	false;
    ChipNoWs_Property[5]=	false;
    ChipNoWs_Property[6]=	false;
    ChipNoWs_Property[7]=	false;
    ChipNoWs_Property[8]=  false;
    ChipNoWs_Property[9]=	false;
function  ChipNoWs_TagStr( vtmStr){//进行组合标签 尾数
    var arrTmNo = vtmStr.split(";");
    var i ;
    var lstr= "";
    var lBack_Value = new Array();//生肖
    var lChipNoWs_Property=false ;
    q = arrTmNo.length ;

    for( i=0; i < q; i++ ) { 
        if (i==q-1)
        {
            lstr = lstr + ChipNoWs_Tag[Number( arrTmNo[i])]   ;
        }
        else
        {
            lstr = lstr + ChipNoWs_Tag[Number( arrTmNo[i])] + ';'  ;
        }
        if ( arrTmNo[i] == 0)
        {
            lChipNoWs_Property = true;
        }
    }

    lBack_Value[0]=lstr;
    lBack_Value[1]=lChipNoWs_Property;
//    return lstr &,true;
    return lBack_Value;

}
function  ChipNoSx_TagStr( vtmStr){//进行组合标签 生肖
    var arrTmNo = vtmStr.split(";");
    var i ;
    var lstr= "";
    var lBack_Value = new Array();//生肖
    var lChipNoSx_Property=false ;
    q=arrTmNo.length ;

    for( i=0; i < q; i++ ) { 
        if (i==q-1)
        {
            lstr = lstr + ChipNoSx_Tag[Number(arrTmNo[i])]   ;
        }
        else
        {
            lstr = lstr + ChipNoSx_Tag[Number(arrTmNo[i])] + ';'  ;
        }
        
        if (ChipNoSx_Property[Number(arrTmNo[i])]==true)
        {
            lChipNoSx_Property = true;
        }
    }
    lBack_Value[0]=lstr;
    lBack_Value[1]=lChipNoSx_Property;
//    return lstr &,true;
    return lBack_Value;
}