<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- get url el expression-->
<abc title="${param.cname}" value="${param.item}"></abc>
<div class="row">
	<div class="col-md-12">
		<div class="location">
			<span>${param.cname}</span> <span>${param.item}</span>
		</div>

	</div>

</div>

<div class="row">
	<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 column productbox" ng-repeat="item in subitems | filter:web_select">

		<div class="item-box">
			<div class="product-source">
				<span class="source-img"> <a href="{{item.web.url}}"> <img
						class="img-circle" src="{{item.web.logo}}"> {{item.web.website}}
				</a>
				</span>


			</div>
			<a href="{{item.description}}"><img src="{{item.product_image}}"
				class="img-responsive"></a>
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

<div id="page-selection"></div>

