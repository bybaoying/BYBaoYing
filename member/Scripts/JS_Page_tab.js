// JScript 文件

        function Object_hover(e)
        {
            if ( e.parentNode.className == "unTagClick")
            { 
                e.parentNode.setAttribute("class",'unTagClickHover');
                e.parentNode.setAttribute("className",'unTagClickHover');
            }
        }
        function Object_leave(e)
        {
            if ( e.parentNode.className == "unTagClickHover")
            { 
                e.parentNode.setAttribute("class",'unTagClick');
                e.parentNode.setAttribute("className",'unTagClick');
             }
//            alert(e.parentNode.className)
//.attributes["promptTite"].nodeValue;
        }