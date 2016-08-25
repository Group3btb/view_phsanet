<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Categories | phsanet.com</title>
<%@ include file="include/include-head.jsp"%>
</head>
<body ng-app="app" ng-cloak>
	<div id="body"  ng-controller="ctrl">

		<!-- header -->
		<div class="header">
			<%@ include file="include/include-header.jsp"%>
		</div>
		<!--end header -->


		<!--all category ,filter & items-->
		<div class="menu" >
			<div class="container">
				<div class="row">
				
					<div class="col-md-3 col-sm-4 col-lg-3">
						<div class="fixed">
							<div class="hidden-xs col-md-12 col-sm-12 col-lg-12">
								<!-- all category -->
								<div class="row nav-cat">
									<%@ include file="include/menu-category.jsp"%>
								</div>
								<!--end all category -->

								<!--filter-->
								<div class="row">
									<%@ include file="include/filter.jsp"%>
								</div>
								<!--end filter -->
							</div>
						 </div>
					</div>

					<!-- category item -->
					<div class="col-md-9 col-sm-8 col-lg-9 cat">
						<%@ include file="include/cat-contents.jsp"%>
					</div>
					<!-- end category items -->
				</div>
			</div>

		</div>

		<!--end all category ,filter & items-->



       
		<!-- footer -->
		<div class="footer bg-primary">
			<%@ include file="include/include-footer.jsp"%>
		</div>
		<!-- end resource -->

	</div>


</body>
<script>
$(document).ready(function(){

	$(document).ready(function(){
		
		$(document).on({
		    mouseenter: function () {
		    	$('.mega-dropdown-menu').css({'margin-left':'215px','margin-top':'-525px','min-height':'380px'}); 
		    	$('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).show(0);
		    	$(this).toggleClass('open');  
		    },
		    mouseleave: function () {
		    	$('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).hide(0);
		        $(this).toggleClass('open');
		    }
		}, ".dropdown"); 

	});
});


</script>
</html>