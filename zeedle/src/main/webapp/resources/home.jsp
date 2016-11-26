<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="resources/css/middleStyle.css">
    <link rel="stylesheet" href="resources/css/footer.css">
<title>Home</title>
</head>
<style>
body{
background-image: url("resources/images/b3.jpg");
}
.carousel-inner > .item > img, .carousel-inner > .item > a > img {
    width: 100%; height:400px;
} 
</style>
<body>
<div id="myCarousel" class="carousel slide" data-ride="carousel" href="#">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
         <li data-target="#myCarousel" data-slide-to="5"></li>
         
    </ol>

   
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/icon1.png" alt="Image">
        <div class="carousel-caption">
         <h3 style="color:red;">A COLLABORATION TOOL</h3>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/collage1.jpg" alt="Image">
        <div class="carousel-caption">
          <h3 style="color:black"></h3>
        
        </div>
      </div>
       <div class="item">
        <img src="resources/images/collage2.jpg" alt="Image">
        <div class="carousel-caption">
          <h3 style="color:black">Blogs</h3>
          <p></p>
        </div>
      </div>
       <div class="item">
        <img src="resources/images/collage3.jpg" alt="Image">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
       <div class="item">
        <img src="resources/images/team5.jpg" alt="Image">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
	
	      
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
 </div>
 <!-- HERE CAROSEL IS ENDED.........................................................................  -->
 <!-- MIDDLE CONTENTS -->
 <div class="container">
  <div class="iconcontainer">
  
    <div class="row">
      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
        <div class="iconbox">
          <div class="iconbox-icon">
            <span class="glyphicon glyphicon-book"></span>
            
          </div>
          <div class="featureinfo">
            <h4 class="text-center">Blogs</h4>
            
            <h3 align="center">Publish your passions, your way</h3>
            <p align="center">
            
            create a unique and beautiful blog. It's easy and free.
            </p>
            <a class="w3-btn  w3-indigo w3-border w3-border-dark-blue w3-round-xlarge" href="#/blog" role="button">Create Blogs</a>
          </div>
        </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
        <div class="iconbox">
          <div class="iconbox-icon">
          <span class="glyphicon glyphicon-calendar"></span>
          </div>
          <div class="featureinfo">
            <h4 class="text-center">Event</h4>
             <h3 align="center">Create inspired events.</h3>
            <p>
             
            </p>
            <a class="w3-btn  w3-indigo w3-border w3-border-dark-blue w3-round-xlarge" href="#/event" role="button">Create Events</a>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
        <div class="iconbox">
          <div class="iconbox-icon">
            <span class="glyphicon glyphicon-comment"></span>
          </div>
          <div class="featureinfo">
            <h4 class="text-center">Chat</h4>
            <h3 align="center">Welcome to our free chat rooms!</h3>
            <p>
             
            </p>
            <a class="w3-btn  w3-indigo w3-border w3-border-dark-blue w3-round-xlarge" href="#/chat" role="button">Go For Chat</a>
          </div>
        </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
        <div class="iconbox">
          <div class="iconbox-icon">
            <span class="glyphicon glyphicon-user"></span>
          </div>
          <div class="featureinfo">
            <h4 class="text-center">User</h4>
            <h3 align="center">Would you like to register?</h3>
            <p>
             
            </p>
            <a class="w3-btn  w3-indigo w3-border w3-border-dark-blue w3-round-xlarge" href="#/login"about.php#bottom"" role="button">Create Profile</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- MIDDLE CONTENTS ENDED -->
<!-- FOOTER -->
<div class="footer">
    <div class="container">
    	<div class="row">
    		<div class="col-md-5 widget">
        	    <h2>Article</h2>
                <article class="widget_content">
                    <ul>
                        <li>Tele-Mentoring Is Creating Global Communities of Practice in Health Care</li>
                        <li>Science-oriented multimedia platform and network for scientists</li>
                        <li>Music community. Sharing and listening to music for free and legally</li>
                        <li>Collaborative social network for Brazilian readers</li>
                        <li>Open social networking portal</li>
                 </ul>
                 </article>
    		</div>
            <div class="col-md-3 widget">
        	    <h2>Link</h2>
                <article class="widget_content">
                    <ul>
                        <li>Group Chat</li>
                        <li>My Event</li>
                        <li>My BLog</li>
                        <li>Facebook</li>
                        <li>Follow me</li>
                 </ul>
                 </article>
    		</div>
            <div class="col-md-4 widget">
                <h2>Contact Us</h2>
                <article class="widget_content">
                    <p>S. Ibrahim Abdullah, Belveder Road, Mazgon Garden<br> Mumbai India<br>Phone: +918879915155</p>
                </article>
    		</div>
    	</div>
    </div>
</div>
<div class="footer-bottom">
    <div class="container">
        <div class="row">
    		<div class="col-md-12 widget">© 2014 | Created with Boostrap <span class="pull-right">Minimize your browser »</span>
            </div>
        </div>
    </div>
</div>
<!-- FOOTER ENDED HERE -->
 <script src="resources/js/bootstrap.min.js"></script>
 <script>
 $(document).ready(function() {	
		$( ".widget h2" ).click(
			function() {
				$(this).parent().toggleClass('active');
			}
		);	  	
	});


 </script>
</body>
</html>