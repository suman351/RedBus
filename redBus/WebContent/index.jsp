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
				<li><a href="searchbus.jsp">Search</a></li>
				<li><a href="help.jsp">Help</a></li>
				<li><a href="logout">Logout</a></li>
				<li><a href="logout"><%= session.getAttribute("name") %></a>
			</ul>
		</nav>
	</header>
	
		<main>
		<h2>Welcome to the redBus.</h2>
		<p>Book your bus tickets online and travel hassle-free. We offer a wide range of buses to choose from and the convenience of booking your tickets from the comfort of your home.</p>
		<p>Have a Safe Journey.</p>
		
		<h1 style="text-align:center;">Offers</h1>
		<div class="offers">
  <div class="offers1">
  <div class="offers2">
  <p><br> Save upto Rs 300 on Ap and TS route</p>
   <h1 style="color:#d84f57;">SUPERHIT</h1>
   <p>use code SUPERHIT</p>
  </div>
   <div class="offers2">
  <p><br> Save upto Rs 200 on Delhi and North routes</p>
  <h1 style="color:#d84f57;">RB200</h1>
  <P>Use code RB200</P>
  </div>
  </div>
</div>
<div class="awards">
<h1>AWARDS & RECOGNITION</h1>
<div class="all-box">
<div class="card">
  <h1 style="color:#d84f57;">Business<br>Standard</h1>
  <P>Most Innovative Company</P>
</div>
<div class="trust">
  <h1>THE<br>BRAND TRUST<br>REPORT</h1>
  <p><br><br>Most Trusted Brand</p>
</div>
<div class="travel">
  <h1>eye for <br>travel</h1>
  <p>Mobile Innovation Award</p>
</div>
</div>
</div>
</div>
</div>
<hr>
<div class="grow"><br><br>
  <h1>THE NUMBERS ARE GROWING!</h1>
  <div class="all-letters">
  <div class="customers">
    <h3>CUSTOMERS</h3>
    <span style="color:#d84f57;font-size: 4rem;">36 M</span>
    <p>redBus is trusted by over 36<br> million happy customers<br> globally</p>
  </div>
    <div class="operators">
      <h3>OPERATORS</h3>
      <span style="color:#d84f57;font-size: 4rem;">3500</span>
      <p>network of over 3500 bus<br>operators worldwide</p>
    </div>
    <div class="bustickets">
      <h3>BUS TICKETS</h3>
      <span style="color:#d84f57;font-size: 4rem;">220+ M</span>
      <p>over 220 million trips<br>booked using redBus</p>
    </div>
    </div>
    <hr>
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
.offers{
	width:93%;
	background: #fff;
	color: black;
	display: flex;
	align-items: center;
	flex-direction: column;
	height: auto;
	padding-left: 2rem;
}
.offers1{
background: #fff;
width:63%;
display:flex;
align-items:top;
justify-content:space-between;
flex-wrap:wrap;
}
.offers2{
	width:20rem;
	margin:3rem;
	height:12rem;
	background:#f0f0f0 ;
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: space-between;
	transition: all 1s ease ;
}
.offers2:hover{
	height: 12rem;
	width: 22rem;
	cursor: pointer;
}
.awards{
	width:100%;
	background: #fff;
	color: black;
	display: flex;
	align-items: center;
	flex-direction: column;
	height: auto;
	padding-left: 2rem;
}

.all-box{
	display:flex;
align-items:center;
justify-content:space-between;
flex-wrap:wrap;
margin-top:2%;
}
.card{
	width:20rem;
	margin:2rem;
	height:7rem;
	background:#fff ;
	padding:2rem;
}

.trust{
	width:20rem;
	margin:2rem;
	height:9rem;
	background:#544276 ;
	padding:2rem;
}
.travel{
	width:20rem;
	margin:2rem;
	height:7rem;
	background:#fff ;
	padding:2rem;
}
.grow{
	width:100%;
	background: #fff;
	color: black;
	display: flex;
	align-items: center;
	flex-direction: column;
	height: auto;
	padding-left: 3rem;
}
.all-letters{
	display:flex;
align-items:center;
justify-content:space-between;
flex-wrap:wrap;
}
.customers{
	width:20rem;
	margin:2rem;
	height:7rem;
	background:#fff ;
	padding:2rem;
}

.operators{
	width:20rem;
	margin:2rem;
	height:9rem;
	background:#fff ;
	padding:2rem;
}
.bustickets{
	width:20rem;
	margin:2rem;
	height:7rem;
	background:#fff ;
	padding:2rem;
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