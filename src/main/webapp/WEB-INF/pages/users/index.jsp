<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Save List | phsanet.com</title>
<%@ include file="../include/head.jsp"%>
</head>
<body>
	<div id="body">

		<!-- header -->
		<div class="header">
			<%@ include file="../include/header.jsp"%>
		</div>
		<!--end header -->


		<!--all category ,filter & items-->
		<div class="menu" >
			<div class="container">
				<div class="row">
				
					<div class="col-md-3 col-sm-4 col-lg-3">
						<div class="fixed">
							<div class="hidden-xs col-md-12 col-sm-12 col-lg-12 nav-cat">
								 <%@ include file="../include/savelist.jsp"%> 
							</div>
						 </div>
					</div>

					<!-- save item -->
					<div class="col-md-9 col-sm-8 col-lg-9">
						<%@ include file="../include/save-items.jsp"%>
					</div>
					<!-- end save items -->
				</div>
			</div>

		</div>

		<!--end all category ,filter & items-->



		<!-- resource -->
		<div class="re-title​">
			<div class="container" style="padding: 0px;">
				<span class="span text-primary">ប្រភពមកពី</span>
			</div>
		</div>

		<div class="resource">
			<%@include file="../include/resource.jsp"%>
		</div>
		<!-- end resource -->

		<!-- footer -->
		<div class="footer bg-primary">
			<%@ include file="../include/footer.jsp"%>
		</div>
		<!-- end resource -->

	</div>


</body>
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
$('.mega-dropdown-menu').css({'margin-top':'-431px','margin-left':'215px'});
</script>
</html>