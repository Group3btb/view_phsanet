/**
 * 
 */

 var app = angular.module("Myapp",[]);
app.controller("controller_scrap",function($http,$scope){
 		
 		$scope.findall_web_sources = function(){
 			
	 	$http({
	 		url:'/sitemanagerment',
	 		method:'GET'
	 	}).then(function(respone){
	 		alert("HEllo");
	 		$scope.webs = respone.data.DATA;
	 		console.log($scope.webs);
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
	 		$scope.subs = respone.data.DATA;
	 	},function(respone){
	 		alert("Error");
	 	});
	 }// end method find all subcategory
	  $scope.findall_subcategory();


	  /// method operation add new url and update url
	  $scope.operation = function(){

	  }// end operation 

	  $scope.getData= function(record){
	  		if(record.url!=null){
	  			$scope.btn = "UPDATE";
	  			$scope.title ="UPDATE";
	  		}else{
	  			$scope.btn = "Save";
	  			$scope.title ="NEW";
	  		}
	  }
	  
	  //getid subcategory
	  $scope.webSiteChange = function(record){
	  	alert(record);
	  }
	  
	  $scope.getWeb_source_ID = function(record){
	  	alert(record.web.getWeb_source_id);
	  }

 });//end controller