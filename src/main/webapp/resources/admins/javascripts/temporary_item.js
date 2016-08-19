/**
 * 
 */

var app = angular.module('Myapp',['angularUtils.directives.dirPagination']);
app.controller('controller_temporary_item',function($http , $scope){
 	
	$scope.find_all_temporary_item = function(){

		$http({
 			url 	:'/temporaryitem',
 			method 	:'GET',
 		}).then(function(respone){
 			$scope.items = respone.data.DATA;
 			//alert($scope.items);
 			console.log($scope.items);
 		},function(respone){
 			alert("Error");
 		});
	}
	$scope.find_all_temporary_item();

 	$scope.temporary_item = function(){
 		$http({
 			url 	:'/temporaryitem?productname='+'pro',
 			method 	:'GET',
 		}).then(function(respone){
 			alert("success");
 		},function(respone){
 			alert("Error");
 		});
 	}
 	


 });//end controller