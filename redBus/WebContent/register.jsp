<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sign up!</title>
</head>
<body>
<input type="hidden" id ="status" value="<%= request.getAttribute("status") %>">
	<form method="post" action="register" class="register-form">
	<img src="https://logodix.com/logo/304269.png" alt="redbus-logo" width="120px" height="70px">
	<h2><b>Create an account</b></h2>
	<p>It's quick and easy!</p>
	<hr>
	<div class="container">
	<div class="input-box">
	<input type="text" id="fullname" name="name" placeholder="Your Name" required><br><br>
	</div>
	
	<div class="input-box">
	<input type="email" id="email"name="email" placeholder="Your Email" required><br><br>
	</div>
	
	<div class="input-box">
	<input type="password" id="password" name="password" placeholder="Your Password" required><br><br>
	</div>
	
	<div class="input-box">
	<input type="number" id="contact" name="contact"placeholder="Your Number" required><br><br>
	</div>
	
	<div class="submit-box">
	<input type="submit" id="submit"  value="Register"><br><br>
	</div>
	<p style="text-align:center;">Already have an account?<a href="login.jsp"><b>Login</b></a></p>
	</div>
	</form>
	<style>
	body{
	background-color:#d84f57;
	}
form{
	border:1px solid;
	border-radius: 15px 50px; 
	margin:5% 30% 0 30%;
}
input{
	width:80%;
	border-radius:12px;
	height:3rem;
	text-align:center;
	margin-left:7%;
}
input[type=submit]{
	padding:12px;
	width:70%;
	background-color:#AEE8F5;
	border-radius:12px;
	margin-left:14%;
}
</style>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats","Account Created Successfully","success");
	}
	</script>
</body>
</html>