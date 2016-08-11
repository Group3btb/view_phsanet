
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="main-catagory">
	<div class="container">
		<div class="row">
		    <%@ include file="category.jsp" %>
			<div class="col-sm-10 col-md-10 col-lg-10" style="padding-left:9px;">
				<div class="filter-box">
					<div class="links col-sm-5"><i class="fa fa-map-marker"></i> ទីតាំង​​:ផលិតផលគ្រប់ប្រភេទ</div>
					<div class="filter col-sm-7 form-inline">

						<span>ផលិតផលតាមតម្លៃ</span> ​​​<input type="text"> <input
							type="text"> <span>ផលិតផលតាមប្រភព</span> <select
							class="form-control">
							<option>ទាំងអស់</option>
						</select>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
 $(window).bind('scroll', function () {
    if ($(window).scrollTop() > 300) {
        $('.main-catagory').addClass('fixed');
    } else {
        $('.main-catagory').removeClass('fixed');
    }
}); 
 

</script>