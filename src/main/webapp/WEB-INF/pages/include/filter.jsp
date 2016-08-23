
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="filter-box">
	<div class="filter-title">
		<i class="fa fa-filter"></i><span> Filter</span>
	</div>
	<div class="filter-items">
	    <span>Web Source</span> 
		<select class="form-control" ng-model="web_select">
			<option value="0">All</option>
			<option ng-repeat="items in web">{{items.website}}</option>
		</select>
	</div>
</div>
