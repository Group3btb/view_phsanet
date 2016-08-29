<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<div class="container"> 
		<div class='row'>
			<div class='col-md-12'>
				<div class="carousel slide media-carousel" id="media">
					<div class="carousel-inner">
					
						<div class="item  active">
							<div class="row">
								<div class="col-md-2 col-sm-4" ng-repeat="item in web">
									<a class="thumbnail" title="{{item.website}}" target="_blank" href="{{item.url}}"><img src="{{item.logo}}"></a>
								</div>
							</div>
						</div>
						
						

						<!-- <div class="item">
							<div class="row">
								<div class="col-md-2 col-sm-4">
									<a class="thumbnail" href="#"><img alt=""
										src="/resources/views/resourceimg/psc.png"></a>
								</div>
							</div>
						</div> -->

					</div>
					<a data-slide="prev" href="#media" class="left carousel-control">‹</a>
					<a data-slide="next" href="#media" class="right carousel-control">›</a>
				</div>
			</div>
		</div>


	</div>
