    function FunChipPlShow( vTmnoPl ,vTmNoCap,vTmPlCap )
    {
//        alert(vTmnoLabel);
//        alert(vTmnoPl );
        
//        var arrTmnoLabel = vTmnoLabel.split(";");
        var arrTmnoPl = vTmnoPl.split(";");
        for (var i = 0 ; i < (arrTmnoPl.length - 1); i++){
            ChipShow(arrTmnoPl[i],vTmNoCap,vTmPlCap);
            
        }
        
    }
    function ChipShow(vTmnoPlStr,vTmNoCap,vTmPlCap) {
    
        try{
            var arrTmnoPl = vTmnoPlStr.split("/");
            var lTmnoLab =arrTmnoPl[0];
            var lTmnoPl = arrTmnoPl[1];
            if (document.getElementById( vTmPlCap + lTmnoLab)  ==   null)
            {
                return ;
            }
            if ( lTmnoPl == 0 ){
            
                document.getElementById( vTmNoCap + lTmnoLab ).disabled = "disabled";
                document.getElementById( vTmPlCap + lTmnoLab ).className = "Show_PlStop";
                document.getElementById( vTmPlCap + lTmnoLab ).innerHTML = "封";
                
            }else{
                if (document.getElementById( vTmPlCap + lTmnoLab ).innerHTML != lTmnoPl){
                
                    document.getElementById( vTmPlCap + lTmnoLab ).className = "Show_Pl_Chg";
                }
                
                document.getElementById( vTmPlCap + lTmnoLab ).innerHTML = lTmnoPl;
                document.getElementById( vTmNoCap + lTmnoLab ).disabled = "";
                
            }
        }
        catch(err){
            txt="此页面存在一个错误。\n\n"
            txt+="错误描述: " + err.description + "--"+ "\n\n"
            txt+="点击OK继续。\n\n"
            alert(txt)
        }
    }
