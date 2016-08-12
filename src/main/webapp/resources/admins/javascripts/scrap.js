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

	 		$scope.subs = respone.data.DATA;

	 	},function(respone){
	 		alert("Error");
	 	});
	 }// end method find all subcategory
	  $scope.findall_subcategory();


	  /// method operation add new url and update url
	  $scope.operation = function(){
	  	  if($scope.btn=="Save"){
	  	  		$scope.save_web_scrap();
	  	  }else{
	  	  	
	  	  }
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

	  $scope.save_web_scrap = function(){

	  		$http({

	  			url:'/scrapmanagerment',
	  			method:'POST',
	  			data:{

	  				web_source  	: {web_source_id :$scope.web_source_id },
	  				subcategory  	: {subcategory_id:$scope.subcategory_id},
	  				url 			: $scope.scrap_url

	  			}

	  		}).then(function(respone){
	  			swal("Save Success", "", "success");
	  			$scope.findAll_web_scrap();
	  		},function(respone){
	  			swal("Save Success", "", "error");
	  		});
	  }

	  //getid subcategory
	  $scope.webSiteChange = function(record){

	  		$scope.web_source_id = record;

	  }
	  
	  $scope.subcategoryChange = function(record){
	  		$scope.subcategory_id = record;
	  		alert($scope.web_source_id +" A "+$scope.subcategory_id);
	  }

 });//end controller