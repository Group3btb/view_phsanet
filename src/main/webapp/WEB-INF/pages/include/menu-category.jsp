<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--  category -->
	 	  	  
	 	  	   <ul class="nav nav-stacked">
					  <li class="active"><a href="#"><i class="fa fa-bars"></i> Category</a></li>
					  <li class="dropdown mega-dropdown" ng-repeat="main in list_cat">
					      <a href="#" class="dropdown-toggle" data-toggle="dropdown">{{main.category_name}}</a>

                          <ul class="dropdown-menu mega-dropdown-menu">
								<li ng-repeat="cat in main.listcategory">
			    					<ul>
										<li class="dropdown-header">{{cat.category_name}}</li>
										<li ng-repeat="sub in cat.listsubcategory"><a href="#">{{sub.subcategory_name}}</a></li>
									</ul>
								</li>
							</ul>
				      </li>
					  <li><a href="#"> All Categories</a></li>
					
					</ul>

	 	  	   <!--  end category -->


