<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Phsanet | Homepage</title>

 <%@ include file="include/include-head.jsp"  %>
<script src="/resources/views/js/jssor.slider.min.js"></script>
<script src="/resources/views/js/slider.js"></script>
</head>
<body ng-app="app">
      <div id="body" ng-controller="ctrl">
      
<!--header -->
          <div class="header">
                 <%@ include file="include/include-header.jsp" %>
          </div>
<!--end header -->       

<!--menu --> 
         <div class="menu">
            <div class="container">
                 <div class="row">
                      <div class="hidden-xs col-xs-15 col-md-3 col-sm-3 nav-cat">
                           <%@ include file="include/menu-category.jsp" %>
                      </div>
                      <div class="hidden-xs col-xs-15  col-sm-9 col-md-9 col-lg-9">
                           <%@ include file="include/slider.jsp" %>
                      </div>
                 </div>
            </div>
         </div>   
 <!--end menu -->   
 
 <!--content -->       
        <div class="content" >
              <%@ include file="include/index-contents.jsp" %>
        </div>
 <!--end content -->    
 
 <!--resource -->  
 
        <div class="resource">
             <%@include file="include/resource.jsp" %>
        </div>
 <!--end resource --> 
 
 <!--footer -->        
        <div class="footer bg-primary">
            <%@ include file="include/include-footer.jsp" %>
        </div>
  <!--end footer -->       
 
        
</div>
<script>
$(document).ready(function(){
	
	var li = $("ul.nav li.dropdown").length+1;
	$(document).on({
	    mouseenter: function () {
	    	var t=
	    	$('.mega-dropdown-menu').css({'margin-top':'-379px','min-height':'380px'});
	    	$('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).show();
	    	$(this).toggleClass('open');  
	    },
	    mouseleave: function () {
	    	$('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).hide();
	        $(this).toggleClass('open');
	    }
	}, ".dropdown"); 

});
</script>
</body>
</html>