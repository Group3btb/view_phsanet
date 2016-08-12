<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="Cateapp">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <title>PhsarNet</title>
        
       	<jsp:include page="/WEB-INF/pages/admin/include/chetra_head.jsp"></jsp:include>
       	
    </head>


    <body class="fixed-left">

       
        <!-- Begin page -->	
        <div id="wrapper" ng-controller="controller_category">

            <jsp:include page="/WEB-INF/pages/admin/include/model_add_cate.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/pages/admin/include/modal_update_cate.jsp"></jsp:include>

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
								      <h4 class="m-t-0 header-title"><b>Category</b></h4><br>
                  						<a href="#add_cate_model" ng-click="findAllMainCate()" class="btn btn-default btn-md waves-effect waves-light m-b-30" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="md md-add"></i>Add Category</a>
								</div>
							</div>
						</div>
                        
              <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									        <table id="datatable" class="table table-striped table-bordered table-actions-bar"><!-- <table class="table table-actions-bar m-b-0"> -->
                                            <thead>
                                                <tr>
                                                    <th style="max-width: 20px; text-align: center" >ID</th>
                                                    <th style="text-align: center">Category Name</th>
                                                    <th style="text-align: center">Main Category Name</th>
                                                    <th style="text-align: center">ACTION</th>
                                                    
                                                </tr>
                                            </thead>


                                            <tbody>
                                             
                                                <tr ng-repeat="cate in categories">
                                                
        											<td>{{cate.category_id}}</td>                                           
                                                    <td>{{cate.category_name}}<input type="hidden" value="{{cate.description}}"></td>
                                                    <td>{{cate.main_category.category_name}}<input type="hidden" value="{{cate.main_category.main_category_id}}"></td>
                                                    <td style="text-align: center">
                                                    	<a href="#"  class="btn btn-info btn-md waves-effect waves-light" data-animation="fadein" data-plugin="custommodal" data-overlayspeed="200" data-overlaycolor="#36404a"><i class="glyphicon glyphicon-eye-open"></i></a>
                                                    	<a href="javascript:" ng-click="getData(this)" class="btn btn-primary btn-md waves-effect waves-light call-modal_update"><i class="glyphicon glyphicon-pencil"></i></a>
                                                    	<a href="#" id="btnclose" ng-click="deleteCate(cate.category_id)" class="btn btn-danger btn-md waves-effect"><i class="glyphicon glyphicon-trash"></i></a>
                                                    </td>
                                                </tr>   
                                              
                                          
                                        </table>
                                     <!--  </div>   -->            
                                   
										</div>
									</div>
								</div>
							</div>
						</div>
    
    
     

            		</div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer">
                    2016 © PhsarNet.
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
                $('#datatable').dataTable( );
                
                $(document).on('click', '.call-modal_update', function(){
                    Custombox.open({
                        target: '#update_model',
                        effect: 'fadein',
                        overlaySpeed: '200',
                        overlayColor: '#36404a'
                    });
                });
/* 

                 $(document).on('click', '.call-modal1', function(){
                    Custombox.open({
                        target: '#add_cate_model',
                        effect: 'fadein',
                        overlaySpeed: '200',
                        overlayColor: '#36404a'
                    });
                }); */

			});// end method ready
		</script>


	</body>
</html>
