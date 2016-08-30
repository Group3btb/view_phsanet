<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Save List | phsanet.com</title>
<%@ include file="../include/include-head.jsp"%>
</head>
<body ng-app="app" ng-cloak>
	<div id="body" ng-controller="ctrl">

		<!-- header -->
		<div class="header">
			<%@ include file="../include/include-header.jsp"%>
		</div>
		<!--end header -->


		<!--all category ,filter & items-->
		<div class="menu" >
			<div class="container">
				<div class="row">
				
					<div class="col-md-3 col-sm-4 col-lg-3">
						<div class="fixed">
							<div class="hidden-xs col-md-12 col-sm-12 col-lg-12 nav-cat">
								 <%@ include file="../include/menu-left-user.jsp"%> 
							</div>
						 </div>
					</div>

					<!-- about user-->
					<div class="col-md-9 col-sm-8 col-lg-9" >
						<%@ include file="../include/include-users-setting.jsp"%>
					</div>
					<!-- end about user -->
				</div>
			</div>

		</div>

		<!--end all category ,filter & items-->


		<!-- footer -->
		<div class="footer bg-primary">
			<%@ include file="../include/include-footer.jsp"%>
		</div>
		<!-- end resource -->

	</div>


</body>

</html>