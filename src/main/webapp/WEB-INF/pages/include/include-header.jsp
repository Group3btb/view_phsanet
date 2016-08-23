<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
        
<%@include file="account.jsp" %>
<nav class="navbar navbar-fixed-top  nav-header" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle button"
					data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<i class="fa fa-bars" aria-hidden="true"></i>
					
				</button>
				
				 <img alt="" src="/resources/views/logo/logo.png">
				
			</div>

			<div class="select collapse navbar-collapse navbar-ex1-collapse">
				<form class="navbar-form navbar-left form-header" role="search">
					<div class="form-group">
						<select class="form-control option" style="width:200px;" ng-model="main" ng-options="main.category_name as main.category_name for main in list_cat">
							<option value="">All products</option>
							
		
							
						</select> 
						<input type="text" class="form-control" ng-model="key" id="form-search"  placeholder="Enter keyword...">
						<a href="/cat?cname={{main}}&item={{key}}"  class="btn btn-search">
							<i class="fa fa-search"></i> Search
						</a>
					</div>
				</form>

				<ul class="nav navbar-nav navbar-right">
					<li><a class="account" href="" data-toggle="modal" data-target="#login"><i class="fa fa-sign-in"></i> Sign In</a></li>
					<li><a class="account" href="" data-toggle="modal" data-target="#register"><i class="fa fa-users"></i> Register</a></li> 
				</ul>
                    
			</div>


		</div>
	</nav>
