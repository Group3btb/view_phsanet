<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--login​-->
<div class="modal fade" id="login" role="dialog" style="z-index: 9999;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					<i class="fa fa-lock" aria-hidden="true"></i> ​Login
				</h4>
			</div>
			<div class="modal-body">
			 
				<div class="form-group">
					<form action="${pageContext.request.contextPath}/login" method="post">
						<span><i class="fa fa-user" aria-hidden="true"></i> Email</span><input
							type="email" class="form-control" name="username" ng-model="email" placeholder="example@mail.com"> <br>
						<span><i class="fa fa-eye" aria-hidden="true"></i>
							Password</span><input type="password" name="password" ng-model="password" class="form-control"
							placeholder="Enter password"> <br>
						<button type="submit" ng-disabled="!email || !password" class="btn btn-primary btn-block">
							<i class="fa fa-power-off" aria-hidden="true"></i> Login
						</button>
						<span>Or</span>
						<button type="submit" class="btn btn-primary btn-block">
							<i class="fa fa-facebook-official" aria-hidden="true"></i>
							Facebook
						</button>
					</form>
				</div>
			</div>

			<div class="modal-footer">
				<button type="submit" id="login" class="btn btn-danger btn-default pull-left"
					data-dismiss="modal">
					<i class="fa fa-times" aria-hidden="true"></i> Cancel
				</button>
				<p>
					not account? <a href=""  class="register"  data-toggle="modal"
						data-target="#register">click here!</a>
				</p>
			</div>


		</div>
	</div>
</div>
<!--end login-->


<!--register​-->
<div class="modal fade" id="register" role="dialog"
	style="z-index: 9999;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					<i class="fa fa-users" aria-hidden="true"></i>​ Register
				</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<span><i class="fa fa-user" aria-hidden="true"></i>​ Username <span
						class="invalid" ng-show="!user_name"> *</span></span><input type="text"
						name="user_name" class="form-control" placeholder="jonh"
						ng-model="user_name" ng-pattern="/^[a-zA-Z_ ]{1,19}$/"> <br>
						
					<span><i class="fa fa-envelope" aria-hidden="true"></i>
						Email<span class="invalid" ng-show="!email"> *</span></span><input
						type="email" name="email" class="form-control"
						placeholder="john@example.com" ng-model="email"
						ng-pattern="/^[a-z]+[a-z0-9._]+@[a-z]+\.[a-z.]{1,3}$/"> <br>
						
					<span><i class="fa fa-eye" aria-hidden="true"></i>
						Password <span class="invalid" ng-show="!password">*</span></span><input
						type="password" name="password" class="form-control"
						placeholder="password" ng-model="password"
						ng-pattern="/^[ A-Za-z0-9_@./#&+-]*$/"><br> 
						<span><i class="fa fa-eye" aria-hidden="true"></i> Confirm Password 
						
						<span class="invalid" ng-show="!c_password">*</span></span>
						<input
						type="password" name="c_password" class="form-control"
						placeholder="confirm password" ng-model="c_password">
					<br>
					
					<button type="button"
						ng-disabled="!user_name || user_name.$error.pattern || !email || email.$error.pattern 
						|| !password || password.$error.pattern || !c_password || password!=c_password "
						ng-click="saveUser()" class="btn btn-primary btn-block">
						<i class="fa fa-floppy-o" aria-hidden="true"></i> Save
					</button>
					
					
				</div>
			</div>

			<div class="modal-footer">
				<button id="register" type="submit" class="btn btn-danger btn-default pull-left"
					data-dismiss="modal">
					<i class="fa fa-times" aria-hidden="true"></i> Cancel
				</button>
				
			</div>


		</div>
	</div>
</div>
<!--end modal-->