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
     
     
     if($(window).width()<768){
  		$('input#form-search').removeAttr('id','none');
  		if($('div').hasClass('col-xs-15')){
  			$('div').removeClass('col-xs-15');
		
  		}
  		
  	}
     if($(window).width()>992 && $(window).width()>1200 ){
      	$('input.frm-search').attr('id', 'form-search');
      	 $('.sub-class ').css('width','900px');
      	 $('#content').css('margin-top','0px');
      	$('.visible').addClass('col-xs-15');
      
      } 
     
    $(document).load($(window).bind("resize", checkPosition));

     function checkPosition()
     {
     	 
     	if($(window).width()<768){
     		$('input#form-search').removeAttr('id','none');
     		if($('div').hasClass('col-xs-15')){
     			$('div').removeClass('col-xs-15');
   		
     		}
     		
     	}
         if($(window).width() >= 768 && $(window).width()<992)
         {
         	 $('input#form-search').removeAttr('id','none');
         	 $('.sub-class ').css('width','600px');
         	 $('#content').css('margin-top','50px');
         	
         	 
         	
         }
         if($(window).width()>992 && $(window).width()>1200 ){
         	$('input.frm-search').attr('id', 'form-search');
         	 $('.sub-class ').css('width','900px');
         	 $('#content').css('margin-top','0px');
         	$('.visible').addClass('col-xs-15');
         
         } 
     }
  
 
});