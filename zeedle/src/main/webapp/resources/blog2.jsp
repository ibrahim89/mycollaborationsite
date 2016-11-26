<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
    
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BLOG PAGE</title>
<style>

</style>
<style type="text/css">
.msg-val {
	color: red;
}
.msg-success {
	color: blue;
} 
body{
    background-color:#5DADEC ;
    color: #0000;
}
th {
    background-color:#09568d ;
    color:#FFFFFF;	
}
</style>
</head>
<div ng-controller="BlogController as blogCtrl">
<body   ng-app="" >
<form name="blogForm"   method="POST" >
<div ng-if="blogCtrl.flag != 'edit'">
		     <h3 align=center> Add New Blog </h3> 
		  </div>
		  <div ng-if="blogCtrl.flag == 'edit'">
		     <h3> Update Blog for ID: {{ blogCtrl.blog.blogId }} </h3> 
		  </div>
<div class="form-group ">
      <label class="control-label col-sm-2">User ID:</label>
      <div class="col-sm-10">
        <input type="text" name="id" ng-model="blogCtrl.blog.id" class="form-control" id="inputSuccess">
         <span ng-show="blogForm.id.$error.required" class="msg-val">User Id is required.</span>
      </div>
</div>
    <br><br>
<div class="form-group">
      <label class="control-label col-sm-2">Title:</label>
      <div class="col-sm-10">
        <input type="text" name="blogTitle" ng-model="blogCtrl.blog.blogTitle" class="form-control" id="inputSuccess">
        <span ng-show="blogForm.blogTitle.$error.required" class="msg-val">Title is required.</span>
      </div>
</div>
   <br><br>
<div class="form-group">
      <label class="control-label col-sm-2">Description:</label>
      <div class="col-sm-10">
        <textarea rows="6" name="blogDesc" ng-model="blogCtrl.blog.blogDesc" class="form-control" id="inputSuccess"></textarea>
        <span ng-show="blogForm.blogDesc.$error.required" class="msg-val">Description is required.</span>
      </div>
</div>  
    
   <div ng-if="blogCtrl.flag != 'edit'">
		       <button type="button" class="w3-btn  w3-indigo w3-border w3-border-dark-blue w3-round-xlarge" ng-click="blogCtrl.addBlog()"> Create Blog</button> 
		       <button type="button" class="w3-btn  w3-deep-purple w3-border w3-border-blue w3-round-xlarge" ng-click="blogCtrl.reset()">Reset</button>
		       
		    </div>
		     <span ng-if="blogCtrl.flag=='created'" class="msg-success">Person successfully added.</span>
		    
	 <div ng-if="blogCtrl.flag == 'edit'">
		       <button  type="button" class="w3-btn  w3-indigo w3-border w3-border-dark-blue w3-round-xlarge" ng-click="blogCtrl.updateBlogDetail()">Update Blog</button> 	
			   <button type="button" class="w3-btn  w3-purple w3-border w3-border-blue w3-round-xlarge" ng-click="blogCtrl.cancelUpdate()">Cancel</button>				   
		    </div>
		     <span ng-if="blogCtrl.flag=='deleted'" class="msg-success">Blog successfully deleted.</span>
		     <div class="table-responsive">
		     <br><br>
		    <div class="w3-responsive"> 
  <table   class="w3-table w3-bordered">
	      <tr> <th>ID </th> <th>Title</th> <th>Desicription</th> <th>Action</th></tr>
	      <tr ng-repeat="row in blogCtrl.blogs">
	         <td><span ng-bind="row.id"></span></td>
	         <td><span ng-bind="row.blogTitle"></span></td>
	         <td><span ng-bind="row.blogDesc"></span></td>
	         <td>
		    <button type="button"  class="w3-btn  w3-deep-purple w3-border w3-border-blue w3-round-xlarge"  ng-click="blogCtrl.deleteBlog(row.blogId)">Delete</button>
		    <button type="button" class="w3-btn  w3-purple w3-border w3-border-blue w3-round-xlarge" ng-click="blogCtrl.editBlog(row.blogId)" >Edit</button>
		    <button type="button"  class="w3-btn  w3-deep-purple w3-border w3-border-blue w3-round-xlarge" ng-cliek="blogCtrl.fetchAllblogs(row.blogId)" >View Blog</button></a>
		    <span ng-if="blogCtrl.flag=='updated' && row.id==blogCtrl.updatedId" class="msg-success">Blog successfully updated.</span> </td> 
	      </tr>	
	</table> 
	</div>		     	     
    </div>.
    </div>
    </form>
    
</body>
	

</html>