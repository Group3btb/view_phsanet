<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Phsanet | Homepage</title>
 <%@ include file="include/head.jsp"  %>
</head>
<body>
      <div id="body">
          <%@ include file="include/header.jsp" %>
             
             
          <div id="content">
	          <div class="container">
	               <div class="row">
	                    <%@ include file="include/category.jsp" %>
	                    <%@ include file="include/slider.jsp" %>
	               </div>
	          </div>     
  
         </div> 
          
         <div class="list-itmes">
             <%@ include file="include/index-contents.jsp" %>
         </div>   
           
        
              <%@ include file="include/footer.jsp" %> 
        
          
        
</div>
<script>
$(function(){
	    $(".category").show();
		$(".category ul.menu").find("li").each(
			function() {
				$(this).hover(
					function() {
					    var cat_id = $(this).attr("cat_id");
						var menu = $(this).find("div[cat_menu_id='"+cat_id+"']");
						menu.show();
						$(this).addClass("hover");
						if(menu.attr("hover")>0) return;
						menu.masonry({itemSelector: 'dl'});
						var menu_height = menu.height();
						if (menu_height < 60) menu.height(80);
						menu_height = menu.height();
						var li_top = $(this).position().top;

						if ((li_top > 70) && (menu_height >= li_top)) $(menu).css("top",-li_top+50);
						if ((li_top > 120) && (menu_height >= li_top)) $(menu).css("top",-li_top+70);
						if ((li_top > 150) && (menu_height >= li_top)) $(menu).css("top",-li_top+90);
						if ((li_top > 200) && (li_top > menu_height)) $(menu).css("top",-li_top+170);
						if ((li_top > 240) && (li_top > menu_height)) $(menu).css("top",-li_top+220);
						if ((li_top > 270) && (li_top > menu_height)) $(menu).css("top",-li_top+265);
						if (li_top > 300 && (li_top > menu_height)) $(menu).css("top",58-menu_height);
						if (li_top > 330 && (li_top > menu_height)) $(menu).css("top",34-menu_height);
						if ((li_top > 40) && (menu_height <= 108)) $(menu).css("top",-10);
						menu.attr("hover",1);
					},
					function() {
						$(this).removeClass("hover");
					    var cat_id = $(this).attr("cat_id");
						$(this).find("div[cat_menu_id='"+cat_id+"']").hide();
					}
				);
			}
		);
		
	});   
</script>
</body>
</html>