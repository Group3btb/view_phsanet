<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
        <div id="wrapper">
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
									        <table id="datatable" class="table table-striped table-bordered table-actions-bar"><!-- <table class="table table-actions-bar m-b-0"> -->
                                            <thead>
                                                <tr>
                                                    <th style="max-width: 20px;">Image</th>
                                                    <th>Item Name</th>
                                                    <th>Category</th>
                                                    <th>Price</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <tr>
                                                    <td><img src="assets/images/products/lumia.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                                                    <td>Nokia LUMIA</td>
                                                    <td>Phone</td>
                                                    <td>$ 150</td>
                                                    <td><a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                                      <!-- <a href="#" class="table-action-btn"><i class="md md-close"></i></a> -->
                                                      <input type="checkbox" class="table-action-btn" id="checkbox5" ></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="assets/images/products/imac.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                                                    <td>iMac 2016</td>
                                                    <td>Computer</td>
                                                    <td>$ 700</td>
                                                    <td><a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                                      <!-- <a href="#" class="table-action-btn"><i class="md md-close"></i></a> -->
                                                      <input type="checkbox" class="table-action-btn" id="checkbox5" ></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="assets/images/products/iphone.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                                                    <td>iPhone6 plus</td>
                                                    <td>Phone</td>
                                                    <td>$ 500</td>
                                                    <td><a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                                      <!-- <a href="#" class="table-action-btn"><i class="md md-close"></i></a> -->
                                                      <input type="checkbox" class="table-action-btn" id="checkbox5" ></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="assets/images/products/samsung.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                                                    <td>Samsung Galaxy Note5</td>
                                                    <td>Phone</td>
                                                    <td>$ 450</td>
                                                    <td><a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                                      <!-- <a href="#" class="table-action-btn"><i class="md md-close"></i></a> -->
                                                      <input type="checkbox" class="table-action-btn" id="checkbox5" ></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="assets/images/products/iphone.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                                                    <td>iPhone 5s</td>
                                                    <td>Phone</td>
                                                    <td>$ 330</td>
                                                    <td><a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                                      <!-- <a href="#" class="table-action-btn"><i class="md md-close"></i></a> -->
                                                      <input type="checkbox" class="table-action-btn" id="checkbox5" ></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="assets/images/products/macbook.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                                                    <td>MacBook Pro 2016</td>
                                                    <td>Computer</td>
                                                    <td>$ 1200</td>
                                                    <td><a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                                      <!-- <a href="#" class="table-action-btn"><i class="md md-close"></i></a> -->
                                                      <input type="checkbox" class="table-action-btn" id="checkbox5" ></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="assets/images/products/iphone.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                                                    <td>iPhone 6</td>
                                                    <td>Phone</td>
                                                    <td>$ 400</td>
                                                    <td><a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                                      <!-- <a href="#" class="table-action-btn"><i class="md md-close"></i></a> -->
                                                      <input type="checkbox" class="table-action-btn" id="checkbox5" ></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="assets/images/products/iphone.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                                                    <td>iPhone 6s Plush</td>
                                                    <td>Phone</td>
                                                    <td>$ 700</td>
                                                    <td><!-- <a href="#" class="table-action-btn"><i class="md md-edit"></i></a> -->
                                                       <a href="#custom-modal" class=" table-action-btn" data-animation="fadein" data-plugin="custommodal" 
                                                            data-overlaySpeed="200" data-overlayColor="#36404a"><i class="md md-edit"></i></a>
                                                      <!-- <a href="#" class="table-action-btn"><i class="md md-close"></i></a> -->
                                                      <input type="checkbox" class="table-action-btn" id="checkbox5" ></td>
                                                </tr>
                                                
                                        </table>
                                     <!--  </div>   -->            
                                      <div class="form-group text-right m-b-0" style="margin-top: 5px">
                                        <!--  <button type="button" class="btn btn-success btn-custom waves-effect waves-light">Table Product</button>
                                        <button type="button" class="btn btn-warning btn-custom waves-effect waves-light">Table</button> -->
                                         <button class="btn btn-info waves-effect waves-light btn-sm" id="sa-success">Add</button>
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
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $('.counter').counterUp({
                    delay: 100,
                    time: 1200
                });

                $(".knob").knob();

            });
        </script>
      <!--  End jQuery for dashboard -->
	</body>
</html>