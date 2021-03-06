<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
   <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
      
        
<%@include file="account.jsp" %>
<nav class="navbar navbar-fixed-top  nav-header" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle button"
					data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</button>
				
				 <a href="/index"><img alt="" src="/resources/views/logo/logo.png"></a>
				
			</div>

			<div class="select collapse navbar-collapse navbar-ex1-collapse">
				<form class="navbar-form navbar-left form-header" role="search">
					<div class="form-group">
						<select class="form-control option" style="width:200px;" ng-model="main" ng-options="main.category_name as main.category_name for main in list_cat">
							<option value="">All products</option>
							
		
							
						</select> 
						<input type="text" class="form-control" ng-model="sub" id="form-search"  placeholder="Enter keyword...">
						<a href="/cat?cat={{main}}&item={{sub}}"  class="btn btn-primary">
							<i class="fa fa-search"></i> Search
						</a>
					</div>
				</form>
                
				<ul class="nav navbar-nav navbar-right">
				
					
					
				 	<sec:authorize access="!isAuthenticated()">
				 	    <script>
				     		var USERID;
				     	</script> 
						<li><a class="account" href="" data-toggle="modal" data-target="#login"><i class="fa fa-sign-in"></i> Sign In</a></li>	
						<li><a class="account" href="" data-toggle="modal" data-target="#register"><i class="fa fa-users"></i> Register</a></li> 	
					</sec:authorize>
					
					<sec:authorize access="isAuthenticated()">
						<script>
				     		var USERID = '<sec:authentication property="principal.user_id"/>';
				     	</script> 
						<sec:authentication property="principal" var="user"/>
						 
							<li class="user drowdown">
							    <a class="account dropdown-toggle" data-toggle="dropdown" href="" >
							       <img  src="https://upload.wikimedia.org/wikipedia/commons/d/d3/User_Circle.png"> 
							    </a>
							    
							    <ul class="dropdown-menu" style="margin-top:20px;">
							        <li><a href="/user/profile"><i class="i fa fa-user"></i>  ${user.user_name}</a></li>
							        <li><a href="/user/saved"><i class="i fa fa-bookmark-o"></i> Saved List</a></li>
							        <li><a href="/logout"><i class="i fa fa-sign-out"></i>Logout</a></li>
							        
							    </ul>
							</li>  
					
					</sec:authorize> 
					
					
				</ul>
                    
			</div>


		</div>
	</nav>
