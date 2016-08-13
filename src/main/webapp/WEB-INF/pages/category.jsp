<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Categories | phsanet.com</title>
 <%@ include file="include/head.jsp" %>
</head>
<body>
 <div id="body">
 
 <!-- header -->
	  <div class="header">
		<%@ include file="include/header.jsp"%>
	  </div>
 <!--end header -->	  
 
 
<!--all category and filter-->
     <div class="menu">
          <div class="container">
               <div class="row" style="background-color:#EC407A; height:40px; padding:0px;">
                    <%@include file="include/menu-category.jsp" %>
                     
                    <div class="col-xs-15 col-md-9 col-sm-9">
                        <div class="filter-box"></div>
                    </div>
                    
                    
               </div>
          </div>
     </div>
<!--end all category and filter -->  


     <div class="content">
          <%@ include file="include/index-contents.jsp" %>
     </div>


 <!-- resource -->	  
	  <div class="re-title​">
			<div class="container" style="padding:0px;">
				<span class="span text-primary">ប្រភពមកពី</span>
			</div>
      </div>
      
      <div class="resource bg-success">
           <%@include file="include/resource.jsp" %>
      </div>
 <!-- end resource -->  
 
 <!-- footer -->      
      <div class="footer bg-primary">
            <%@ include file="include/footer.jsp" %>
      </div>
<!-- end resource -->     
      
 </div>
	
	
</body>
<script>





$(window).bind('scroll', function () {
	
    if ($(window).scrollTop() > 300) {
        $('.menu').addClass('fixed');
        $('.menu').css('margin-top','-20px');
      
    } else {
        $('.menu').removeClass('fixed');
        $('.menu').css('margin-top','0');
       
    }
});

$('div.nav-cat ul').css('border','none');
$('li.active').nextAll().hide(); 
$('.content').css('z-index','0')
$('li.active').click(function(){
	 $('.menu').addClass('fixed');
	$('li.active').nextAll().toggle(400);
	$('div.nav-cat ul').css('background-color','#ccc');
}) 
 

$(".dropdown").hover(            
        function() {
         $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).show();
         $(this).toggleClass('open');        
        },
        function() {
         $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).hide();
         $(this).toggleClass('open');       
       }
      );
</script>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
</html>