<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	<div class="row">
		<div class="items">
			<div class="row">
				<div class="col-md-12">
					<span ​​ class="text-primary span">ផលិតផលថ្មីៗ</span>
					<div class="border"></div>
				</div>
			</div>
			
			<div class="row">
			
						<div class="col-xs-15 col-md-3 col-sm-3 column productbox" ng-repeat="product in lates">
		 
						<div class="item-box">
							<div class="product-source">
								<span class="source-img "> <a href="{{product.web.url}}"> <img
										class="img-circle" src="{{product.web.logo}}"> {{product.web.website}}
								</a>
								</span>
		
							</div>
							<a href="{{product.description}}"><img src="{{product.product_image}}" class="img-responsive"></a>
							<div class="producttitle">{{product.product_name | myFilter}}</div>
							<div class="productprice">
								<div class="pull-right">
									<a href="#" title="រក្សាទុក" class="pricetext"> <i
										class="fa fa-bookmark-o"></i></a>
								</div>
								<div class="pricetext">{{product.price}}</div>
							</div>
						</div>
		
					</div>
	
			</div>
			
			
					
			
			<div class="row">
				<div class="col-sm-12">
					<span ​​ class="text-primary span">សំលៀកបំពាក់</span>
					<div class="border"></div>
				</div>
			</div>
			
			
			<div class="row">
			
					<div class="col-xs-15 col-md-3 col-sm-3 column productbox" ng-repeat="item in fasions">
					
					<div class="item-box">
						<div class="product-source">
							<span class="source-img"> <a href="{{item.web.url}}"><img
									class="img-circle" src="{{item.web.logo}}"> {{item.web.website}}
							</a>
							</span>
						</div>
						<a href="{{item.description}}"><img src="{{item.product_image}}" class="img-responsive"></a>
						<div class="producttitle">{{item.product_name | myFilter}}</div>
						<div class="productprice">
							<div class="pull-right">
								<a href="#" title="រក្សាទុក" class="pricetext"> <i
									class="fa fa-bookmark-o"></i></a>
							</div>
							<div class="pricetext">{{item.price}}</div>
						</div>
					</div>
				 </div>


		</div>
			
			<div class="row">
				<div class="col-sm-12 title">
					<span ​​ class="text-primary span">ទូរស័ព្ទដៃ</span>
					<div class="border"></div>
				</div>
			</div>
			
			<div class="row">
				
                  <div class="col-xs-15 col-md-3 col-sm-3 column productbox" ng-repeat="item in phone">
					
					<div class="item-box">
						<div class="product-source">
							<span class="source-img"> <a href="{{item.web.url}}"><img
									class="img-circle" src="{{item.web.logo}}"> {{item.web.website}}
							</a>
							</span>
						</div>
						<a href="{{item.description}}"><img src="{{item.product_image}}" class="img-responsive"></a>
						<div class="producttitle">{{item.product_name | myFilter}}</div>
						<div class="productprice">
							<div class="pull-right">
								<a href="#" title="រក្សាទុក" class="pricetext"> <i
									class="fa fa-bookmark-o"></i></a>
							</div>
							<div class="pricetext">{{item.price}}</div>
						</div>
					</div>
				 </div>
			
		
			</div>
			
		</div>
	</div>
</div>

