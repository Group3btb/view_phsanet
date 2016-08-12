/**
 * 
 */

var app = angular.module('Myapp',[]);
app.controller('controller_test_scrap',function($http , $scope){
	 
	 $scope.test_scrap_product = function(){
	 	alert("Hello");
	 	

	 	$http({
	 		url:'/scrap_test',
			method:'POST',
			data:{
				url 					: $scope.test_url,
				selector_row 			: $scope.test_row,
				selector_name 			: $scope.test_name,
				selector_price 			: $scope.test_price,
				selector_image 			: $scope.test_image,
				selector_description 	: $scope.test_description
			}
	 	}).then(function(respone){
	 		$scope.scrap_products = respone.data;
	 		console.log($scope.scrap_product);
	 	},function(respone){
	 		alert("Faild");
	 	});

		$http({
			url:'/scrap_test',
			method:'POST',
			data:{

			/*	url 					: $scope.test_url,
				selector_row 			: $scope.test_row,
				selector_name 			: $scope.test_name,
				selector_price 			: $scope.test_price,
				selector_image 			: $scope.test_image,
				selector_description 	: $scope.test_description*/
			}
		 }).then(function(respone){
			 aler(resopne);
		 },function(respone){
			 alert("error");
		 });
	 }

	 	$scope.findall_web_sources = function(){
 			
	 	$http({
	 		url:'/sitemanagerment',
	 		method:'GET'
	 	}).then(function(respone){
	 		alert("HEllo");
	 		$scope.webs = respone.data.DATA;
	 		
	 	},function(respone){
	 		alert("Error");
	 	});
	 }// eng method site
	 $scope.findall_web_sources();


	 $scope.findall_subcategory = function(){
	 	$http({

	 		url:'/subcategories',
	 		method:'GET'

	 	}).then(function(respone){
	 		alert("HEllo");
	 		$scope.subs = respone.data.DATA;

	 	},function(respone){
	 		alert("Error");
	 	});
	 }// end method find all subcategory
	  $scope.findall_subcategory();

	  //getid subcategory
	  $scope.webSiteChange = function(record){
	  		
	  		$scope.test_url 		= record.url;
			$scope.test_row			= record.selector_row;
			$scope.test_name		= record.selector_name;
			$scope.test_price		= record.selector_price;
			$scope.test_image		= record.selector_image;
			$scope.test_description = record.selector_description;

	  }
	  
	  $scope.subcategoryChange = function(record){
	  		$scope.subcategory_id = record;
	  }

 });//end controller 