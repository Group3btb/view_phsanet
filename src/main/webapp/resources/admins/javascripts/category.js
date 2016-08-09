/**
 * 
 */

 var app = angular.module("Myapp",[]);
 app.controller("controller_category",function($http,$scope){

 	$scope.findAll_category = function(){
 		$http({
 			url:'/categories',
 			method:'GET'
 		}).then(function(respone){
 			$scope.category = respone.data.DATA;
 			console.log(respone.data.DATA);
 		},function(respone){
 			alert("Error");
 		});
 	}//end findall category

 	$scope.delete_category = function(id){
		$http({
				url:'/category/'+id,
				method:'DELETE'
			}).then(function(respone){
				alert(respone.data.DATA);
			},function(respone){
				alert("Error");
			});
 	}// end delete category



 });// end controller


