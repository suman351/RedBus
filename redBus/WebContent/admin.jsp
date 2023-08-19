<% 
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>RedBus</title>
</head>
<body>
 <header>
	<img src="https://logodix.com/logo/304269.png" alt="redbus-logo" width="120px" height="70px">
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="bookings.jsp">All user Details</a></li>
				<li><a href="paymentdetails.jsp">All payment Details</a></li>
				<li><a href="logout">Logout</a></li>
				<li><a href="logout"><%= session.getAttribute("name") %></a>
			</ul>
		</nav>
	</header>
	
		<main>
		<h2>Welcome to the redBus.</h2>
		<p>Book your bus tickets online and travel hassle-free. We offer a wide range of buses to choose from and the convenience of booking your tickets from the comfort of your home.</p>
		<p>Have a Safe Journey.</p>
		
	
	</main>
	    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="footer-col">
            <h4>About redBus</h4>
            <ul>
              <li><a href="#">About Us</a></li>
              <li><a href="#">Contact Us</a></li>
              <li><a href="#">Offers</a></li>
              <li><a href="#">Careers</a></li>
              <li><a href="#">Values</a></li>
            </ul>
          </div>
          <div class="footer-col">
            <h4>Info</h4>
            <ul>
              <li><a href="#">T & c</a></li>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="#">FAQ</a></li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">Bus Operator Registration</a></li>
              <li><a href="#"> Agent Registration</a></li>
              <li><a href="#"> Insurance Partner</a></li>
              <li><a href="#">User Agreement</a></li>
            </ul>
          </div>
          <div class="footer-col">
            <h4>Global Sites</h4>
            <ul>
              <li><a href="#">India</a></li>
              <li><a href="#">Singapore</a></li>
              <li><a href="#">Malaysia</a></li>
              <li><a href="#">Indonesia</a></li>
              <li><a href="#">Peru</a></li>
              <li><a href="#">Colombia</a></li>
            </ul>
          </div>
          <div class="footer-col">
            <h4>Our Partners</h4>
            <ul>
              <li><a href="#">Goibibo</a></li>
              <li><a href="#">Makemytrip</a></li>
            </ul>
          </div>
          <div class="footer-col">
           <br>
           <br> <img src="https://logodix.com/logo/304269.png" alt="redbus-logo" width="65px" height="55px">
            <p>redBus is the world's largest<a href="index.jsp"> <b>online bus ticket booking</b> </a>service trusted by over 25 million happy customers globally. redBus offers bus ticket booking through its website,iOS and Android mobile apps for all major routes.</p>
          <div class="social-links">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>  
          </div>
        </div>
        </div>
      </div>
    </footer>
    <style>
/* Styles for the header */
header {
	background-color: #d84f57;
	color: #fff;
	padding: 20px;
}

nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

nav li {
	display: inline-block;
	margin-right: 20px;
}

nav a {
	color: #fff;
	text-decoration: none;
}
nav a:hover{
	color:#fff;
	text-decoration:underline;
}

/* Styles for the main content */
main {
	padding: 20px;
}

.main h2 {
	margin-top: 0;
}
input{
	padding:12px;
	border-radius:10px;
	width:12%;
}

button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #333;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
}
a:link{
	text-decoration:none;
}
a:visited {
  background-color: transparent;
  text-decoration: none;
}
a:hover {
  background-color: transparent;
  text-decoration: none;
}

.footer{
	width:93%;
	padding:50px 100px ;
	background:#1B2330;
	
}
.container{
	list-style: none;
	color: #fff;
}
.row{
	display: flex;
	
}
.footer-col{
	width:25%;
	padding:0px 15px;
	
}
.footer-col h4{
	color:#6f7275 ;
	text-transform: capitalize;
	
	margin-left:2rem;
	position: relative;
}
.footer-col p{
	color:#b7bac0 ;
	margin-right: 20px;
}
.footer-col ul li{
	list-style-type: none;
	
}
.footer-col ul li a{
	text-transform: capitalize;
	text-decoration: none;
	display: block;
	color: #b7bac0;
	padding: 2px;
}
.footer-col ul li a:hover{
	color: #fff;
}
.footer-col .social-links a{
	display: inline-block;
	background-color:rgba(255,255,255,0.2);
	height: 50px;
	width: 45px;
	padding: 2px;
	margin: 0 10px 10px 0;
	text-align: center;
	line-height: 40px;
	border-radius:50%;
}
@media(max-width:767px){

}
</style>
</body>
</html>