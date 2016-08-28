<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	<div class="row">
		<div class="items">
	
<!-- Fashions -->
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
				  <div class="box-main"><span ​​ class="span">Fashions</span></div>
				</div>
			</div>
			<div class="row">
			  
					<div class="col-xs-15 col-md-3 col-sm-3 column productbox" ng-repeat="item in fashion">
					
					<div class="item-box">
						<div class="product-source">
							<span class="source-img"> <a href="{{item.web.url}}" target="_blank"><img
									class="img-circle" src="{{item.web.logo}}"> {{item.web.website}}
							</a>
							</span>
						</div>
						<a href="{{item.description}}" target="_blank" title="{{item.product_name}}"><img src="{{item.product_image}}" class="img-responsive"></a>
						<div class="producttitle">{{item.product_name | myFilter}}</div>
						<div class="productprice">
							<div class="pull-right">
							
							   <sec:authorize access="!isAuthenticated()">
						            <a href="" data-toggle="modal" data-target="#login"   title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
					           
					            <sec:authorize access="isAuthenticated()">
						            <a href=""  ng-click="addsavelist(this)"  title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
					           
					           
								
							</div>
							<div class="pricetext">{{item.price}}</div>
						</div>
					</div>
				 </div>

		  </div>
<!--end Fashions -->		
		
<!-- Jewelry and Watch -->
			
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
				  <div class="box-main"><span ​​ class="span">Jewelry and Watch</span></div>
				</div>
			</div>
			

			<div class="row">
			
					<div class="col-xs-15 col-md-3 col-sm-3 column productbox" ng-repeat="item in jewelry">
					
					<div class="item-box">
						<div class="product-source">
							<span class="source-img"> <a href="{{item.web.url}}" target="_blank"><img
									class="img-circle" src="{{item.web.logo}}"> {{item.web.website}}
							</a>
							</span>
						</div>
						<a href="{{item.description}}" target="_blank" title="{{item.product_name}}"><img src="{{item.product_image}}" class="img-responsive"></a>
						<div class="producttitle">{{item.product_name | myFilter}}</div>
						<div class="productprice">
							<div class="pull-right">
								  <sec:authorize access="!isAuthenticated()">
						            <a href="" data-toggle="modal" data-target="#login"   title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
					           
					            <sec:authorize access="isAuthenticated()">
						            <a href=""  ng-click="addsavelist(this)"  title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
							</div>
							<div class="pricetext">{{item.price}}</div>
						</div>
					</div>
				 </div>

		</div>
<!-- end Jewelry and Watch -->
		  
		  
<!-- 	Mobile & Tablets -->	  
		  <div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
				  <div class="box-main"><span ​​ class="span">Mobile & Tablets</span></div>
				</div>
			</div>
		
			<div class="row">
			
					<div class="col-xs-15 col-md-3 col-sm-3 column productbox" ng-repeat="item in phone">
					
					<div class="item-box">
						<div class="product-source">
							<span class="source-img"> <a href="{{item.web.url}}" target="_blank"><img
									class="img-circle" src="{{item.web.logo}}"> {{item.web.website}}
							</a>
							</span>
						</div>
						<a href="{{item.description}}" target="_blank" title="{{item.product_name}}"><img src="{{item.product_image}}" class="img-responsive"></a>
						<div class="producttitle">{{item.product_name | myFilter}}</div>
						<div class="productprice">
							<div class="pull-right">
								  <sec:authorize access="!isAuthenticated()">
						            <a href="" data-toggle="modal" data-target="#login"   title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
					           
					            <sec:authorize access="isAuthenticated()">
						            <a href=""  ng-click="addsavelist(this)"  title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
							</div>
							<div class="pricetext">{{item.price}}</div>
						</div>
					</div>
				 </div>


		</div>
		
<!-- end	Mobile & Tablets -->		
	
	
<!--Computers -->	 
		  <div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
				  <div class="box-main"><span ​​ class="span">Computers</span></div>
				</div>
			</div>
		
		
			<div class="row">
			
					<div class="col-xs-15 col-md-3 col-sm-3 column productbox" ng-repeat="item in computer">
					
					<div class="item-box">
						<div class="product-source">
							<span class="source-img"> <a href="{{item.web.url}}" target="_blank"><img
									class="img-circle" src="{{item.web.logo}}"> {{item.web.website}}
							</a>
							</span>
						</div>
						<a href="{{item.description}}" target="_blank" title="{{item.product_name}}"><img src="{{item.product_image}}" class="img-responsive"></a>
						<div class="producttitle">{{item.product_name | myFilter}}</div>
						<div class="productprice">
							<div class="pull-right">
								  <sec:authorize access="!isAuthenticated()">
						            <a href="" data-toggle="modal" data-target="#login"   title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
					           
					            <sec:authorize access="isAuthenticated()">
						            <a href=""  ng-click="addsavelist(this)"  title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
							</div>
							<div class="pricetext">{{item.price}}</div>
						</div>
					</div>
				 </div>

		</div>
<!-- end	Computers -->	
		
		
<!-- Home and Living	 -->	
		   <div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
				  <div class="box-main"><span ​​ class="span">Home and Living</span></div>
				</div>
			</div>
		
			<div class="row">
			
					<div class="col-xs-15 col-md-3 col-sm-3 column productbox" ng-repeat="item in home">
					
					<div class="item-box">
						<div class="product-source">
							<span class="source-img"> <a href="{{item.web.url}}" target="new"><img
									class="img-circle" src="{{item.web.logo}}"> {{item.web.website}}
							</a>
							</span>
						</div>
						<a href="{{item.description}}" title="{{item.product_name}}" target="_blank"><img src="{{item.product_image}}"  class="img-responsive"></a>
						<div class="producttitle">{{item.product_name | myFilter}}</div>
						<div class="productprice">
							<div class="pull-right">
								  <sec:authorize access="!isAuthenticated()">
						            <a href="" data-toggle="modal" data-target="#login"   title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
					           
					            <sec:authorize access="isAuthenticated()">
						            <a href=""  ng-click="addsavelist(this)"  title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize>
							</div>
							<div class="pricetext">{{item.price}}</div>
						</div>
					</div>
				 </div>

		</div>
<!-- end Home and Living -->



		</div>
	</div>
</div>

