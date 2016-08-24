
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="filter-box">
	<div class="filter-title">
		<i class="fa fa-filter"></i><span> Filter</span>
	</div>
	<div class="filter-items">
	    <span>Web Source</span> 
		<select class="form-control" ng-model="ws" ng-options="ws.website as ws.website for ws in web  ">
			<option value="">All</option>
		</select>
	</div>
</div>
