  $(document).ready(function() {
      $("html").niceScroll({styler:"fb",cursorcolor:"#428BCA"});

        $(window).scroll(function(){
          if($(this).scrollTop()>=100){
          $("#scrolltop").fadeIn(300);      
        } else{$("#scrolltop").fadeOut(300);}
        });

    /*$("#confb").mouseenter(function(){
          
      $(this).stop();
      $(this).animate({right:'-47'});
      });
    $("#confb").mouseleave(function(){
    
      $(this).stop();
      $(this).animate({right:'-347'});
      });*/
  });