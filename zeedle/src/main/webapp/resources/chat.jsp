<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  ng-controller="ChatController" class="container">
<head >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"href="resources/css/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css"/>
<title>Insert title here</title>
</head>
<style>
body{
    background-color:#5DADEC ;
    color: #0000;
</style>
<body>

	<form ng-submit="addMessage()" name="messageForm">
	<label>Enter Message here:</label><input type="text" placeholder="Compose a new message..." ng-model="message" />
	<div class="info">
	<span class="count" ng-bind="max - message.length" ng-class="{danger:message.length>max}">140</span>
	<button ng-disabled="message.length>max || message.length===0">send</button>
	</div>
	<hr>
	<p ng-repeat ="message in messages | orderBy: 'time':true" class="message">
	<time>{{message.time | date: 'HH:mm'}}</time>
	<span ng-class ="{self.message.self}">{{message.message}}</span>
	
	</p>
	</form>
	
	
	
</body>
</html>