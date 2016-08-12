<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
		<meta name="author" content="Coderthemes">

		

		<title>aUbold - Responsive Admin Dashboard Template</title>
		
		<jsp:include page="/WEB-INF/pages/admin/include/head.jsp"></jsp:include>
		<style>
			.table-responsive 
			{
			  min-height: .01%;
			  overflow-x: visible;
			}
			.highlighted{ background: yellow }
			
			/* .colNum{
				width:4%
			} */
			
		
		</style>
		
	</head>

	<body class="fixed-left">
	
		<!-- include model update maincategory -->
		
		
		
		<!-- Begin page -->
		<div id="wrapper" ng-controller="controller_maincategory">
			<jsp:include page="/WEB-INF/pages/admin/include/modal_update_maincategory.jsp"></jsp:include>
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
                        <input class="form-control required" ng-model="category_name" id="main_category" name="mainCategory" type="text">
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
                  
                  <div class="table-responsive">
					<table id="demo-foo-pagination" class="table m-b-0 toggle-arrow-tiny" data-page-size="10">
						<thead>
								<tr>
									<th>Main Category Id</th>
									<th>Main Category Name</th>
									<th data-hide="Describe">Description</th>
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
                        
                        </label>
                        </div>
                        <div class="col-sm-6 text-xs-center text-right">
                          <div class="form-group">
                            <input ng-model="search.$" id="demo-input-search2" type="text" placeholder="Search" class="form-control  input-sm" autocomplete="off">
                          </div>
                        </div>
                      </div>
                    </div>
						<tbody>
											
						<tr ng-repeat="main_cate in meain_category| filter:search:strict">
							
												
							<!-- <td class="col-md-1"​​​ ng-bind-html="main_cate.maincategory_id | highlight:search.$"></td> -->
							
							<td class="col-md-1" ng-bind-html="main_cate.maincategory_id | highlight:search.$">{{main_cate.maincategory_id}}</td>
							<td class="col-md-3" ng-bind-html="main_cate.category_name | highlight:search.$"></td>
							<td  class="col-md-7" ng-bind-html="main_cate.description | highlight:search.$"></td>
									
							<td class="actions col-md-1">							
	                          	 <a href="#" ng-click="getAllData(this)" data-toggle="modal"   data-overlaySpeed="200" data-overlayColor="#36404a" data-animation="fadein" data-plugin="custommodal" data-target="#custom-modal" class="on-default edit-row"><i class="fa fa-pencil"></i></a> &nbsp;&nbsp;
	                          	<a href="#" ng-click="delete_main_category(main_cate.maincategory_id)" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
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
						</div>

                    </div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer">
                    2015 © PhsarKhmer
                </footer>

            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== --
        </div>
        <!-- END wrapper -->
    	<jsp:include page="/WEB-INF/pages/admin/include/headscript.jsp"></jsp:include>
        <script>
        	
        	$(document).ready(function(){

        	});
            var resizefunc = [];  
            
                      
        </script>

       <!-- script -->
	
	</body>
</html>