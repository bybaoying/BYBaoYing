var null_col='#ffffff';
var over_col='#cccccc';
var click_col='#f0f7f9';//'#aadddd'
function light_bar(st,act){
  switch(act){
   case 'ovr'://onmouseover
//    alert(st.style.backgroundColor);
     if(st.style.backgroundColor=='rgb(255, 255, 255)' || st.style.backgroundColor=='' || st.style.backgroundColor==null_col )  st.style.backgroundColor=over_col;
     break;
   
   case 'out'://onmouseout
//    alert(st.style.backgroundColor );
//    alert(st.style.backgroundColor =='rgb(204, 204, 204)' );
//    alert(rgb(204,204,204));
     if( st.style.backgroundColor=='rgb(204, 204, 204)' || st.style.backgroundColor == over_col )  st.style.backgroundColor=null_col;
     break;
    
   case 'clk'://onmousedown
    
     if( st.style.backgroundColor=='rgb(240, 247, 249)' || st.style.backgroundColor == click_col ) 
        {st.style.backgroundColor = over_col;}
     else {
        st.style.backgroundColor = click_col;
//        alert(st.style.backgroundColor);
        }
     break;
  }
}