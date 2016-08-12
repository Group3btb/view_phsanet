<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <!-- Model -->
        <div id="custom-modal" class="modal-demo">
          <button type="button" class="close" onclick="Custombox.close();">
              <span>&times;</span><span class="sr-only">Close</span>
          </button>
          <h4 class="custom-modal-title">Sub Category</h4>
          <div class="custom-modal-text text-left">
               <form role="form">
                        <div class="form-group">
                            <label for="name">search Category*</label>
                            <input type="text" class="form-control" id="searchcategory" placeholder="Search">
                        </div> 
                        <div class="form-group">
                             <label for="name">Category Name*</label>
                              <select id="categoryname" class="form-control">
                                <option>A</option>
                                <option>B</option>
                                <option>C</option>
                                <option>D</option>
                                <option>E</option>
                                <option>F</option>
                              </select>
                        </div>
                        <div class="form-group">
                            <label for="name">Category ID*</label>
                            <input type="text" class="form-control" id="categoryid" placeholder="Category ID">
                        </div>     
                  
                        <button type="button" class="btn btn-default waves-effect waves-light"  onclick="Custombox.close();" id="btnokay">Okay</button>
                        <button type="button" class="btn btn-danger waves-effect waves-light m-l-10">Cancel</button>
                    </form>
          </div>
          <script type="text/javascript">
                      //var jq = $.noConflict();
                      $(document).ready(function(){
                          $("#btnokay").click(function(){
                            alert("hello");
                          });
                      });
          </script>
      </div>