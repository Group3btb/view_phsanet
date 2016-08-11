/**
 * 
 */

 var app = angular.module("Myapp",[]);
app.controller("controller_scrap",function($http,$scope){
 		
		$scope.test = function(){
			$scope.findall_web_sources();
		}

 		$scope.findall_web_sources = function(){
 			
	 	$http({
	 		url:'/sitemanagerment',
	 		method:'GET'
	 	}).then(function(respone){
	 		$scope.webs = respone.data.DATA;
	 		console.log($scope.webs);
	 	},function(respone){
	 		alert("Error");
	 	});
	 	$scope.findall_web_sources();
	 }// eng method site




 });//end controller