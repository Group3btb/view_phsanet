<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--  <%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %> --%>
<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<span class="footer-span font">Copyrights &#169;
					Phsanet.com</span>
			</div>

			<div class="col-md-6 col-sm-6 text-right" style="padding:0px;">
				<ul ​ class="foot-ul">
					<li><a href=""><i class="fa fa-volume-control-phone"></i>
							Contact Us</a></li>
					<li>|</li>
					<li><a href=""><i class="fa fa-users"></i> About Us</a></li>
				</ul>
			</div>

		</div>
</div>

<div id="scrolltop">
	<a href=""><img src="/resources/views/logo/back-to-top.png" /></a>
</div> 
<script>
 $(document).ready(function(){
	 $(window).scroll(function(){
		    if($(this).scrollTop()>200){
		    $("#scrolltop").fadeIn(100);
		 
		  } else{$("#scrolltop").fadeOut(100);}
		  }); 
		  
		  $("#scrolltop img").click(function(){
		 	 $("html, body").animate({scrollTop:0},1000);
		  });
	 
	 
 });

</script>
