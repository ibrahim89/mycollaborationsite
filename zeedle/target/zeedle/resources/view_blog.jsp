
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ include file="/WEB-INF/views/index.jsp"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
<!-- <script type="text/javascript" src="resources/js/angular.min.js"></script>
 -->	
<!-- <script src="resources/js/angular.js"></script> -->


</head>
<body ng-app="myApp" ng-controller="getData">
 <div ng-controller="BlogController as blogCtrl" > 
	
				
	<h3>Title:{{blog.blogTitle}}</h3>
	<p>Description: {{blog.blogDesc}}</p>
					
<script src="resources/js/angular.min.js"></script>
	
<script>
var myApp = angular.module('myApp',[]);
myApp.controller('getData', function($scope,$http,$location)
 { 
	//$scope.searchKeyword=location.search.substr(8);
	$scope.blog= ${blogList};
	//alert($scope.productdata);
 
 });
</script>		 

</body>
</html>