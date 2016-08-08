<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-sm-2 col-lg-2">
	<div class="categories">
		<nav class="home-nav-layout">

			<div class="all-category">

				<div class="title">
					<h3>
						<a href="">All Categories</a>
					</h3>
					<i class="arrow"></i>
				</div>
				<div class="category">
					<ul class="menu">
						<li class="odd">
							<div class="class">
								<h4>
									<a href=""><span>Clothing</span></a>
								</h4>
								<span class="arrow"></span>
							</div>

							<div class="sub-class">
								<dl>
									<dt>
										<h3>
											<a href="">Women's Clothing</a>
										</h3>
									</dt>

									<dd class="goods-class">
										<a href="">Tops</a> <a href="">Bottoms</a> <a href="">Dresses</a>
										<a href="">Jumpsuits&Rompers</a> <a href="">Swimwears</a> <a
											href="">Wedding&Events</a> <a href="">Intimates</a> <a
											href="">Two-piece Set</a> <a href="">Mid Age</a>
									</dd>
								</dl>

								<dl>
									<dt>
										<h3>
											<a href="">Men's Clothing</a>
										</h3>
									</dt>
									<dd class="goods-class">
										<a href="">Tops</a> <a href="">Bottoms</a> <a href="">Underwear</a>
										<a href="">Sports Uniform</a> <a href="">Socks</a> <a href="">Ties</a>
										<a href="">Suits</a>
									</dd>
								</dl>

								<dl>
									<dt>
										<h3>
											<a href="">Couples Dress</a>
										</h3>
									</dt>
									<dd class="goods-class">
										<a href="">Tops</a> <a href="">Clothing Sets</a>
									</dd>
								</dl>
							</div>
						</li>
					</ul>


					<ul class="menu">
						<li class="odd">
							<div class="class">
								<h4>
									<a href=""><span>Clothing</span></a>
								</h4>
								<span class="arrow"></span>
							</div>

							<div class="sub-class">
								<dl>
									<dt>
										<h3>
											<a href="">Women's Clothing</a>
										</h3>
									</dt>

									<dd class="goods-class">
										<a href="">Tops</a> <a href="">Bottoms</a> <a href="">Dresses</a>
										<a href="">Jumpsuits&Rompers</a> <a href="">Swimwears</a> <a
											href="">Wedding&Events</a> <a href="">Intimates</a> <a
											href="">Two-piece Set</a> <a href="">Mid Age</a>
									</dd>
								</dl>

								<dl>
									<dt>
										<h3>
											<a href="">Men's Clothing</a>
										</h3>
									</dt>
									<dd class="goods-class">
										<a href="">Tops</a> <a href="">Bottoms</a> <a href="">Underwear</a>
										<a href="">Sports Uniform</a> <a href="">Socks</a> <a href="">Ties</a>
										<a href="">Suits</a>
									</dd>
								</dl>

								<dl>
									<dt>
										<h3>
											<a href="">Couples Dress</a>
										</h3>
									</dt>
									<dd class="goods-class">
										<a href="">Tops</a> <a href="">Clothing Sets</a>
									</dd>
								</dl>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>

	</div>
</div>


<script type="text/javascript">
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
