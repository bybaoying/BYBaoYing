// JScript 文件
    function  Group10Str( vtmStr){//对字符，3个字符为一组，进行组合
        var i, lAi;
        var j, lAj;
        var k, lAk;
        var l, lAl;
        var m, lAm;
        var n, lAn;
        var o, lAo;
        var p, lAp;
        var q, lAq;
        var r;
        var lCount;
        var checkCount = 0;
        var lstr = "";
        lAi = 1;
        lAj = 2;
        lAk = 3;
        lAl = 4;
        lAm = 5;
        lAn = 6;
        lAo = 7;
        lAp = 8;
        lAq = 9;
        var arrTmNo = vtmStr.split(";");
        lCount = arrTmNo.length - 1;
       
        for (i = 0; i <= lCount - 9; i++)
        {
            for (j = lAi; j <= lCount - 8; j++)
            {
                for (k = lAj; k <= lCount - 7; k++)
                {
                    for (l = lAk; l <= lCount - 6; l++)
                    {
                        for (m = lAl; m <= lCount - 5; m++)
                        {
                            for (n = lAm; n <= lCount - 4; n++)
                            {
                                for (o = lAn; o <= lCount - 3; o++)
                                {
                                    for (p = lAo; p <= lCount - 2; p++)
                                    {
                                        for (q = lAp; q <= lCount - 1; q++)
                                        {
                                            for (r = lAq; r <= lCount - 1; r++)
                                            {
                                                checkCount++;
                                                lstr = lstr + arrTmNo[i] + ';' + arrTmNo[j] + ';' + arrTmNo[k] + ';' + arrTmNo[l] + ';' 
                                                    + arrTmNo[m] + ';' + arrTmNo[n] + ';' + arrTmNo[o] + ';' + arrTmNo[p] + ';' + arrTmNo[q] + ';' + arrTmNo[r] + '!';
                                            }
                                            lAq++;
                                        }
                                        lAp++;
                                        lAq = lAp + 1;
                                    }
                                    lAo++;
                                    lAp = lAo + 1;
                                    lAq = lAp + 1;
                                }
                                lAn++;
                                lAo = lAn + 1;
                                lAp = lAo + 1;
                                lAq = lAp + 1;
                            }
                            lAm++;
                            lAn = lAm + 1;
                            lAo = lAn + 1;
                            lAp = lAo + 1;
                            lAq = lAp + 1;
                        }
                        lAl++;
                        lAm = lAl + 1;
                        lAn = lAm + 1;
                        lAo = lAn + 1;
                        lAp = lAo + 1;
                        lAq = lAp + 1;
                    }
                    lAk++;
                    lAl = lAk + 1;
                    lAm = lAl + 1;
                    lAn = lAm + 1;
                    lAo = lAn + 1;
                    lAp = lAo + 1;
                    lAq = lAp + 1;

                }
                lAj++;
                lAk = lAj + 1;
                lAl = lAk + 1;
                lAm = lAl + 1;
                lAn = lAm + 1;
                lAo = lAn + 1;
                lAp = lAo + 1;
                lAq = lAp + 1;
            }
            lAi++;
            lAj = lAi + 1;
            lAk = lAj + 1;
            lAl = lAk + 1;
            lAm = lAl + 1;
            lAn = lAm + 1;
            lAo = lAn + 1;
            lAp = lAo + 1;
            lAq = lAp + 1;

        }
        return lstr;
        
    }
    function  Group9Str( vtmStr){//对字符，3个字符为一组，进行组合
        var i, lAi;
        var j, lAj;
        var k, lAk;
        var l, lAl;
        var m, lAm;
        var n, lAn;
        var o, lAo;
        var p, lAp;
        var q;
        var lCount;
        var checkCount = 0;
        var lstr = "";
        lAi = 1;
        lAj = 2;
        lAk = 3;
        lAl = 4;
        lAm = 5;
        lAn = 6;
        lAo = 7;
        lAp = 8;
        var arrTmNo = vtmStr.split(";");
        lCount = arrTmNo.length - 1;
       
        for (i = 0; i <= lCount - 8; i++)
        {
            for (j = lAi; j <= lCount - 7; j++)
            {
                for (k = lAj; k <= lCount - 6; k++)
                {
                    for (l = lAk; l <= lCount - 5; l++)
                    {
                        for (m = lAl; m <= lCount - 4; m++)
                        {
                            for (n = lAm; n <= lCount - 3; n++)
                            {
                                for (o = lAn; o <= lCount - 2; o++)
                                {
                                    for (p = lAo; p <= lCount - 1; p++)
                                    {
                                        for (q = lAp; q <= lCount - 1; q++)
                                        {
                                            checkCount++;
                                            lstr = lstr + arrTmNo[i] + ';' + arrTmNo[j] + ';' + arrTmNo[k] + ';' + arrTmNo[l] + ';' 
                                                + arrTmNo[m] + ';' + arrTmNo[n] + ';' + arrTmNo[o] + ';' + arrTmNo[p] + ';' + arrTmNo[q] + '!';
                                        }
                                        lAp++;
                                    }
                                    lAo++;
                                    lAp = lAo + 1;
                                }
                                lAn++;
                                lAo = lAn + 1;
                                lAp = lAo + 1;
                            }
                            lAm++;
                            lAn = lAm + 1;
                            lAo = lAn + 1;
                            lAp = lAo + 1;
                        }
                        lAl++;
                        lAm = lAl + 1;
                        lAn = lAm + 1;
                        lAo = lAn + 1;
                        lAp = lAo + 1;
                    }
                    lAk++;
                    lAl = lAk + 1;
                    lAm = lAl + 1;
                    lAn = lAm + 1;
                    lAo = lAn + 1;
                    lAp = lAo + 1;

                }
                lAj++;
                lAk = lAj + 1;
                lAl = lAk + 1;
                lAm = lAl + 1;
                lAn = lAm + 1;
                lAo = lAn + 1;
                lAp = lAo + 1;
            }
            lAi++;
            lAj = lAi + 1;
            lAk = lAj + 1;
            lAl = lAk + 1;
            lAm = lAl + 1;
            lAn = lAm + 1;
            lAo = lAn + 1;
            lAp = lAo + 1;

        }
        return lstr;
        
    }
    function  Group8Str( vtmStr){//对字符，3个字符为一组，进行组合
        var i, j, k, lAi, lAj;
        var l, lAk;
        var m, lAl;
        var n, lAm;
        var o, lAn;
        var p, lAo;
        var q;
        var checkCount = 0;
        var lstr = "";
        lAi = 1;
        lAj = 2;
        lAk = 3;
        lAl = 4;
        lAm = 5;
        lAn = 6;
        lAo = 7;
        
        var arrTmNo = vtmStr.split(";");
        q = arrTmNo.length - 1;
       
        for (i = 0; i <= q - 7; i++)
        {
            for (j = lAi; j <= q - 6; j++)
            {
                for (k = lAj; k <= q - 5; k++)
                {
                    for (l = lAk; l <= q - 4; l++)
                    {
                        for (m = lAl; m <= q - 3; m++)
                        {
                            for (n = lAm; n <= q - 2; n++)
                            {
                                for (o = lAn; o <= q - 1; o++)
                                {
                                    for (p = lAo; p <= q - 1; p++)
                                    {
                                        checkCount++;
                                        lstr = lstr + arrTmNo[i] + ';' + arrTmNo[j] + ';' + arrTmNo[k] + ';' + arrTmNo[l] + ';' + arrTmNo[m] + ';' + arrTmNo[n] + ';' + arrTmNo[o] + ';' + arrTmNo[p] + '!';
                                    }
                                    lAo++;
                                }
                                lAn++;
                                lAo = lAn + 1;
                            }
                            lAm++;
                            lAn = lAm + 1;
                            lAo = lAn + 1;
                        }
                        lAl++;
                        lAm = lAl + 1;
                        lAn = lAm + 1;
                        lAo = lAn + 1;
                    }
                    lAk++;
                    lAl = lAk + 1;
                    lAm = lAl + 1;
                    lAn = lAm + 1;
                    lAo = lAn + 1;

                }
                lAj++;
                lAk = lAj + 1;
                lAl = lAk + 1;
                lAm = lAl + 1;
                lAn = lAm + 1;
                lAo = lAn + 1;
            }
            lAi++;
            lAj = lAi + 1;
            lAk = lAj + 1;
            lAl = lAk + 1;
            lAm = lAl + 1;
            lAn = lAm + 1;
            lAo = lAn + 1;

        }
        return lstr;
        
    }
    function  Group7Str(vtmStr) {//对字符，3个字符为一组，进行组合
        var i, j, k, lAi, lAj;
        var l, lAk;
        var m, lAl;
        var n, lAm;
        var o, lAn;
        var p, lAo;
        var  q;
        var checkCount = 0;
        var lstr = "";
        lAi = 1;
        lAj = 2;
        lAk = 3;
        lAl = 4;
        lAm = 5;
        lAn = 6;

        var arrTmNo = vtmStr.split(";");
        q = arrTmNo.length - 1;
        for (i = 0; i <= q - 7; i++)
        {
            for (j = lAi; j <= q - 6; j++)
            {
                for (k = lAj; k <= q - 5; k++)
                {
                    for (l = lAk; l <= q - 4; l++)
                    {
                        for (m = lAl; m <= q - 3; m++)
                        {
                            for (n = lAm; n <= q - 2; n++)
                            {
                                for (o = lAn; o <= q - 1; o++)
                                {
                                    checkCount++;
                                    lstr = lstr + arrTmNo[i] + ';' + arrTmNo[j] + ';' + arrTmNo[k] + ';' + arrTmNo[l] + ';' + arrTmNo[m] + ';' + arrTmNo[n] + ';' + arrTmNo[o] + '!';
                                }
                                lAn++;
                            }
                            lAm++;
                            lAn = lAm + 1;
                        }
                        lAl++;
                        lAm = lAl + 1;
                        lAn = lAm + 1;
                    }
                    lAk++;
                    lAl = lAk + 1;
                    lAm = lAl + 1;
                    lAn = lAm + 1;

                }
                lAj++;
                lAk = lAj + 1;
                lAl = lAk + 1;
                lAm = lAl + 1;
                lAn = lAm + 1;
            }
            lAi++;
            lAj = lAi + 1;
            lAk = lAj + 1;
            lAl = lAk + 1;
            lAm = lAl + 1;
            lAn = lAm + 1;


        }
        return lstr;
    }
    function Group5Str(vtmStr)
    {//对字符，3个字符为一组，进行组合
        var i, j, k, lAi, lAj;
        var l, lAk;
        var m, lAl;
        var p, q;
        var checkCount = 0;
        var lstr = "";
        lAi = 1;
        lAj = 2;
        p = 0;
        lAk = 3;
        lAl = 4;
        var arrTmNo = vtmStr.split(";");
        q = arrTmNo.length - 1;
        for (i = 0; i <= q - 5; i++)
        {
            for (j = lAi; j <= q - 4; j++)
            {
                for (k = lAj; k <= q - 3; k++)
                {
                    for (l = lAk; l <= q - 2; l++)
                    {
                        for (m = lAl; m <= q - 1; m++)
                        {
                            checkCount++;
                            lstr = lstr + arrTmNo[i] + ';' + arrTmNo[j] + ';' + arrTmNo[k] + ';' + arrTmNo[l] + ';' + arrTmNo[m] + '!';
                        }
                        lAl++;
                    }
                    lAk++;
                    lAl =  lAk + 1;

                }
                lAj++;
                lAk =  lAj + 1;
                lAl = lAk + 1;
            }
            lAi++;
            lAj = lAi + 1;
            lAk = lAj + 1;
            lAl = lAk + 1;
        }
        return lstr;
    }
    function Group6Str( vtmStr)
    {//对字符，3个字符为一组，进行组合
        var i, j, k, lAi, lAj;
        var l, lAk;
        var m, lAl;
        var n, lAm;
        var p, q;
        var checkCount = 0;
        var lstr = "";
        lAi = 1;
        lAj = 2;
        p = 0;
        lAk = 3;
        lAl = 4;
        lAm = 5;
        var arrTmNo = vtmStr.split(";");
        q = arrTmNo.length - 1;
        for (i = 0; i <= q - 6; i++)
        {
            for (j = lAi; j <= q - 5; j++)
            {
                for (k = lAj; k <= q - 4; k++)
                {
                    for (l = lAk; l <= q - 3; l++)
                    {
                        for (m = lAl; m <= q - 2; m++)
                        {
                            for (n = lAm; n <= q - 1; n++)
                            {
                                checkCount++;
                                lstr = lstr + arrTmNo[i] + ';' + arrTmNo[j] + ';' + arrTmNo[k] + ';' + arrTmNo[l] + ';' + arrTmNo[m] + ';' + arrTmNo[n] + '!';
                            }
                            lAm++;
                        }
                        lAl++;
                        lAm = lAl + 1;
                    }
                    lAk++;
                    lAl = lAk + 1;
                    lAm = lAl + 1;

                }
                lAj++;
                lAk = lAj + 1;
                lAl = lAk + 1;
                lAm = lAl + 1;
            }
            lAi++;
            lAj = lAi + 1;
            lAk = lAj + 1;
            lAl = lAk + 1;
            lAm = lAl + 1;
            //p++;
        }
        return lstr;
    }

    function Group3Str(  vtmStr)
    {//对字符，3个字符为一组，进行组合
        var i, j, k, lAi, lAj;
        var  q;
        var checkCount = 0;
        var lstr = "";
        lAi = 1;
        lAj = 2;
       
        var arrTmNo = vtmStr.split(";");
        q = arrTmNo.length - 1;
        for (i = 0; i <= q - 3; i++)
        {
            for (j = lAi; j <= q - 2; j++)
            {

                for (k = lAj; k <= q - 1; k++)
                {

                    checkCount++;
                    lstr = lstr + arrTmNo[i] + ';' + arrTmNo[j] + ';' + arrTmNo[k] + '!';
                }
                lAj++;
            }
            lAi++;
            lAj = lAi + 1;
            
        }
        return lstr;
    }
    function Group4Str( vtmStr)
    {//对字符，3个字符为一组，进行组合
        var i, j, k, lAi, lAj;
        var l, lAk;
        var q;
        var checkCount = 0;
        var lstr = "";
        lAi = 1;
        lAj = 2;

        lAk = 3;
        var arrTmNo = vtmStr.split(";");
        q = arrTmNo.length - 1;
        for (i = 0; i <= q - 4; i++)
        {
            for (j = lAi; j <= q - 3; j++)
            {
                for (k = lAj; k <= q - 2; k++)
                {
                    for (l = lAk; l <= q - 1; l++)
                    {
                        checkCount++;
                        lstr = lstr + arrTmNo[i] + ';' + arrTmNo[j] + ';' + arrTmNo[k] + ';' + arrTmNo[l] + '!';
                    }
                    lAk++;
                }
                lAj++;
                lAk = 1 + lAj;
            }
            lAi++;
            lAj = lAi + 1;
            lAk = lAj + 1;
        }
        return lstr;
    }



    function  Group2Str(vtmStr){//对字符，2个字符为一组，进行组合
        var arrTmNo = vtmStr.split(";");
        var i,j,k,m,n;
        var p,q;
        var checkCount= 0 ;

       var lstr= "";
       m=0;
       n=1;
        p=0;
        q=arrTmNo.length-1;

        checkCount= 0 ;
        for( j=m; j <= q; j++ ) {
            for( k=n; k <= q-1; k++ ) {
                    checkCount ++;
                    lstr = lstr + arrTmNo[j] + ';' + arrTmNo[k] + '!';
            }
            n ++;

        }
        
        return lstr;
    }
    
    function  Group1Str(vtmStr){//对字符，2个字符为一组，进行组合
        var arrTmNo = vtmStr.split(";");
        var i,j,k,m,n;
        var q;
        var checkCount= 0 ;

       var lstr= "";
       m=0;
       n=1;
       
        q=arrTmNo.length-1;

        checkCount= 0 ;

        for( k=n; k <= q-1; k++ ) {
                checkCount ++;
                lstr = lstr + arrTmNo[j] + ';' + arrTmNo[k] + '!';
        }

        
        return lstr;
    }