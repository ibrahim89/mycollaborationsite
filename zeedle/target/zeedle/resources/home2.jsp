<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>2ndHOME</title>

</head>

<body>
	<div ng-controller="HomeController as homeCtrl">
 <div ng-hide="currentUser==''">
  
   
</div>
</div>
	</div>
			<div class="logo"><div ng-controller="HomeController as homeCtrl">
 
 <h3> Welcome: ${currentUserName} </h3>
</div></div>
		</div>	
		
</body>
</html>