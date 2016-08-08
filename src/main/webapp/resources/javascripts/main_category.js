/**
 * 
 */
           

var app = angular.module("myApp", []);
app.controller("controller_maincategory", function($scope, $http) {
	alert("");
	$scope.findAll_main_category = function(){

		$http({
			url:'/maincategories',
			method:'GET'
		}).then(function(respone){
			$scope.meain_category = respone.data.DATA;
			alert(respone.data);
		},function(respone){
			console.log(respone.data)
			alert("Error");
		});
	}
	$scope.findAll_main_category();


	$scope.save_main_category = function(){

		$http({
			url:'/maincategories',
			method:'POST',
			data:{
				maincatename:$scope.maincategory_name,
				description: $scope.descriptions
			}
		}).then(function(respone){
			alert("SUCCESS");
		},function(respone){
			console.log(respone.data)
			alert("Error");
		});
	}


});// end controller