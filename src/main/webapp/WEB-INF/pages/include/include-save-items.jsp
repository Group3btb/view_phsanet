<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="row">
	<div class="col-md-12">
		<div class="location">
			<span><i class="fa fa-bookmark-o"></i>​ All Products Saved</span>
		</div>

	</div>
</div>


<div class="row" style="min-height:630px">
	<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 column productbox" ng-repeat="item in saveditem">

		<div class="item-box">
						<div class="product-source">
							<span class="source-img"> <a href="{{item.web.url}}" target="_blank"><img
									class="img-circle" src="{{item.web.logo}}"> {{item.web.website}}
							</a>
							</span>
						</div>
						<a href="{{item.description}}" target="_blank" title="{{item.product.product_name}}"><img src="{{item.product.product_image}}" class="img-responsive"></a>
						<div class="producttitle">{{item.product.product_name | myFilter}}</div>
						<div class="productprice">
							<div class="pull-right">
							
							 <!--   <sec:authorize access="!isAuthenticated()">
						            <a href="" data-toggle="modal" data-target="#login"   title="រក្សាទុក" class="pricetext"><i class="fa fa-bookmark-o"></i></a>
					           </sec:authorize> -->
					           
					            <sec:authorize access="isAuthenticated()">
						            <a href=""  ng-click="deleteSaved(this)"  title="រក្សាទុក" class="pricetext"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
					           </sec:authorize>
					           
					           
								
							</div>
							<div class="pricetext">{{item.product.price}}</div>
						</div>
	</div>

	</div>


	
	
</div>