<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="Myapp">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
		<meta name="author" content="Coderthemes">

		<link rel="shortcut icon" href="/resources/admins/images/favicon_1.ico">

		<title>PhsarNet</title>
		
    <jsp:include page="/WEB-INF/pages/admin/include/head.jsp"></jsp:include>

	</head>

	<body class="fixed-left">

		<!-- Begin page -->
		<div id="wrapper"  ng-controller="controller_category">

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
                    <button ng-click="findAll_category()" class="btn btn-primary waves-effect waves-light" type="button" id="category_save">Save</button>
                    <button type="reset" class="btn btn-default waves-effect waves-light m-l-5" id="category_cancel">Cancel</button>
                  </div>
                  </form><br>

									<table id="demo-foo-pagination" class="table m-b-0 toggle-arrow-tiny" data-page-size="5">
                    <thead>
                      <tr>
                        <th data-toggle="true">Category ID</th>
                        <th>Category Name</th>
                        <th data-hide="phone">Description</th>
                        <th data-hide="phone">Maincategory Name</th>
                        <th data-hide="phone">Action</th>
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
                      <tr ng-repeat="cate in category">
                        <td>{{cate.category_id}}</td>
                        <td>{{cate.category_name}}</td>
                        <td>{{cate.description}}</td>
                        <td>{{cate.main_category.category_name}}</td>
                         <td class="actions">
                          <a href="#" on-click=" " class="on-default edit-row"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;
                          <a href="#" on-click="delete_category(cate.category_id)" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
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

       
	
	</body>
</html>