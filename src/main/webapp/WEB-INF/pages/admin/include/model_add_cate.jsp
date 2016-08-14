<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <!-- Model -->
        <div id="add_cate_model" class="modal-demo">
          <button type="button" class="close" onclick="Custombox.close();">
              <span>&times;</span><span class="sr-only">Close</span>
          </button>
          <h4 class="custom-modal-title">Add New Category</h4>
          <div class="custom-modal-text text-left">
               <form role="form">
                        <div class="form-group">
                            <label for="name">Category Name</label>
                            <input ng-model="cate_name" type="text" class="form-control" id="cate_name" placeholder="Enter site name">
                        </div> 
                        
                        <div class="form-group">
                            <label for="name">Main Category</label>
                            <select ng-change="changeCate(maincate)" ng-model="main_cate" class="form-control">
							    <option selected>---Select Main Category---</option>
							    <option ng-repeat="maincate in maincates" ng-value="maincate.maincategory_id">{{maincate.category_name}}</option>
							</select>
                        </div>  
                        <div class="form-group">
                            <label for="name">Description</label>
                            <input ng-model="cate_desc" type="text" class="form-control" id="cate_desc" placeholder="Enter Description">
                        </div>  
                        <button ng-click="addCate()" type="button" class="btn btn-default waves-effect waves-light"  id="btnokay">Add</button>
                        <button type="button"  onclick="Custombox.close();" class="btn btn-danger waves-effect waves-light m-l-10">Close</button>
                    </form>
          </div>
      </div>
      
      
      