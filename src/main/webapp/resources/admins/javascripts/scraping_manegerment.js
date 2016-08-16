/**
 * 
 */

 var app = angular.module('Myapp',[]);
 app.controller('controller_scraping',function($http,$scope){


	  $scope.findAll_web_structure = function(){
	  		
	  		$http({
	  			url:'/sitemanagerment',
	  			method:'GET'
	  		}).then(function(respone){
	  			
	  			$scope.scraps = respone.data.DATA;
	  			console.log($scope.scraps);

	  		},function(respone){
	  			alert("error");	
	  		});
	  }

	  $scope.findAll_web_structure();

	  $scope.web_Struture = function(record){


	  		$scope.url_ 					= record.url;
	  		$scope.website_					= record.website;
	  		$scope.selector_row_ 			= record.selector_row;
	  		$scope.selector_name_ 			= record.selector_name;
	  		$scope.selector_price_ 			= record.selector_price;
	  		$scope.selector_image_ 			= record.selector_image;
	  		$scope.selector_description_ 	= record.selector_description;
	  		$scope.web_source_id_ 			= record.web_source_id;
	  		
	  		alert($scope.website_);
	  }


	  $scope.start_scraping = function(){
	  	alert("Hello");

	  	$http({

	  			url:'/startscrap',
	  			method:'POST',
	  			data:{

	  				url  			:$scope.url_ ,
	  				website			:$scope.website_,
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
	  }

 });//end controller 