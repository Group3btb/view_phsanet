<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="Myapp">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <title>PhsarNet</title>
     
       	<jsp:include page="/WEB-INF/pages/admin/include/chetra_head.jsp"></jsp:include>
        
    </head>


    <body class="fixed-left" ng-cloak>  
    
        <!-- Begin page -->
        <div id="wrapper" ng-controller="controller_test_selector">

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
                                <h4 class="page-title">Testing Seletor</h4>
                                <ol class="breadcrumb">
                                    
                                </ol>
                            </div>
                        </div>
                        
                        <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
								      <h4 class="m-t-0 header-title"><b>Test Selector of website</b></h4>
                  <p class="text-muted font-13 m-b-30">
                                      Please input selector of product.
                                  </p>
                                            
                  <form  data-parsley-validate novalidate>
                  
    
                    <div class="form-group">
                      <label for="userName">URL Wedsite</label>
                      <input ng-model="test_url" type="text" name="nick" parsley-trigger="change" required placeholder="Enter URL Wedsite" class="form-control" id="url_wedsite">
                    </div>
                    <div class="form-group">
                      <label for="row_selector">Row Selector*</label>
                      <input ng-model="test_row" type="text" parsley-trigger="change" required placeholder="Enter Row Selector" class="form-control" id="row_selector">
                    </div>
                    <div class="form-group">
                      <label for="selector_product_name">Product Name Selector</label>
                      <input  ng-model="test_name"  type="text" placeholder="Enter Product Name Selector" required class="form-control">
                    </div>

                    <div class="form-group">
                      <label for="selector_price">Price Selector</label>
                      <input  ng-model="test_price" type="text" required placeholder="Enter Price Selector" class="form-control" id="selector_price">
                    </div>
                    <div class="form-group">
                      <label for="passWord2">Image Selector</label>
                      <input  ng-model="test_image" type="text" required placeholder="Enter Selector Image" class="form-control" id="selector_image">
                    </div>
                    <div class="form-group">
                      <label for="passWord2">Selector Description</label>
                      <input ng-model="test_description" type="text" placeholder="Enter Selector Descride" class="form-control" id="selector_descride">
                    </div>
                     
                    <div class="form-group text-right m-b-0">
                      <button  ng-click="test_selector()"  class="btn btn-primary waves-effect waves-light" type="submit">
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
                    
                          <!-- input table  -->
                      <div class="table-responsive">
                  <div class="col-sm-6 text-xs-center text-right pull-right">

                    <input id="demo-input-search2" type="text"
                      placeholder="Search" class="form-control  input-sm"
                      autocomplete="off">

                  </div>
                  <table class="table table-actions-bar m-b-0">
                                            <thead>
                                                <tr>
                                               
                                                    <th style=" width: 50px">ID</th>
                                                    <th>PRODUCT NAME</th>
                                                    <th>PRICE</th>
                                                    <th>IMAGE</th>
                                                    <th>DESCRIPTION</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr ng-repeat="pro in scrap_products">
                                                   <td>{{$index+1}}</td>
                                                   <td><span data-plugin="peity-bar" data-colors="#5fbeaa,#5fbeaa" data-width="80" data-height="30">{{pro.product_name}}</span></td> 
                                                    <td>{{pro.price}}</td>
                                                    
                                                    <td><img src={{pro.product_image}} class="thumb-sm pull-left m-r-5" alt=""></td>
                                                    <td>{{pro.description}}</td>
                                                   
                                                </tr>            

                                            </tbody>
                                        </table>
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
		    <jsp:include page="/WEB-INF/pages/admin/include/headscript.jsp"></jsp:include>
        <script src="/resources/admins/javascripts/test_selector.js"></script>
        <script>
            var resizefunc = [];
        </script>

        <script type="text/javascript">
			$(document).ready(function() {
				
			});
		</script>


	</body>
</html>