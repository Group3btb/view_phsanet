/**
 * 
 */

 var app = angular.module("Cateapp",[]);
 app.controller("controller_category",function($http,$scope){

 	$scope.findAll_category = function(){
 		$http({
 			url:'/categories',
 			method:'GET'
 		}).then(function(respone){
 			$scope.categories = respone.data.DATA;
 		},function(respone){
 			alert("Error");
 		});
 	}//end findall category
 	
 	$scope.findAllMainCate = function(){
 		$http({
 			url:'/maincategories',
 			method : 'GET'
 		}).then(function(response){
 			$scope.maincates = response.data.DATA;
 		},function(response){
 			alert("Error");
 		});
 	};//end findAllMainCate
 	
 	$scope.addCate = function(){
 		$http({
 			url: '/categories',
 			method: 'POST',
 			data: {
 				category_name : $scope.cate_name,
 				desciption : $scope.cate_desc,
 				main_category:{maincategory_id : $scope.main_cate}
 			}
 		}).then(function(response){
 			$scope.findAll_category();
 			$socpe.cate_name = "";
 			$scope.cate_desc = "";
 		}, function(response){});
 	};//end add category
 	
 	$scope.getData = function(record){
 		$scope.cate_name_update = record.cate.category_name;
 		$scope.main_cate_upeate = record.cate.main_category.main_category_id;
 		$scope.cate_desc_update = record.cate.description;
 		$scope.findAllMainCate();
 		//$scope.selected = "selected";
 	};
 	
 	$scope.UpdateCate = function(){
 		$http({
 			url : '/categories',
 			method : 'PUT',
 			data : {
 				category_name : $scope.cate_name_update,
 				description : $scope.cate_desc_update,
 				main_category:{maincategory_id : $scope.main_cate_update}
 			}
 		}).then(function(){
 			$scope.findAll_category();
 		},function(){
 			
 		});
 	};//end update category
 	
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

 	$scope.findAll_category();

 });// end controller


