<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Event</title>
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
<div ng-controller="EventController as eventCtrl">
<body   ng-app="" >
<form name="eventForm"  method="POST" >
<div ng-if="eventCtrl.flag != 'edit'">
		     <h3 align=center> Add New Event </h3> 
		  </div>
		  <div ng-if="eventCtrl.flag == 'edit'">
		     <h3> Update Event for ID: {{ eventCtrl.event.id }} </h3> 
		  </div>
<!-- <div class="form-group ">
      <label class="control-label col-sm-2">User ID:</label>
      <div class="col-sm-10">
        <input type="text" name="userId" ng-model="eventCtrl.event.userId" class="form-control" id="inputSuccess">
         <span ng-show="eventForm.userId.$error.required" class="msg-val">User Id is required.</span>
      </div>
</div>
 -->    <br><br>
<div class="form-group">
      <label class="control-label col-sm-2">Event Name:</label>
      <div class="col-sm-10">
        <input type="text" name="name" ng-model="eventCtrl.event.name" class="form-control" id="inputSuccess">
        <span ng-show="eventForm.name.$error.required" class="msg-val">Event name is required.</span>
      </div>
       <br><br>
</div>
  
<div class="form-group">
      <label class="control-label col-sm-2">Description:</label>
      <div class="col-sm-10">
        <textarea rows="6" name="description" ng-model="eventCtrl.event.description" class="form-control" id="inputSuccess"></textarea>
        <span ng-show="eventForm.description.$error.required" class="msg-val">Description is required.</span>
      </div>
      
</div>  
   <br><br>
<div class="form-group">
      <label class="control-label col-sm-2">Venue:</label>
      <div class="col-sm-10">
        <input type="text" rows="6" name="venue" ng-model="eventCtrl.event.venue" class="form-control" id="inputSuccess">
        <span ng-show="eventForm.venue.$error.required" class="msg-val">Venue is required.</span>
      </div>
</div>  
   <br><br>
<div class="form-group">
      <label class="control-label col-sm-2">Event Date:</label>
      <div class="col-sm-10">
        <input type="date" rows="4" name="dateTime" ng-model="eventCtrl.event.dateTime" class="form-control"  id="inputSuccess">
        <span ng-show="eventForm.dateTime.$error.required" class="msg-val">Date is required.</span>
      </div>
</div>  
    <br><br>
   <div ng-if="eventCtrl.flag != 'edit'">
		       <button type="button" class="w3-btn  w3-indigo w3-border w3-border-dark-blue w3-round-xlarge" ng-click="eventCtrl.addEvent()"> Create Event</button> 
		       <button type="button" class="w3-btn  w3-deep-purple w3-border w3-border-blue w3-round-xlarge" ng-click="eventCtrl.reset()">Reset</button>
		       
		    </div>
		     <span ng-if="eventCtrl.flag=='created'" class="msg-success">Event successfully added.</span>
		    
	 <div ng-if="eventCtrl.flag == 'edit'">
		       <button  type="button" class="w3-btn  w3-indigo w3-border w3-border-dark-blue w3-round-xlarge" ng-click="eventCtrl.updateEventDetail()">Update Event</button> 	
			   <button type="button" class="w3-btn  w3-purple w3-border w3-border-blue w3-round-xlarge" ng-click="eventCtrl.cancelUpdate()">Cancel</button>				   
		    </div>
		     <span ng-if="eventCtrl.flag=='deleted'" class="msg-success">Event successfully deleted.</span>
		     <div class="table-responsive">
		     <br><br>
		    <div class="w3-responsive"> 
 <table  class="w3-table w3-bordered ">
	      <tr> <th>ID</th> <th>Event Name</th> <th>Desicription</th><th>Venue</th><th>Date</th> <th>Action</th></tr>
	      <tr ng-repeat="row in eventCtrl.events">
	         <td><span ng-bind="row.id"></span></td>
	         <td><span ng-bind="row.name"></span></td>
	         <td><span ng-bind="row.description"></span></td>
	         <td><span ng-bind="row.venue"></span></td>
	         <td><span ng-bind="row.dateTime"></span></td>
	         
	         <td>
		    <button type="button"   class="w3-btn  w3-deep-purple w3-border w3-border-blue w3-round-xlarge"  ng-click="eventCtrl.deleteEvent(row.id)">Delete</button>
		    <button type="button" class="w3-btn  w3-purple w3-border w3-border-blue w3-round-xlarge" ng-click="eventCtrl.editEvent(row.id)" >Edit</button>
		    <span ng-if="eventCtrl.flag=='updated' && row.id==eventCtrl.updatedId" class="msg-success">Event successfully updated.</span> </td> 
	      </tr>	
	</table>
	</div>		     	     
    </div>
    </div>
    </form>
</body>
	
</html>