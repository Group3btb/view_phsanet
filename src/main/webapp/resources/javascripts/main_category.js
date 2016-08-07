/**
 * 
 */
           

var app = angular.module("myApp", []);
app.controller("controller_maincategory", function($scope, $http) {
	$scope.findAll_main_category = function(){
		$http({
			url:'/maincategories',
			method:'GET'
		}).then(function(respone){
			$scope.meain_category = respone.data;
			alert(respone);
		},function(respone){
			alert("Error");
		});
	}
});// end controller