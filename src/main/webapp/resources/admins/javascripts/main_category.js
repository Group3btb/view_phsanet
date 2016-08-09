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
			$scope.meain_category = respone.data.DATA;
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
				category_name:$scope.category_name,
				description: $scope.descriptions
			}
		}).then(function(respone){
			swal("Save Success", "", "success");
			$scope.findAll_main_category();
			$scope.clear_data();
		},function(respone){
			swal("please input main category", "", "error");
		});
	} /// end method save main category

	$scope.delete_main_category = function(id){
			swal({   title: "Are you sure to delete ?",   text: "",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, delete it!",   cancelButtonText: "No, cancel plx!",   closeOnConfirm: false,   closeOnCancel: false }, 
				function(isConfirm){   
					if (isConfirm) {
					  	swal("Deleted!", "Your file has been deleted.", "success");  
							
							$http({
							url:'/maincategories/'+id,
								method:'delete'
							}).then(function(respone){
								alert("SUCCESS");
							},function(respone){
								alert("Error");
							});

					} else {
			     swal("Cancelled", "Your file is safe :)", "error");  
			 } });
			
			
	}/// end method delete_main_category

	$scope.update_main_category = function(){

		$http({
			url:'/maincategories',
			method:'PUT',
			data:{

				category_name:$scope.update_maincategory_name,
				maincategory_id:$scope.update_maincategory_id,
				description: $scope.update_description
			}
		}).then(function(respone){
			swal("Update Success", "", "success");
			$scope.findAll_main_category();
			$scope.clear_data();
		},function(respone){
			swal("Update  Fail", "", "error");
		});
	} /// end method save main category

	$scope.getAllData = function(record){

			$scope.update_maincategory_id 		= 	record.main_cate.maincategory_id;
			$scope.update_maincategory_name 	= 	record.main_cate.category_name;
			$scope.update_description 			= 	record.main_cate.description;

	}

	$scope.clear_data = function(){
			$scope.category_name="";
			$scope.descriptions="";	
	}




});// end controller