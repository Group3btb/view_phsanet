<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
		<meta name="author" content="Coderthemes">

		<link rel="shortcut icon" href="/resources/images/favicon_1.ico">

		<title>aUbold - Responsive Admin Dashboard Template</title>
		<!--Footable-->
		<link href="/resources/plugins/footable/css/footable.core.css" rel="stylesheet">
		<link href="/resources/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
		
		<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/resources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="/resources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="/resources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="/resources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="/resources/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="/resources/js/modernizr.min.js"></script>
		<script src="/resources/js/angular.min.js"></script>
		<script src="/resources/javascripts/main_category.js"></script>
		
	</head>

	<body class="fixed-left">

		<!-- Begin page -->
		<div id="wrapper" ng-controller="controller_maincategory">

          <!--  input top bar -->
			
		  <jsp:include page="/WEB-INF/pages/admin/menu/top_bar.jsp"></jsp:include>
	
          <!-- ========== input Left Sidebar Start ========== -->
          
         <jsp:include page="/WEB-INF/pages/admin/menu/left_sidebar_start.jsp"></jsp:include>  
		

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
								<h4 class="page-title">Foo Tables</h4>
								<ol class="breadcrumb">
									<li>
										<a href="#">Ubold</a>
									</li>
									<li>
										<a href="#">Tables</a>
									</li>
									<li class="active">
										Footables
									</li>
								</ol>
							</div>
						</div>
						
						
						
						<div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									<h4 class="m-t-0 header-title"><b>Main Category</b></h4>
									<p class="text-muted m-b-30 font-13">include filtering in your FooTable.</p>

                  <form class="basic-form" action="">
                    <div class="form-group clearfix">
                      <label class="col-lg-2 control-label " for="mainCategory">Main category</label>
                      <div class="col-lg-10">
                        <input class="form-control required" ng-model="maincategory_name" id="main_category" name="mainCategory" type="text">
                      </div>
                    </div>
                    <div class="form-group clearfix">
                      <label class="col-lg-2 control-label " for="password"> Description</label>
                      <div class="col-lg-10">
                        <textarea id="main_description" ng-model="descriptions" name="main_description" class="required form-control"></textarea> 
                      </div>
                    </div>
                    <div class="form-group text-right m-b-0">
                      <button ng-click="save_main_category()" class="btn btn-primary waves-effect waves-light" type="button" id="main_save" >Save</button>
                      <button type="reset" class="btn btn-default waves-effect waves-light m-l-5" id="main_cancel">Cancel</button>
                    </div>
                  </form><br>
									<table id="demo-foo-pagination" class="table m-b-0 toggle-arrow-tiny" data-page-size="10">
										<thead>
											<tr>
												<th>Main Category Id</th>
												<th>Main Category Name</th>
												<th data-hide="phone">Describe</th>
												<th>Action</th>
											</tr>
										</thead>
                    <div class="pad-btm form-inline">
                      <div class="row">
                        <div class="col-sm-6 text-xs-center">
                          <label class="form-inline">Show
                            <select id="demo-show-entries" class="form-control input-sm">
                              <option value="10">10</option>
                              <option value="15">15</option>
                              <option value="20">20</option>
                            </select>
                          entries
                        </label>
                        </div>
                        <div class="col-sm-6 text-xs-center text-right">
                          <div class="form-group">
                            <input id="demo-input-search2" type="text" placeholder="Search" class="form-control  input-sm" autocomplete="off">
                          </div>
                        </div>
                      </div>
                    </div>
						<tbody>
											
						<tr ng-repeat="main_cate in meain_category">
							<td>{{main_cate.maincategory_id}}</td>
							<td>{{main_cate.category_name}}</td>
							<td>{{main_cate.description}}</td>
							<td class="actions">
                          	<a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          	<a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        	</td>
                        </tr>
					
						</tbody>
										<tfoot>
											<tr>
												<td colspan="5">
													<div class="text-right">
														<ul class="pagination pagination-split m-t-30 m-b-0"></ul>
													</div>
												</td>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>




                    </div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer">
                    2015 © PhsarKhmer
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
        <script src="/resources/js/jquery.min.js"></script>
        <script src="/resources/js/bootstrap.min.js"></script>
        <script src="/resources/js/detect.js"></script>
        <script src="/resources/js/fastclick.js"></script>
        <script src="/resources/js/jquery.slimscroll.js"></script>
        <script src="/resources/js/jquery.blockUI.js"></script>
        <script src="/resources/js/waves.js"></script>
        <script src="/resources/js/wow.min.js"></script>
        <script src="/resources/js/jquery.nicescroll.js"></script>
        <script src="/resources/js/jquery.scrollTo.min.js"></script>


        <script src="/resources/js/jquery.core.js"></script>
        <script src="/resources/js/jquery.app.js"></script>
        
        <!--FooTable-->
		<script src="/resources/plugins/footable/js/footable.all.min.js"></script>
		
		<script src="/resources/plugins/bootstrap-select/dist/js/bootstrap-select.min.js" type="text/javascript"></script>

		<!--FooTable Example-->
		<script src="/resources/pages/jquery.footable.js"></script>
	
	</body>
</html>