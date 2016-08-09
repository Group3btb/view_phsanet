<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <!-- Model -->
        <div id="custom-modal" class="modal-demo" ng-controller="controller_maincategory">
          <button type="button" class="close" onclick="Custombox.close();">
              <span>&times;</span><span class="sr-only">Close</span>
          </button>
          <h4 class="custom-modal-title">Sub Category</h4>
          <div class="custom-modal-text text-left">
               <form role="form">
                        
                        <div class="form-group">
                            <label for="name">Nain Category ID*</label>
                            <input type="text" class="form-control" id="categoryid" ng-model="update_maincategory_id">
                        </div>  
                        <div class="form-group">
                            <label for="name">Nain Category Name*</label>
                            <input type="text" class="form-control" id="categoryname" ng-model="update_maincategory_name">
                        </div>  
                        <div class="form-group">
                            <label for="name">Description*</label>
                            <input type="text" class="form-control" id="description" 
                            ng-model="update_description">
                        </div>     
                  
                        <button type="button" class="btn btn-default onclick="Custombox.close();" ng-click="update_main_category()" waves-effect waves-light"   id="btnokay">Update</button>
                        <button type="button" class="btn btn-danger waves-effect waves-light m-l-10">Cancel</button>
                    </form>
          </div>
          
      </div>
        