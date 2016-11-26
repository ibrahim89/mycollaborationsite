 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
 <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

<style>
/* .mySlides {display:none;} */
</style>

</style>
<title>Home page</title>


<style type="text/css">
body{background-image: url("resources/images/b6.jpg");
text-color:while;
}
</style>
</head>
<body>
<header>
    <div class="container">
	<div class="row">
		<div class="col-sm-6">
		<div ng-controller="HomeController as homeCtrl">
 
 <h3> Welcome: ${currentUserName} </h3>
</div>
		
			
		</div>
		<div class="col-sm-6 hidden-xs">
		<div ng-controller="UserController as userCtrl">
		<form name="userForm"   ng-submit="userCtrl.login()"  method="POST" >
		<div ng-if="userCtrl.flag != 'edit'">
		     <h3 align=center></h3> 
		  </div>
		  <div ng-if="userCtrl.flag == 'edit'">
		     <h3> Update User for ID: {{ userCtrl.user.id }} </h3> 
		  </div>
			<div class="row">
				<div class="col-sm-5">
					  <div class="form-group" >
					    <input type="text" name="name" ng-model="userCtrl.user.name" class="form-control" id="inputSuccess" placeholder="Username">
					    <div class="login-bottom-text checkbox hidden-sm">
						    <label>
						      <input type="checkbox" id="">
						      Keep me sign in
						    </label>
						  </div>
					  </div>
				</div>	
				<div class="col-sm-5">
					 <div class="form-group">
					    <input type="password" name="password" ng-model="userCtrl.user.password" class="form-control" id="inputSuccess" placeholder="Password">
					 </div>
				</div>
				<div class="col-sm-2">
					 <div class="form-group">
					    <input type="submit"  ng-click="userCtrl.login()" value="login"  class="btn btn-success btn-header-login">
					  </div>
				</div>
			</div>	
			</form>
			</div>
		</div>
	</div>
	</div>

 <div id="wrapper">
   </header>
<div class="container">
		<div class="row">

			<div class="col-sm-8">
				<div class="w3-container">
				<br>
				
</div>

 
</div>
</div>
			<!-- REGISTERATION PAGE -->
			<div class="col-sm-6">
				 <article class="container">
  <div ng-controller="UserController as userCtrl">
		
			 <div class="col-sm-4">
				<div class="">
				
				<h3 style="color:white;"><i class="fa fa-shield"></i> Register now</h3>
			  	<hr>
				<div class="form-group">
				  <label  style="color:white;" class="control-label" for="">Name</label>
				  <input type="text" class="form-control" name="name" placeholder="Name" ng-model="userCtrl.user.name" required/>
				</div>
				<div class="form-group">
				  <label style="color:white;" class="control-label" for="">Address</label>
				  <input type="text" class="form-control" name="address" ng-model="userCtrl.user.address" required/> 
				</div>
				<div class="form-group">
				<div class="col-sm-6 ">
				  <label style="color:white;" class="control-label" for="">Mobile</label>
				  <input type="text" class="form-control" name="mobile" ng-model="userCtrl.user.mobile" required/> 
				</div>
			
				<div class="form-group">
				<div class="col-sm-6 ">
				  <label style="color:white;" class="control-label" for="">Email</label>
				   <input type="text" class="form-control" name="email" ng-model="userCtrl.user.email" required/> 
				</div>
			  </div>
			  
			  	<div class="form-group">
				 <label style="color:white;" class="control-label" for="">Password</label>
				  <input type="password" class="form-control" name="password" ng-model="userCtrl.user.password" required/> 
				</div>

				
		      				 
				<div style="height:10px;"></div>
				<div class="form-group">
				  <label class="control-label" for=""></label>
				  <input  type="submit" class="btn btn-success" ng-click="userCtrl.createUser()" value="Submit"/>
				  
				</div>	 

				  </div>
			</div>
			</div>
			
		</div>
</article> 
			
			</div><!-- HERE REGISTERATION PAGE IS ENDED -->
			
			
			
			
			
			
			
			
			
			</div>
		</div>






<hr>
</body>
 

</html>