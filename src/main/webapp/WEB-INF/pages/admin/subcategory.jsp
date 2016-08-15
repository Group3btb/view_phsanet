<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="SubCate">
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
       	</style>
       	
    </head>


    <body class="fixed-left" ng-cloak>

       
        <!-- Begin page -->	
        <div id="wrapper" ng-controller="controller_subcate">

            <jsp:include page="/WEB-INF/pages/admin/include/model_add_subcate.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/pages/admin/include/modal_update_subcate.jsp"></jsp:include>

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
								      <h4 class="m-t-0 header-title"><b>Category</b></h4><br>
                  						<a href="#add_subcate_model" ng-click="findAll_category()" class="btn btn-default btn-md waves-effect waves-light m-b-30" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="md md-add"></i>Add Sub Category</a>
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
                                                    <th style="max-width: 20px; text-align: center" ng-click="sort('subcategory_id')">ID</th>
                                                    <th ng-click="sort('subcategory_name')">Sub Category Name</th>
                                                    <th ng-click="sort('category.category_name')">Category Name</th>
                                                    <th style="text-align: center">ACTION</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                             
                                                <tr dir-paginate="subcate in subcates | filter:query | orderBy:sortKey:reverse |itemsPerPage:10">
                                                
        											<td>{{subcate.subcategory_id}}</td>                                           
                                                    <td>{{subcate.subcategory_name}}<input type="hidden" value="{{subcate.description}}"></td>
                                                    <td>{{subcate.category.category_name}}<input type="hidden" value="{{subcate.category.category_id}}"></td>
                                                    <td style="text-align: center">
                                                    	<a href="#"  class="btn btn-info btn-md waves-effect waves-light" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="glyphicon glyphicon-eye-open"></i></a>
                                                    	<a href="javascript:" ng-click="getData(this)" class="btn btn-primary btn-md waves-effect waves-light call-modal_update"><i class="glyphicon glyphicon-pencil"></i></a>
                                                    	<a href="#" id="btnclose" ng-click="deleteCate(cate.category_id)" class="btn btn-danger btn-md waves-effect"><i class="glyphicon glyphicon-trash"></i></a>
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
                        target: '#update_model_subcate',
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
