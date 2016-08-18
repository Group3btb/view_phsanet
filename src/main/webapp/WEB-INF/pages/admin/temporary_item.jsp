<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="Myapp">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <title>Ubold - Responsive Admin Dashboard Template</title>

        <jsp:include page="/WEB-INF/pages/admin/include/head.jsp"></jsp:include>

         <!--venobox lightbox-->
        
        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        
    </head>


    <body class="fixed-left">
        
        <!-- Begin page -->
        <div id="wrapper" ng-controller="controller_temporary_item">

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
								<h4 class="page-title">Products</h4>
								<ol class="breadcrumb">
									<li>
										<a href="#">Ubold</a>
									</li>
									<li class="active">
										Products
									</li>
								</ol>
							</div>
						</div>

                        <!-- SECTION FILTER
                        ================================================== -->
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 ">
                                <div class="portfolioFilter">
                                    <a href="#" data-filter="*" class="current">All</a>
                                    <a href="#" data-filter=".mobiles">Mobiles</a>
                                    <a href="#" data-filter=".tablets">Tablets</a>
                                    <a href="#" data-filter=".desktops">Desktops</a>
                                    <a href="#" data-filter=".other">Other</a>
                                </div>
                            </div>
                        </div>

                        <div class="row port">
                            <div class="portfolioContainer m-b-15">
                                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/1.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/1.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Samsung Gallaxy</a> </h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 other">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/2.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/2.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Branded camera A1254</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-half-o" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/3.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/3.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Samsung Gallaxy</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 desktops">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/4.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/4.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Apple iMac 27"</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/5.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/5.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Sony xperia Aqua M4</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 other">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/6.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/6.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Branded headphone UB07</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-half-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 tablets">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/7.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/7.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Apple iPad</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 desktops">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/8.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/8.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Branded Laptop</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/1.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/1.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Samsung Gallaxy</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 other">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/2.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/2.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Branded camera A1254</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-half-o" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/3.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/3.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Samsung Gallaxy</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                </ul>
                                            </div>
                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-lg-3 col-md-4 desktops">
                                    <div class="product-list-box thumb">
                                        <a href="assets/images/products/big/4.jpg" class="image-popup" title="Screenshot-1">
                                            <img src="assets/images/products/big/4.jpg" class="thumb-img" alt="work-thumbnail">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                                            <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                                        </div>

                                        <div class="detail">
                                            <h4 class="m-t-0 m-b-5"><a href="" class="text-dark">Apple iMac 27"</a></h4>
                                            <div class="rating">
                                                <ul class="list-inline">
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star" href=""></a></li>
                                                    <li><a class="fa fa-star-o" href=""></a></li>
                                                </ul>
                                            </div>

                                            <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>

                                        </div>
                                    </div>
                                </div>




                            </div>
                        </div> <!-- End row -->




                    </div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer text-right">
                    2015 © Ubold.
                </footer>

            </div>
            
            
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <div class="side-bar right-bar nicescroll">
                <h4 class="text-center">Chat</h4>
                <div class="contact-list nicescroll">
                    <ul class="list-group contacts-list">
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-1.jpg" alt="">
                                </div>
                                <span class="name">Chadengle</span>
                                <i class="fa fa-circle online"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-2.jpg" alt="">
                                </div>
                                <span class="name">Tomaslau</span>
                                <i class="fa fa-circle online"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-3.jpg" alt="">
                                </div>
                                <span class="name">Stillnotdavid</span>
                                <i class="fa fa-circle online"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-4.jpg" alt="">
                                </div>
                                <span class="name">Kurafire</span>
                                <i class="fa fa-circle online"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-5.jpg" alt="">
                                </div>
                                <span class="name">Shahedk</span>
                                <i class="fa fa-circle away"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-6.jpg" alt="">
                                </div>
                                <span class="name">Adhamdannaway</span>
                                <i class="fa fa-circle away"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-7.jpg" alt="">
                                </div>
                                <span class="name">Ok</span>
                                <i class="fa fa-circle away"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-8.jpg" alt="">
                                </div>
                                <span class="name">Arashasghari</span>
                                <i class="fa fa-circle offline"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-9.jpg" alt="">
                                </div>
                                <span class="name">Joshaustin</span>
                                <i class="fa fa-circle offline"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                        <li class="list-group-item">
                            <a href="#">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-10.jpg" alt="">
                                </div>
                                <span class="name">Sortino</span>
                                <i class="fa fa-circle offline"></i>
                            </a>
                            <span class="clearfix"></span>
                        </li>
                    </ul>  
                </div>
            </div>
            <!-- /Right-bar -->

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
            $(window).load(function(){
                var $container = $('.portfolioContainer');
                $container.isotope({
                    filter: '*',
                    animationOptions: {
                        duration: 750,
                        easing: 'linear',
                        queue: false
                    }
                });

                $('.portfolioFilter a').click(function(){
                    $('.portfolioFilter .current').removeClass('current');
                    $(this).addClass('current');

                    var selector = $(this).attr('data-filter');
                    $container.isotope({
                        filter: selector,
                        animationOptions: {
                            duration: 750,
                            easing: 'linear',
                            queue: false
                        }
                    });
                    return false;
                });
            });
            $(document).ready(function() {
                $('.image-popup').magnificPopup({
                    type: 'image',
                    closeOnContentClick: true,
                    mainClass: 'mfp-fade',
                    gallery: {
                        enabled: true,
                        navigateByImgClick: true,
                        preload: [0,1] // Will preload 0 - before current, and 1 after the current image
                    }
                });
            });
        </script>


    </body>
</html>