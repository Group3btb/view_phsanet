/**
 * 
 */

var app = angular.module('Myapp',[]);
app.controller('controller_temporary_item',function($http , $scope){
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
 	$scope.temporary_item();


 });//end controller