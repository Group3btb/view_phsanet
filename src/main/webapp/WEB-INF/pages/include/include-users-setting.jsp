<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="row">
	<div class="col-md-12">
		<div class="location">
			<span><i class="fa fa-cog"></i>​​ Setting</span>
		</div>

	</div>
</div>

<div class="row" style="min-height:630px;">
	<div class="col-md-12">	
       <div class="form-group setting" style="border: 1px solid #337AB7; padding:25px;">
        
                    
                    <div style="text-align: center; font-size:20px;">
                        <img  src="https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png" class="img-circle" width="150" height="150">
                        <p>Welcome!</p>
                    </div>
        
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
						<i class="fa fa-floppy-o" aria-hidden="true"></i> Save Change
					</button>
					
					
				</div>
	   
	</div>
</div>