<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        
        <title>Test Scrap</title>
        <jsp:include page="/WEB-INF/pages/admin/include/head.jsp"></jsp:include>
        
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
								      <h4 class="m-t-0 header-title"><b>Product full information</b></h4>
                  <p class="text-muted font-13 m-b-30">
                                      Your awesome text goes here.
                                  </p>
                                            
                  <form action="#" data-parsley-validate novalidate>
                    <div class="form-group">
                      <label for="userName">URL Wedsite*</label>
                      <input type="text" name="nick" parsley-trigger="change" required placeholder="Enter URL Wedsite" class="form-control" id="url_wedsite">
                    </div>
                    <div class="form-group">
                      <label for="row_selector">Row Selector*</label>
                      <input type="text" name="email" parsley-trigger="change" required placeholder="Enter Row Selector" class="form-control" id="row_selector">
                    </div>
                    <div class="form-group">
                      <label for="selector_product_name">Selector ឈ្មោះទំនិញ</label>
                      <input id="selector_product_name" type="text" placeholder="Enter Selector ឈ្មោះទំនិញ" required class="form-control">
                    </div>

                  <!--   <div class="form-group">
                      <label for="selector_product_name">Selector Title</label>
                      <input id="selector_title" type="text" placeholder="Enter Selector Title" required class="form-control">
                    </div> -->

                    <div class="form-group">
                      <label for="selector_price">Selector តម្លៃ</label>
                      <input  type="text" required placeholder="Enter Selector តម្លៃ" class="form-control" id="selector_price">
                    </div>
                    <div class="form-group">
                      <label for="passWord2">Selector Descride</label>
                      <input type="text" required placeholder="Enter Selector Descride" class="form-control" id="selector_descride">
                    </div>
                     <div class="form-group">
                      <label for="passWord2">Selector Image</label>
                      <input  type="text" required placeholder="Enter Selector Image" class="form-control" id="selector_image">
                    </div>
                    <div class="form-group text-right m-b-0">
                      <button class="btn btn-primary waves-effect waves-light" type="submit">
                        Submit
                      </button>
                      <button type="reset" class="btn btn-default waves-effect waves-light m-l-5">
                        Cancel
                      </button>
                    </div>
                    
                  </form>
								</div>
							</div>
						</div>
                        
              <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									 
									 <!-- input table -->      
                                             
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
		<jsp:include page="/WEB-INF/pages/admin/include/headscript.jsp"></jsp:include>
       
        <script>
            var resizefunc = [];
        </script>

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