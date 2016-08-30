<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="Myapp">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <title>PhsarNet</title>
     
       	<jsp:include page="/WEB-INF/pages/admin/include/chetra_head.jsp"></jsp:include>

         <!--venobox lightbox-->
        
        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        
    </head>


    <body class="fixed-left" ng-cloak>
        
        <!-- Begin page -->
        <div id="wrapper" ng-controller="controller_temporary_item">
        	 <jsp:include page="/WEB-INF/pages/admin/include/modal_update_subcate_temporary.jsp"></jsp:include>
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

                        <!-- Page-Title -->
						<div class="row">
							<div class="col-sm-12">
								<h4 class="page-title">Temporary Items</h4><br>
						</div>

                        <!-- SECTION FILTER
                        ================================================== -->

                        <div class="row port">

                        		<div class="col-sm-12">
								<div class="card-box">
									<div class="table-responsive">
										<div class="col-sm-6 text-xs-center text-right pull-right">
											<!-- <select class="form-control  input-sm">
												
											</select> -->
											<select   class="form-control"
                                      			ng-model="sub" 
                                      			ng-change="temporary_item_filter(sub)" 
                                      			data-ng-options="sub as sub.subcategory_name for sub in subs">
                                      			<option value="">---Subcategory---</option>
                            				</select>
						                   <!--  <input id="demo-input-search2" type="text" placeholder="Search" class="form-control  input-sm" autocomplete="off" ng-model="query"> -->
						                  </div>
									        <table class="table table-actions-bar m-b-0"><!-- <table class="table table-actions-bar m-b-0"> -->
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Image</th>
                                                    <th>Product Name</th>
                                                    <th>Sub Category</th>
                                                    <th></th>
                                                    <th style="text-align: center">ACTION</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                             
                                                <tr dir-paginate="item in items | itemsPerPage:20" id="x">
                                               <!--  <tr ng-repeat="item in items"> -->
        											<td>{{item.product_id}}</td>   

                                                     <td><img style="width:150px ; height:100px " src={{item.product_image}} class="thumb-sm pull-left m-r-5" alt="">

                                                    </td>

                                                    <td>{{item.product_name}}</td>
                                                    <td>{{item.subcategory.subcategory_name}}</td> 
                                                    <td><div class="checkbox checkbox-info">
		                                            <input id="" type="checkbox" ng-click="selected_items($event,this)"
		                                            >
		                                            <label for="checkbox4">
		                                                
		                                            </label>
		                                        </div></td>
                                                    <td style="text-align: center">
                                                    	
                                                    	<a href="javascript:" ng-click="getData(item.product_id)" class="btn btn-primary btn-md waves-effect waves-light call-modal_update"><i class="glyphicon glyphicon-pencil"></i></a>
                                                    	<a href="#" id="btnclose" ng-click="delte_temporary_item(item.product_id)" class="btn btn-danger btn-md waves-effect"><i class="glyphicon glyphicon-trash"></i></a>
                                                    </td>
                                                </tr>   
                                       		</table>
                                     
                                       		 <dir-pagination-controls
										       max-size="20"
										       direction-links="true"
										       boundary-links="true" >
										    </dir-pagination-controls>

										   <!--  <div id="page-selection">
			
											</div> -->
                                     	</div>  
                                     	 <div class="form-group text-right m-b-0" style="margin-top: 5px">
                                        <!--  <button type="button" class="btn btn-success btn-custom waves-effect waves-light">Table Product</button>
                                        <button type="button" class="btn btn-warning btn-custom waves-effect waves-light">Table</button> -->
                                        <button class="btn btn-info waves-effect waves-light btn-sm" id="updateAll" ng-click="updateAll()">Table Product</button> 

                                            <button class="btn btn-info waves-effect waves-light btn-sm" id="mybtn" >Select all</button>
                                            <button class="btn btn-info waves-effect waves-light btn-sm" id="mybtn1" >Deselect all</button>
                                        
                                    </div>
									</div>
								</div>
                            
                        </div> <!-- End row -->




                    </div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer text-right">
                    2016 © PhsarNet
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

        <!-- jQuery  -->
       <!--<script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>-->

        <jsp:include page="/WEB-INF/pages/admin/include/headscript.jsp"></jsp:include>
        <script src="/resources/admins/javascripts/temporary_item.js"></script>

        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
		
        <script type="text/javascript" src="assets/plugins/isotope/dist/isotope.pkgd.min.js"></script>
        <script type="text/javascript" src="assets/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>

        <script type="text/javascript">
            	$(document).ready(function() {
					$('form').parsley();
			        $('#datatable').dataTable( );

			       
			        $("#mybtn").click(function(){

			         	$("input[type='checkbox']").prop("checked","true");
			         });
			        $("#mybtn1").click(function(){

			         	$("input[type='checkbox']").removeAttr("checked");
			         });

			        $(document).on('click', '.call-modal_update', function(){
                    Custombox.open({
                        target: '#update_model_subcate',
                        effect: 'fadein',
                        overlaySpeed: '200',
                        overlayColor: '#36404a'
                    });
                });

				});




        </script>


    </body>
</html>