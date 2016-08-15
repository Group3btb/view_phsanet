var app = angular.module("SubCate", ['angularUtils.directives.dirPagination']);
app.controller("controller_subcate", function($http, $scope){
	$scope.findAllSubCate = function(){
 		$http({
 			url:'/subcategories',
 			method:'GET'
 		}).then(function(respone){
 			$scope.subcates = respone.data.DATA;
 		},function(respone){
 			alert("Error");
 		});
 	};//end find all sub category
 	
 	$scope.findAll_category = function(){
 		$http({
 			url:'/categories',
 			method:'GET'
 		}).then(function(respone){
 			$scope.categories = respone.data.DATA;
 		},function(respone){
 			alert("Error");
 		});
 	};//end find all category
 	
 	$scope.addSubCate = function(){
 		$http({
 			url: '/subcategories',
 			method: 'POST',
 			data: {
 				category:{
 					category_id : $scope.category
 				},
 				description : $scope.subcate_desc,
 				subcategory_name : $scope.subcate_name
 			}
 		}).then(function(response){
 			$scope.findAllSubCate();
 			$socpe.subcate_name = " ";
 			$scope.subcate_desc = " ";
 		}, function(response){
 			alert("Add failed!");
 		});
 	};//end add sub category
 	
 	$scope.getData = function(record){
 		$scope.subcate_name_update = record.subcate.subcategory_name;
 		$scope.subcate_desc_update = record.subcate.description;
 		$scope.subcate_id_update = record.subcate.subcategory_id;
 		$scope.findAll_category();
 		$scope.cate = record.subcate.category.category_id;
 		alert($scope.cate);
 		//$scope.selected = "selected";
 	};//end function getData per record for update Sub Category
 	
 	$scope.UpdateSubCate = function(){	  
 		swal({   
			title: "Are you sure to update this record?",   
			text: "You will not be able to roll back!",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#E98106",   
			confirmButtonText: "Yes",   
			cancelButtonText: "No",   
			closeOnConfirm: false,   
			closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {     
				$http({
					url : '/subcategories',
		 			method : 'PUT',
		 			data : {
		 				category: {
		 					    category_id: $scope.cate
		 					  },
		 				description:$scope.subcate_desc_update ,
		 				subcategory_name: $scope.subcate_name_update
		 			}
				}).then(function(response){
					swal("Updated!", "Your record updated!", "success");
					$('.btn-danger').trigger('click');
					$scope.findAllSubCate();
					
			},function(response){

			});	  
			}else {     
				swal("Cancelled", "Your record has not been updated:)", "error");   
			} 
		});
 	};//end update sub category
 	
 	
 	$scope.findAllSubCate();

 	$scope.sort = function(keyname){
        $scope.sortKey = keyname;   //set the sortKey to the param passed
        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
    };//end sort function
});