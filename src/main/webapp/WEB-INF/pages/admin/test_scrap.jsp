<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="Myapp">
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
        <div id="wrapper" ng-controller="controller_test_scrap">

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
                                            
                  <form  data-parsley-validate novalidate>
                  
                     <div class="form-group">
                            <!-- <label for="name">SITE NAME</label>                    
                            <select ng-change="webSiteChange(web)" ng-model="web" class="form-control">   
                              <option >-selected site-</option>
                              <option ng-repeat="web in webs" ng-value="web">
                                {{web.website}}
                              </option> -->
                            <label for="name">SITE NAME</label>
                                <select class="form-control"
                                      ng-model="web" 
                                      ng-change="webSiteChange(web)" 
                                      data-ng-options="web as web.website for web in webs">
                                      <option value="">---selected site---</option>
                                </select>
                        </div> 
                        
                        <div class="form-group">
                            <label for="name">SUB CATEGORY</label>                    
                            <select ng-change="subcategoryChange(sub)"
                                    ng-model="sub" class="form-control"
                                     data-ng-options="sub as sub.subcategory_name for sub in subs"
                                    >  
                                    <option value="">---selected subcategory---</option>
                            </select>
                        </div> 

                    <div class="form-group">
                      <label for="userName">URL Wedsite*</label>
                      <input ng-model="test_url" type="text" name="nick" parsley-trigger="change" required placeholder="Enter URL Wedsite" class="form-control" id="url_wedsite">
                    </div>
                    <div class="form-group">
                      <label for="row_selector">Row Selector*</label>
                      <input ng-model="test_row" type="text" parsley-trigger="change" required placeholder="Enter Row Selector" class="form-control" id="row_selector">
                    </div>
                    <div class="form-group">
                      <label for="selector_product_name">Selector ឈ្មោះទំនិញ</label>
                      <input  ng-model="test_name"  type="text" placeholder="Enter Selector ឈ្មោះទំនិញ" required class="form-control">
                    </div>

                  <!--   <div class="form-group">
                      <label for="selector_product_name">Selector Title</label>
                      <input id="selector_title" type="text" placeholder="Enter Selector Title" required class="form-control">
                    </div> -->

                    <div class="form-group">
                      <label for="selector_price">Selector តម្លៃ</label>
                      <input  ng-model="test_price" type="text" required placeholder="Enter Selector តម្លៃ" class="form-control" id="selector_price">
                    </div>
                    <div class="form-group">
                      <label for="passWord2">Selector Image</label>
                      <input  ng-model="test_image" type="text" required placeholder="Enter Selector Image" class="form-control" id="selector_image">
                    </div>
                    <div class="form-group">
                      <label for="passWord2">Selector Descride</label>
                      <input ng-model="test_description" type="text" placeholder="Enter Selector Descride" class="form-control" id="selector_descride">
                    </div>
                     
                    <div class="form-group text-right m-b-0">
                      <button  ng-click="test_scrap_product()"  class="btn btn-primary waves-effect waves-light" type="submit">
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
                                                    <th>WEBSITE</th>
                                                    <th>SUBCATEGORY</th>
                                                    <th>SCRAP URL</th>
                                                    <th>ALL SCRAP</th>
                                                    <th>ACTION</th>

                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr ng-repeat="pro in scrap_products">
                                                   
                                                   <td><span data-plugin="peity-bar" data-colors="#5fbeaa,#5fbeaa" data-width="80" data-height="30">{{pro.product_name}}</span></td> 
                                                    <td>{{pro.price}}</td>
                                                    
                                                    
                                                    <td><img src={{pro.product_image}} class="thumb-sm pull-left m-r-5" alt=""</td>
                                                    <td>{{scrap.url}}</td>
                                                    <td></td>
                                                    <td style="text-align: center">
                                                    
                                                        <a href="#"  class="btn btn-info btn-md waves-effect waves-light" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="glyphicon glyphicon-eye-open"></i></a>

                                                        <a href="javascript:" ng-click="getData(this)" class="btn btn-primary btn-md waves-effect waves-light call-modal"><i class="glyphicon glyphicon-pencil"></i></a>

                                                        <a href="#" ng-click="delete_web_scrap(scrap.scrap_id)" class="btn btn-danger btn-md waves-effect " ng-click="" ><i class="glyphicon glyphicon-trash"></i></a>
                                                    
                                                    </td>
                                                   
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
                    2015 © Ubold.
                </footer>

            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->
		    <jsp:include page="/WEB-INF/pages/admin/include/headscript.jsp"></jsp:include>
        <script src="/resources/admins/javascripts/test_scrap.js"></script>
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