<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
		<meta name="author" content="Coderthemes">

		<link rel="shortcut icon" href="/resources/admins/images/favicon_1.ico">

		<title>PhsarNet</title>
		<!--Footable-->
		<link href="/resources/admins/plugins/footable/css/footable.core.css" rel="stylesheet">
		<link href="/resources/admins/plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />

		<link href="/resources/admins/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/resources/admins/css/core.css" rel="stylesheet" type="text/css" />
        <link href="/resources/admins/css/components.css" rel="stylesheet" type="text/css" />
        <link href="/resources/admins/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="/resources/admins/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="/resources/admins/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="/resources/admins/js/modernizr.min.js"></script>

	</head>

	<body class="fixed-left">

		<!-- Begin page -->
		<div id="wrapper">

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
								<h4 class="page-title">Category</h4>
								<ol class="breadcrumb">
									<li>
										<a href="#">PhsarNet</a>
									</li>
									<li>
										<a href="#">Manage Categories</a>
									</li>
									<li class="active">
                    Category
									</li>
								</ol>
							</div>
						</div>
						
						
						
						<div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									<h4 class="m-t-0 header-title"><b>Category</b></h4>
                  <form class="basic-form" action="">
                  <div class="form-group clearfix">
                    <label class="col-lg-2 control-label " for="mainCategory">Categor Name</label>
                    <div class="col-lg-10">
                      <input class="form-control required" id="category_id" name="mainCategory" type="text">
                    </div>
                  </div>
                  <div class="form-group clearfix">
                    <label class="col-lg-2 control-label " for="mainCategory">Main category</label>
                    <div class="col-lg-10">
                      <select class="form-control required" id="select_main_category">
                        <option>Main Category 1</option>
                        <option>Main Category 2</option>
                        <option>Main Category 3</option>
                        </select>
                    </div>
                  </div>
                  <div class="form-group clearfix">
                    <label class="col-lg-2 control-label " for="Category">Description</label>
                    <div class="col-lg-10">
                      <textarea class="form-control required" id="category_description" name="categoryName"></textarea>
                    </div>
                  </div>
                  <div class="form-group text-right m-b-0">
                    <button class="btn btn-primary waves-effect waves-light" type="button" id="category_save">Save</button>
                    <button type="reset" class="btn btn-default waves-effect waves-light m-l-5" id="category_cancel">Cancel</button>
                  </div>
                  </form><br>

									<table id="demo-foo-pagination" class="table m-b-0 toggle-arrow-tiny" data-page-size="5">
                    <thead>
                      <tr>
                        <th data-toggle="true">First Name</th>
                        <th>Last Name</th>
                        <th data-hide="phone">Job Title</th>
                        <th data-hide="phone, tablet">DOB</th>
                        <th data-hide="phone, tablet">Action</th>
                      </tr>
                    </thead>
                    <div class="pad-btm form-inline">
                      <div class="row">
                        <div class="col-sm-6 text-xs-center">
                          <label class="form-inline">Show
                            <select id="demo-show-entries" class="form-control input-sm">
                              <option value="5">5</option>
                              <option value="10">10</option>
                              <option value="15">15</option>
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
                      <tr>
                         <td><img src="/resources/admins/images/products/iphone.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                        <td>Boudreaux</td>
                        <td>Traffic Court Referee</td>
                        <td>22 Jun 1972</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Shona</td>
                        <td>Woldt</td>
                        <td>Airline Transport Pilot</td>
                        <td>3 Oct 1981</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Granville</td>
                        <td>Leonardo</td>
                        <td>Business Services Sales Representative</td>
                        <td>19 Apr 1969</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Easer</td>
                        <td>Dragoo</td>
                        <td>Drywall Stripper</td>
                        <td>13 Dec 1977</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Maple</td>
                        <td>Halladay</td>
                        <td>Aviation Tactical Readiness Officer</td>
                        <td>30 Dec 1991</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Maxine</td>
                        <td><a href="#">Woldt</a></td>
                        <td><a href="#">Business Services Sales Representative</a></td>
                        <td>17 Oct 1987</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Lorraine</td>
                        <td>Mcgaughy</td>
                        <td>Hemodialysis Technician</td>
                        <td>11 Nov 1983</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Lizzee</td>
                        <td><a href="#">Goodlow</a></td>
                        <td>Technical Services Librarian</td>
                        <td>1 Nov 1961</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Judi</td>
                        <td>Badgett</td>
                        <td>Electrical Lineworker</td>
                        <td>23 Jun 1981</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Lauri</td>
                        <td>Hyland</td>
                        <td>Blackjack Supervisor</td>
                        <td>15 Nov 1985</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Isidra</td>
                        <td>Boudreaux</td>
                        <td>Traffic Court Referee</td>
                        <td>22 Jun 1972</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Shona</td>
                        <td>Woldt</td>
                        <td>Airline Transport Pilot</td>
                        <td>3 Oct 1981</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Granville</td>
                        <td>Leonardo</td>
                        <td>Business Services Sales Representative</td>
                        <td>19 Apr 1969</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Easer</td>
                        <td>Dragoo</td>
                        <td>Drywall Stripper</td>
                        <td>13 Dec 1977</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Maple</td>
                        <td>Halladay</td>
                        <td>Aviation Tactical Readiness Officer</td>
                        <td>30 Dec 1991</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Maxine</td>
                        <td><a href="#">Woldt</a></td>
                        <td><a href="#">Business Services Sales Representative</a></td>
                        <td>17 Oct 1987</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Lorraine</td>
                        <td>Mcgaughy</td>
                        <td>Hemodialysis Technician</td>
                        <td>11 Nov 1983</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Lizzee</td>
                        <td><a href="#">Goodlow</a></td>
                        <td>Technical Services Librarian</td>
                        <td>1 Nov 1961</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Judi</td>
                        <td>Badgett</td>
                        <td>Electrical Lineworker</td>
                        <td>23 Jun 1981</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Lauri</td>
                        <td>Hyland</td>
                        <td>Blackjack Supervisor</td>
                        <td>15 Nov 1985</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Isidra</td>
                        <td>Boudreaux</td>
                        <td>Traffic Court Referee</td>
                        <td>22 Jun 1972</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Shona</td>
                        <td>Woldt</td>
                        <td>Airline Transport Pilot</td>
                        <td>3 Oct 1981</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Granville</td>
                        <td>Leonardo</td>
                        <td>Business Services Sales Representative</td>
                        <td>19 Apr 1969</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Easer</td>
                        <td>Dragoo</td>
                        <td>Drywall Stripper</td>
                        <td>13 Dec 1977</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Maple</td>
                        <td>Halladay</td>
                        <td>Aviation Tactical Readiness Officer</td>
                        <td>30 Dec 1991</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Maxine</td>
                        <td><a href="#">Woldt</a></td>
                        <td><a href="#">Business Services Sales Representative</a></td>
                        <td>17 Oct 1987</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Lorraine</td>
                        <td>Mcgaughy</td>
                        <td>Hemodialysis Technician</td>
                        <td>11 Nov 1983</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Lizzee</td>
                        <td><a href="#">Goodlow</a></td>
                        <td>Technical Services Librarian</td>
                        <td>1 Nov 1961</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Judi</td>
                        <td>Badgett</td>
                        <td>Electrical Lineworker</td>
                        <td>23 Jun 1981</td>
                         <td class="actions">
                          <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>Lauri</td>
                        <td>Hyland</td>
                        <td>Blackjack Supervisor</td>
                        <td>15 Nov 1985</td>
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
        <script src="/resources/admins/js/jquery.min.js"></script>
        <script src="/resources/admins/js/bootstrap.min.js"></script>
        <script src="/resources/admins/js/detect.js"></script>
        <script src="/resources/admins/js/fastclick.js"></script>
        <script src="/resources/admins/js/jquery.slimscroll.js"></script>
        <script src="/resources/admins/js/jquery.blockUI.js"></script>
        <script src="/resources/admins/js/waves.js"></script>
        <script src="/resources/admins/js/wow.min.js"></script>
        <script src="/resources/admins/js/jquery.nicescroll.js"></script>
        <script src="/resources/admins/js/jquery.scrollTo.min.js"></script>


        <script src="/resources/admins/js/jquery.core.js"></script>
        <script src="/resources/admins/js/jquery.app.js"></script>
        
        <!--FooTable-->
		<script src="/resources/admins/plugins/footable/js/footable.all.min.js"></script>
		
		<script src="/resources/admins/plugins/bootstrap-select/dist/js/bootstrap-select.min.js" type="text/javascript"></script>

		<!--FooTable Example-->
		<script src="/resources/admins/pages/jquery.footable.js"></script>
	
	</body>
</html>