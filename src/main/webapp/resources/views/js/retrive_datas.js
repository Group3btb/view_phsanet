var application=angular.module('app',['angularUtils.directives.dirPagination']);
application.controller('ctrl',function($scope,$http){

	
var base_url="http://192.168.178.180:2222/api";	
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
		     maincategory:"Fashion",
		     limit:10
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


new_product();
new_fashion();	
new_phone();
man_fashion();	
	
	
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
