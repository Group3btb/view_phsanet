var application=angular.module('app',['angularUtils.directives.dirPagination']);
application.controller('ctrl',function($scope,$http){

var base_url="http://192.168.178.175:2222/api";	

/*main category*/
function allcategory(){
	$http({
		url:base_url+'/listcategory',
		method:'GET'
	}).then(function(respones){
		$scope.list_cat=respones.data.DATA;
		console.log($scope.list_cat);
	},function(error){});
}

/*new lates scrap products*/
	function new_product(){
		$http({
			method:'GET',
			url:base_url+'/product',
			params:{
				   productname:"",
				   limit:5
			}
	
		}).then(function(respones){
			$scope.lates=respones.data.DATA;
		},function(respones){
			
		});
	}
	
/*new lates scrap fashions*/
function new_fashion(){
	$http({
	  method:'GET',
	  url:base_url+'/product',
	  params:{
		    
		     limit:15
		  }
	}).then(function(respones){
		$scope.fasions=respones.data.DATA;
		
	},function(respones){
		
	});
}

/*new lates scrap phone*/
function new_phone(){
	$http({
		  method:'GET',
		  url:base_url+'/product',
		  params:{
			  maincategory:"Phone",
			  limit:10
		  }
		}).then(function(respones){
			$scope.phone=respones.data.DATA;
		},function(respones){
			
		});
}

var paging = {
		limit: 12,
		page: 1,
		maincategory: "Fashion"
};

/*man fashions*/
function man_fashion(){
	$http({
		  method:'GET',
		  url:base_url+'/product',
		  params: paging
		}).then(function(respones){
			$scope.man=respones.data.DATA;
			$scope.total=respones.data.PAGE.TOTAL_PAGES;
			paging.page = respones.data.PAGE.PAGE;
			$('#page-selection').bootpag({
			    total:$scope.total,
			    page:paging.page,
			    maxVisible: 5
			});
		},function(respones){
			
	});
}
$('#page-selection').on("page", function(event, num){
  
    paging.page = num;
    man_fashion();

});



/*save users*/
$scope.saveUser=function(){
	$http({
		url:base_url+'/user',
		method:'POST',
		data:{
			"user_name":$scope.user_name,
			"email":$scope.email,
			"password":$scope.password
		}
	}).then(function(respones){
		message("User has been save","Login","success");
		clear();
	},function(errors){
		message("User has been faild","Login Faild","error");
	});
	
}

/*message success*/
function message(title,status,type){
  swal(title,status,type)
}
/*clear input text*/
function clear(){
   $scope.user_name="";
   $scope.email="";
   $scope.password="";
   $scope.c_password="";
   $('#register').trigger('click');
}

new_product();
new_fashion();	
new_phone();
man_fashion();	
allcategory();	
	
});



/*sub string*/
application.filter('myFilter', function() {
	  return function(input) {
		  var text_lenght= input;
			var text=" ";
			for(var i=0 ;i<text_lenght.length;i++){
				if(i<20){
				text+=text_lenght.charAt(i);
				}else{
					text+="....";
					break;
				}
			}
	    return text;

	  }
});
