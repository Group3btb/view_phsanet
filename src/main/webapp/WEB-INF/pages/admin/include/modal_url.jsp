<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <!-- Model -->
        <div id="custom-url" class="modal-demo">
          <button type="button" class="close" onclick="Custombox.close();">
              <span>&times;</span><span class="sr-only">Close</span>
          </button>
          <h4 class="custom-modal-title" ng-bind="title_scrap"></h4>
          <div class="custom-modal-text text-left">
               <form role="form">
                        <div class="form-group">
                            <label for="name">SITE NAME</label>                    
                            <select ng-modal="select_site" class="form-control">   
                            	<option>---selected site---</option>
                            	<optgroup class="form-group"></optgroup>
                            	<option ng-repeat="web in webs">
                            		{{web.website}}
                            	</option>
                            	                                      
                            	
                            </select>
                        </div> 
                        
                        <div class="form-group">
                            <label for="name">SUB CATEGORY</label>                    
                            <select ng-modal="select_category" class="form-control">  
                            	<option>---selected subcategory---</option>
                            	<optgroup class="form-group"></optgroup>
                            	<option >
                            		
                            	</option>
                            	                                        
                            	
                            </select>
                        </div> 
                        
                        <div class="form-group">
                            <label for="name">URL</label>
                            <input ng-model="scrap_url" type="text" class="form-control" id="categoryid" placeholder="Enter site url">
                        </div>   
                         
                  
                        <button ng-click="test()"  ng-bind="" type="button" class="btn btn-default waves-effect waves-light"  onclick="Custombox.close();" id="btnokay">Okay</button>
                        <button type="button"  onclick="Custombox.close();" class="btn btn-danger waves-effect waves-light m-l-10">Close</button>
                    </form>
          </div>
      </div>
      
      