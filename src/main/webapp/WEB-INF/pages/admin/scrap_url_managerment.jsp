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
       	
    </head>


    <body class="fixed-left">

       
        <!-- Begin page -->	
        <div id="wrapper" ng-controller="controller_scrap">

            <jsp:include page="/WEB-INF/pages/admin/include/modal_url.jsp"></jsp:include>
           
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

                        
                        
                        <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
								      <h4 class="m-t-0 header-title"><b>Site Managerment</b></h4><br>
                  						<a href="#custom-url" ng-click = "getData('new')" class="btn btn-default btn-md waves-effect waves-light m-b-30" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="md md-add"></i>Add Site</a>
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

                                                <tr ng-repeat="scrap in scraps">
                                                   
                                                   <td><span data-plugin="peity-bar" data-colors="#5fbeaa,#5fbeaa" data-width="80" data-height="30">{{scrap.scrap_id}}</span></td> 
                                                    <td><img src={{scrap.web_source.logo}} class="thumb-sm pull-left m-r-5" alt="">{{scrap.web_source.website}}
                                                    </td>
                                                    
                                                    <td>{{scrap.subcategory.subcategory_name}}</td>
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

        <script>
            var resizefunc = [];
        </script>
		<script src="/resources/admins/javascripts/scrap.js"></script>
		<jsp:include page="/WEB-INF/pages/admin/include/headscript.jsp"></jsp:include>
       
        <script type="text/javascript">
			$(document).ready(function() {
                 $(document).on('click', '.call-modal', function(){
                    Custombox.open({
                        target: '#custom-url',
                        effect: 'fadein',
                        overlaySpeed: '200',
                        overlayColor: '#36404a'
                    });
                });
			});// end method ready
		</script>


	</body>
</html>


