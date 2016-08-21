<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="MainCateapp">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <title>PhsarNet</title>
     
       	<jsp:include page="/WEB-INF/pages/admin/include/chetra_head.jsp"></jsp:include>
       	<style>
       		.sort-icon {
			    font-size: 9px;
			    margin-left: 5px;
			}
			
			th {
			    cursor:pointer;
			}
			
			.highlighted { background: yellow }
       	</style>
       	
    </head>


    <body class="fixed-left" ng-cloak>

       
        <!-- Begin page -->	
        <div id="wrapper" ng-controller="controller_Maincategory">

            <jsp:include page="/WEB-INF/pages/admin/include/model_add_maincat.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/pages/admin/include/modal_update_maincategory.jsp"></jsp:include>

            <!-- Top Bar Start -->
           	<jsp:include page="/WEB-INF/pages/admin/menu/top_bar.jsp"></jsp:include>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->
			 	<jsp:include page="/WEB-INF/pages/admin/menu/left_sidebar_start.jsp"></jsp:include>
      		<!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->                      
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">
                        <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
								      <h4 class="m-t-0 header-title"><b>Main Category</b></h4><br>
                  						<!-- <a href="#add_maincate_model" ng-click="findAllMainCate()" class="btn btn-default btn-md waves-effect waves-light m-b-30" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="md md-add"></i>Add Category</a> -->
										<a href="#add_maincate_model" class="btn btn-default btn-md waves-effect waves-light m-b-30" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="md md-add"></i>Add Main Category</a>
								</div>
							</div>
						</div>
                        
              <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									<div class="table-responsive">
										<div class="col-sm-6 text-xs-center text-right pull-right">
						                    <input id="demo-input-search2" type="text" placeholder="Search" class="form-control  input-sm" autocomplete="off" ng-model="query">
						                  </div>
									        <table class="table table-actions-bar m-b-0"><!-- <table class="table table-actions-bar m-b-0"> -->
                                            <thead>
                                                <tr>
                                                    <th style="max-width: 20px;text-align: center" ng-click="sort('maincategory_id')">ID</th>
                                                    <!-- <th style="text-align: center" ng-click="sort('category_name')">Category Name</th> -->
                                                    
                                                    <td></td>
                                                    
                                                    <th style="" ng-click="sort('main_category.category_name')">Main Category Name</th>
                                                    <th style="text-align: left" ng-click="sort('main_category.main_cate.description')" class="col-md-4">Description</th>
                                                    <th style="text-align: center">ACTION</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                             
                                                <tr dir-paginate="main_cate in meain_category | filter:query | orderBy:sortKey:reverse |itemsPerPage:10">
                                                
        											<td style="text-align: center" class="col-md-1"><!-- <input type="hidden" value="{{main_cate.maincategory_id}}"> -->{{main_cate.maincategory_id}}</td> 
        											
        											<td></td>
        											                                          
                                                    <td  ng-bind-html="main_cate.category_name |highlight:query"><!-- {{main_cate.category_name}} --><input type="hidden" value="{{main_cate.category_name}}"></td>
                                                    <td  ng-bind-html="main_cate.description |highlight:query"><!-- {{main_cate.description}} --><input type="hidden" value="{{main_cate.description}}"></td>
                                                    <td style="text-align: center" class="col-md-3">
                                                    	<a href="#"  class="btn btn-info btn-md waves-effect waves-light" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="glyphicon glyphicon-eye-open"></i></a>
                                                    	<a href="javascript:" ng-click="getData(this)" class="btn btn-primary btn-md waves-effect waves-light call-modal_update"><i class="glyphicon glyphicon-pencil"></i></a>
                                                    	<a href="#" id="btnclose" ng-click="deleteMainCate(main_cate.maincategory_id)" class="btn btn-danger btn-md waves-effect"><i class="glyphicon glyphicon-trash"></i></a>
                                                    </td>
                                                </tr>   
                                       		</table>
                                       		 <dir-pagination-controls
										       max-size="10"
										       direction-links="true"
										       boundary-links="true" >
										    </dir-pagination-controls>
                                     	</div>  
									</div>
								</div>
							</div>
						</div>
					</div>
            		</div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer">
                    2016 © PhsarNet.
                </footer>

            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->

	       

        </div>
        <!-- END wrapper -->

        <script>
            var resizefunc = [];
        </script>
		
		<jsp:include page="/WEB-INF/pages/admin/include/headscript.jsp"></jsp:include>
       
        <script type="text/javascript">
			$(document).ready(function() {
                $('#datatable').dataTable( );
                
                $(document).on('click', '.call-modal_update', function(){
                    Custombox.open({
                        target: '#updateMainCate_model',
                        effect: 'fadein',
                        overlaySpeed: '200',
                        overlayColor: '#36404a'
                    });
                });
/* 

                /*  $(document).on('click', '.call-modal1', function(){
                    Custombox.open({
                        target: '#add_cate_model',
                        effect: 'fadein',
                        overlaySpeed: '200',
                        overlayColor: '#36404a'
                    });
                });  */

			});// end method ready
		</script>
	

	</body>
</html>
