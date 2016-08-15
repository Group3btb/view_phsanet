/**
 * 
 */

 var app = angular.module('Myapp',[]);
 app.controller('controller_scraping',function($http,$scope){
 	  // find all web input url to scrap
	  $scope.findAll_web_scrap = function(){
	  		
	  		$http({
	  			url:'/scrapmanagerment',
	  			method:'GET'
	  		}).then(function(respone){
	  			
	  			$scope.scraps = respone.data.DATA;
	  			console.log($scope.scraps);

	  		},function(respone){
	  			alert("error");	
	  		});
	  }

	  $scope.findAll_web_scrap();

	  $scope.web_Struture = function(record){


	  		$scope.url_ 					= record.url;
	  		$scope.selector_row_ 			= record.web_source.selector_row;
	  		$scope.selector_name_ 			= record.web_source.selector_name;
	  		$scope.selector_price_ 			= record.web_source.selector_price;
	  		$scope.selector_image_ 			= record.web_source.selector_image;
	  		$scope.selector_description_ 	= record.web_source.selector_description;
	  		$scope.web_source_id_ 			= record.web_source.web_source_id;
	  		
	  		alert("row"+$scope.url_  +" name "+$scope.selector_name_+" price "+
	  			$scope.selector_price_ +  "  img "+ $scope.selector_image_  +" de "+	$scope.selector_description_ ) ;
	  }


	  $scope.start_scraping = function(){
	  	alert("Hello");

	  	$http({

	  			url:'/startscrap',
	  			method:'POST',
	  			data:{

	  				/*web_source  	: {web_source_id :$scope.web_source_id },
	  				subcategory  	: {subcategory_id:$scope.subcategory_id},
	  				url 			: $scope.scrap_url*/

	  				url:$scope.url_ ,
	  				selector_row 	:$scope.selector_row_ ,
	  				selector_name 	:$scope.selector_name_ ,
	  				selector_price 	:$scope.selector_price_,
	  				selector_image 	:$scope.selector_image_ ,
	  				selector_description:$scope.selector_description_,
	  				web_source_id 	: $scope.web_source_id_

	  			}

	  		}).then(function(respone){
	  			swal("Save Success", "", "success");
	  			$scope.findAll_web_scrap();
	  		},function(respone){
	  			swal("Failed", "", "error");
	  		});

	  /*	$http({
	  		url 	: '/startscrap',
	  		method 	: 'POST',
	  		DATA 	: {
	  				url:$scope.url_ ,
	  				selector_row 	:$scope.selector_row_ ,
	  				selector_name 	:$scope.selector_name_ ,
	  				selector_price 	:$scope.selector_price_,
	  				selector_image 	:$scope.selector_image_ ,
	  				selector_description:$scope.selector_description_
	  		} 


	  	}).then(function(respone){
	  		swal("Scrap Success", "", "success");
	  	},function(respone){
	  		swal("Scrap Faild", "", "error");
	  	});*/
	  
	  }

 });//end controller 