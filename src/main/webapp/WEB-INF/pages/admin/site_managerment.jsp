<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html an-app="Myapp">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <title>Ubold - Responsive Admin Dashboard Template</title>
       	<jsp:include page="/WEB-INF/pages/admin/include/head.jsp"></jsp:include>
    </head>


    <body class="fixed-left">

       
        <jsp:include page="/WEB-INF/pages/admin/include/add_site.jsp"></jsp:include>
        <jsp:include page="/WEB-INF/pages/admin/include/form_selector.jsp"></jsp:include>
        <!-- Begin page -->
        <div id="wrapper" ng-controller="controller_web_source">

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
                                <h4 class="page-title">ធ្វើការទាញទិន្ន័យ</h4>
                                <ol class="breadcrumb">
                                    <!-- <li><a href="#">Ubold</a></li>
                                    <li><a href="#">Forms</a></li>
                                    <li class="active">Form Validation</li> -->
                                </ol>
                            </div>
                        </div>
                        
                        <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
								      <h4 class="m-t-0 header-title"><b>Site Managerment</b></h4><br>
                  						<a href="#custom-modal" class="btn btn-default btn-md waves-effect waves-light m-b-30" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="md md-add"></i>Add Site</a>
								</div>
							</div>
						</div>
                        
              <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									        <table id="datatable" class="table table-striped table-bordered table-actions-bar"><!-- <table class="table table-actions-bar m-b-0"> -->
                                            <thead>
                                                <tr>
                                                    <th style="max-width: 20px;">ID</th>
                                                    <th>NAME</th>
                                                    <th>URL</th>
                                                    <th style="width: 30px;">LOGO</th>
                                                    <th>ACTION</th>
                                                    
                                                </tr>
                                            </thead>


                                            <tbody>
                                             
                                             
                                                <tr ng-repeat="web in webs">
        											<td>1</td>                                           
                                                    <td>Integration Specialist</td>
                                                    <td>New York</td>
                                                    <td><img src="/resources/admins/images/products/iphone.jpg" class="thumb-sm pull-left m-r-10" alt=""></td>
                                                    
                                                    <td>
                                                    
                                                    	<a href="#" class="btn btn-info btn-md waves-effect waves-light" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="glyphicon glyphicon-eye-open"></i></a>
                                                    	<a href="#custom-selector" class="btn btn-warning btn-md waves-effect waves-light" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="glyphicon glyphicon-edit"></i></a>
                                                    	<a href="#" class="btn btn-primary btn-md waves-effect waves-light" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="glyphicon glyphicon-pencil"></i></a>
                                                    	<a href="#" class="btn btn-danger btn-md waves-effect "><i class="glyphicon glyphicon-trash"></i></a>
                                                    
                                                    </td>
                                                </tr>         
                                        </table>
                                     <!--  </div>   -->            
                                      <div class="form-group text-right m-b-0" style="margin-top: 5px">
                                        <!--  <button type="button" class="btn btn-success btn-custom waves-effect waves-light">Table Product</button>
                                        <button type="button" class="btn btn-warning btn-custom waves-effect waves-light">Table</button> -->
                                         <button class="btn btn-info waves-effect waves-light btn-sm" id="sa-success">Table Product</button>
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
                    2015 © Ubold.
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
				$('form').parsley();
        $('#datatable').dataTable( );
       
        $("#mybtn").click(function(){

         $("input[type='checkbox']").prop("checked","true");
         })
        $("#mybtn1").click(function(){

         $("input[type='checkbox']").removeAttr("checked");
         })
			});
		</script>


	</body>
</html>