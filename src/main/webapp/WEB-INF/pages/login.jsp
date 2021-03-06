
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		 <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <title>PhsarNet</title>
     
       	<jsp:include page="/WEB-INF/pages/admin/include/chetra_head.jsp"></jsp:include>

	</head>
	<body>

		<div class="account-pages"></div>
		<div class="clearfix"></div>
		
		<div class="wrapper-page">
			<div class="card-box">
				<div class="panel-heading">
					<h3 class="text-center"> Sign In to <strong class="text-custom">PhsarNet</strong></h3>
				</div>

				<div class="panel-body">
					<form class="form-horizontal m-t-20" action="${pageContext.request.contextPath}/login" id="frmLogin" method="POST">

						<div class="form-group ">
							<div class="col-xs-12">
								<input class="form-control" type="email" required="" placeholder="Email" name="username">
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-12">
								<input class="form-control" type="password" required="" placeholder="Password" name="password">
							</div>
						</div>

						<div class="form-group ">
							<div class="col-xs-12">
								<div class="checkbox checkbox-primary">
									<input id="checkbox-signup" type="checkbox">
									<label for="checkbox-signup"> Remember me </label>
								</div>

							</div>
						</div>

						<div class="form-group text-center m-t-40">
							<div class="col-xs-12">
								<button class="btn btn-pink btn-block text-uppercase waves-effect waves-light" type="submit">
									Log In
								</button>
							</div>
						</div>

						<div class="form-group m-t-20 m-b-0">
							<div class="col-sm-12">
								<a href="recover.html" class="text-dark"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
							</div>
						</div>
						
						<!-- <div class="form-group m-t-20 m-b-0">
							<div class="col-sm-12 text-center">
								<h4><b>Sign in with</b></h4>
							</div>
						</div>
						
						<div class="form-group m-b-0 text-center">
							<div class="col-sm-12">
								<button type="button" class="btn btn-facebook waves-effect waves-light m-t-20">
		                           <i class="fa fa-facebook m-r-5"></i> Facebook
		                        </button>

		                        <button type="button" class="btn btn-twitter waves-effect waves-light m-t-20">
		                           <i class="fa fa-twitter m-r-5"></i> Twitter
		                        </button>

		                        <button type="button" class="btn btn-googleplus waves-effect waves-light m-t-20">
		                           <i class="fa fa-google-plus m-r-5"></i> Google+
		                        </button>
							</div>
						</div> -->
					</form>

				</div>
			</div>
			<!-- <div class="row">
				<div class="col-sm-12 text-center">
					<p>
						Don't have an account? <a href="register.html" class="text-primary m-l-5"><b>Sign Up</b></a>
					</p>
				</div>
			</div> -->

		</div>

		<script>
			var resizefunc = [];
		</script>
		<jsp:include page="/WEB-INF/pages/admin/include/headscript.jsp"></jsp:include>
	</body>
</html>