<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
html4/loose.dtd">

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
        <div id="wrapper" ng-controller="controller_scraping">

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
                                <h4 class="page-title">Scraping Managerments</h4>
                                <ol class="breadcrumb">
                                    
                                </ol>
                            </div>
                        </div>
                        
                        <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
								      <h4 class="m-t-0 header-title"><b>Scraping website</b></h4>
                  <p class="text-muted font-13 m-b-30">
                                      Please selected of website
                                  </p>
                
    				<div class="form-group text-right m-b-0">
                      <button  ng-click="start_scrping()"  class="btn btn-primary waves-effect waves-light" type="submit">
                        Scrap All
                    </button>
                    <div class="form-group">
                      <br>
                         <select class="form-control"
                                      ng-model="web_selected" 
                                      ng-change="web_Struture(web_selected)" 
                                      data-ng-options="scrap as scrap.web_source.website for scrap in scraps">
                                      <option value="">---selected site---</option>
                          </select>
                    </div>
                    
                      <button ng-click="start_scraping()" class="btn btn-default waves-effect waves-light m-l-5">
                         Scrap 
                      </button>
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
    <script src="/resources/admins/javascripts/scraping_manegerment.js"></script>
        <script>
            var resizefunc = [];
        </script>

        <script type="text/javascript">
			$(document).ready(function() {
				
			});
		</script>


	</body>
</html>