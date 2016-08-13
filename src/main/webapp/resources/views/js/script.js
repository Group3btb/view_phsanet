$(document).ready(function() { 
 
     $("html").niceScroll({styler:"fb",cursorcolor:"#428BCA"});
     $(window).scroll(function(){
       if($(this).scrollTop()>=100){
       $("#scrolltop").fadeIn(300);
    
     } else{$("#scrolltop").fadeOut(300);}
     });
     
     $('#media').carousel({
    	    pause: true,
    	  });
    	  
     $('#media').carousel('cycle');
     
    
  
 
});