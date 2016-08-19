<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--login​-->
<div class="modal fade" id="login" role="dialog" style="z-index: 9999;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					<i class="fa fa-lock" aria-hidden="true"></i> ​ចូលទៅកាន់គណនី
				</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">

					<span><i class="fa fa-user" aria-hidden="true"></i> ឈ្មោះ</span><input
						type="text" class="form-control" placeholder="jonh"> <br>
					<span><i class="fa fa-eye" aria-hidden="true"></i>
						លេខសម្ងាត់</span><input type="password" class="form-control"
						placeholder="លេខសម្ងាត់"> <br>
					<button type="submit" class="btn btn-success btn-block">
						<i class="fa fa-power-off" aria-hidden="true"></i> Login
					</button>
					<span>ឬ</span>
					<button type="submit" class="btn btn-primary btn-block">
						<i class="fa fa-facebook-official" aria-hidden="true"></i>
						Facebook
					</button>
				</div>
			</div>

			<div class="modal-footer">
				<button type="submit" class="btn btn-danger btn-default pull-left"
					data-dismiss="modal">
					<i class="fa fa-times" aria-hidden="true"></i> បោះបង់
				</button>
				<p>
					មិនទាន់មានគណនី? <a href="" data-toggle="modal"
						data-target="#register">ចុចទីនេះ</a>
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
					<i class="fa fa-users" aria-hidden="true"></i>​ ចុះឈ្មោះ
				</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<span><i class="fa fa-user" aria-hidden="true"></i>​ ឈ្មោះ <span
						class="invalid" ng-show="!user_name"> *</span></span><input type="text"
						name="user_name" class="form-control" placeholder="jonh"
						ng-model="user_name" ng-pattern="/^[a-zA-Z_ ]{1,19}$/"> <br>
						
					<span><i class="fa fa-envelope" aria-hidden="true"></i>
						អុីមែល<span class="invalid" ng-show="!email"> *</span></span><input
						type="email" name="email" class="form-control"
						placeholder="john@example.com" ng-model="email"
						ng-pattern="/^[a-z]+[a-z0-9._]+@[a-z]+\.[a-z.]{1,3}$/"> <br>
						
					<span><i class="fa fa-eye" aria-hidden="true"></i>
						លេខសម្ងាត់ <span class="invalid" ng-show="!password">*</span></span><input
						type="password" name="password" class="form-control"
						placeholder="លេខសម្ងាត់" ng-model="password"
						ng-pattern="/^[ A-Za-z0-9_@./#&+-]*$/"><br> 
						<span><i class="fa fa-eye" aria-hidden="true"></i> ផ្ទៀងផ្ទាត់លេខសម្ងាត់ 
						<span class="invalid" ng-show="c_password!=password">មិនផ្ទៀងផ្ទាត់</span>
						<span class="invalid" ng-show="!c_password">*</span></span>
						<input
						type="password" name="c_password" class="form-control"
						placeholder="បញ្ចូលលេខសម្ងាត់ម្តងទៀត" ng-model="c_password">
					<br>
					
					<button type="button"
						ng-disabled="!user_name || user_name.$error.pattern || !email || email.$error.pattern 
						|| !password || password.$error.pattern || !c_password || password!=c_password "
						ng-click="saveUser()" class="btn btn-success btn-block">
						<i class="fa fa-floppy-o" aria-hidden="true"></i> រក្សារទុក
					</button>
				</div>
			</div>

			<div class="modal-footer">
				<button type="submit" class="btn btn-danger btn-default pull-left"
					data-dismiss="modal">
					<i class="fa fa-times" aria-hidden="true"></i> បោះបង់
				</button>
			</div>


		</div>
	</div>
</div>
<!--end modal-->