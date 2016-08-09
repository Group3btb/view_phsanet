/**
 * 
 */


 var app = angular.module("Myapp",[]);
 app.controller("controller_web_source",function($http,$scope){

	 $scope.findall_web_sources = function(){
	 	$http({
	 		url:'/sitemanagerment',
	 		method:'GET'
	 	}).then(function(respone){
	 		$scope.webs = respone.data.DATA;
	 		console.log(respone.data);
	 	},function(respone){
	 		alert("Error");
	 	});
	 }// eng method site
	 $scope.findall_web_sources();

 });// end controller 