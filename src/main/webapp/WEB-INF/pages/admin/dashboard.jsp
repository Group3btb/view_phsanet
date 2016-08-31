<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  ng-app="Myapp">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <!-- <link rel="shortcut icon" href="assets/images/favicon_1.ico"> -->

        <title>PhsarNet</title>
       <jsp:include page="/WEB-INF/pages/admin/include/chetra_head.jsp"></jsp:include>
    </head>
    
    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper"  ng-controller="controller_temporary_item">
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
                                <h4 class="page-title">PhsarNet Dashboard</h4>
                                <ol class="breadcrumb">
                                    <!-- <li><a href="#">Ubold</a></li>
                                    <li><a href="#">Forms</a></li>
                                    <li class="active">Form Validation</li> -->
                                </ol>
                            </div>
                        </div>
                  <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="widget-bg-color-icon card-box fadeInDown animated">
                                    <div class="bg-icon bg-icon-info pull-left">
                                        <i class="md ion-ios7-world-outline text-info"></i>
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">5</b></h3>
                                        <p class="text-muted">Total Web Source</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-3">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-pink pull-left">
                                        <i class="md icon-layers text-pink"></i>
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">15</b></h3>
                                        <p class="text-muted">Total Category</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-3">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-purple pull-left">
                                        <i class="md ion-android-contacts text-purple"></i>
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">15</b></h3>
                                        <p class="text-muted">Total Visitors</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-3">
                                <div class="widget-bg-color-icon card-box">
                                    <div class="bg-icon bg-icon-success pull-left">
                                        <i class="md md-remove-red-eye text-success"></i>
                                    </div>
                                    <div class="text-right">
                                        <h3 class="text-dark"><b class="counter">10</b></h3>
                                        <p class="text-muted">Today's Visits</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div><!-- 
                        <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box">
                               <h4 class="text-dark header-title m-t-0">Visitors Chart Weekly</h4>
                               <div class="text-center">
                                  <ul class="list-inline chart-detail-list">
                                     <li>
                                        <h5><i class="fa fa-circle m-r-5" style="color: #5fbeaa;"></i>Desktops</h5>
                                     </li>
                                    <li>
                                      <h5><i class="fa fa-circle m-r-5" style="color: #5d9cec;"></i>Tablets</h5>
                                    </li>
                                    <li>
                                      <h5><i class="fa fa-circle m-r-5" style="color: #dcdcdc;"></i>Mobiles</h5>
                                    </li>
                                  </ul>
                               </div>
                             <div id="morris-bar-stacked" style="height: 303px;"></div>
                          </div>
                        </div>
                      </div> -->
                        
              <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
                   <h3>Temporary Items Scraped</h3><br>
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
                                     <!--  </div>   -->            
                                         <div class="form-group text-right m-b-0" style="margin-top: 5px">
                                        <!--  <button type="button" class="btn btn-success btn-custom waves-effect waves-light">Table Product</button>
                                        <button type="button" class="btn btn-warning btn-custom waves-effect waves-light">Table</button> -->
                                        <button class="btn btn-info waves-effect waves-light btn-sm" id="updateAll" ng-click="updateAll()">Add To Production</button> 

                                            <button class="btn btn-info waves-effect waves-light btn-sm" id="mybtn" >Select all</button>
                                            <button class="btn btn-info waves-effect waves-light btn-sm" id="mybtn1" >Deselect all</button>
                                        
                                    </div>
										</div>
									</div>
								</div>
							</div>
						</div>
    
            		</div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer">
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

        <jsp:include page="/WEB-INF/pages/admin/include/headscript.jsp"></jsp:include>
         <script src="/resources/admins/javascripts/temporary_item.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $('.counter').counterUp({
                    delay: 100,
                    time: 1200
                });

                $(".knob").knob();
                   
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
      <!--  End jQuery for dashboard -->
	</body>
</html>