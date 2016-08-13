<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Phsanet | Homepage</title>

 <%@ include file="include/head.jsp"  %>
 <script src="/resources/views/js/jssor.slider.min.js"></script>
<script src="/resources/views/js/slider.js"></script>
</head>
<body>
      <div id="body">
      
<!--header -->
          <div class="header">
                 <%@ include file="include/header.jsp" %>
          </div>
<!--end header -->       

<!--menu --> 
         <div class="menu">
            <div class="container">
                 <div class="row">
                      <%@ include file="include/menu-category.jsp" %>
                      <%@ include file="include/slider.jsp" %>
                 </div>
            </div>
         </div>   
 <!--end menu -->   
 
 <!--content -->       
        <div class="content">
              <%@ include file="include/index-contents.jsp" %>
        </div>
 <!--end content -->    
 
 <!--resource -->  
        <div class="re-title​">
			<div class="container" style="padding:0px;">
				<span class="span text-primary">ប្រភពមកពី</span>
			</div>
        </div>
     
        <div class="resource bg-success">
             <%@include file="include/resource.jsp" %>
        </div>
 <!--end resource --> 
 
 <!--footer -->        
        <div class="footer bg-primary">
            <%@ include file="include/footer.jsp" %>
        </div>
  <!--end footer -->       
  
        
</div>
<script>
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
</body>
</html>