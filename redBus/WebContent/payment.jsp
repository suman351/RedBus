<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment!</title>
</head>
<body>
<input type="hidden" id ="status" value="<%= request.getAttribute("status") %>">
	<form method="post" action="payment" class="payment-form">
	<img src="https://logodix.com/logo/304269.png" alt="redbus-logo" width="120px" height="70px">
	<h2><b>Payment</b></h2>
	<hr>
	<div class="container">
	<div class="input-box">
	<input type="text"  name="chname" placeholder="Card Holder Name" required><br><br>
	</div>
	
	<div class="input-box">
	<input type="number" name="cnumber" placeholder="Card Number" required><br><br>
	</div>
	
	<div class="input-box">
	<input type="text"  name="expairy" placeholder="Expairy" required><br><br>
	</div>
	
	<div class="input-box">
	<input type="number"  name="cvv"placeholder="CVV" required><br><br>
	</div>
	
	<div class="submit-box">
	<input type="submit" id="submit"  value="Pay"><br><br>
	</div>
	</div>
	</form>
	<style>
	body{
	background-image: linear-gradient(to right, #77A1D3 0%, #79CBCA 51%, #77A1D3 100%);
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
		swal("Thank You","For Booking","success");
	}
	</script>
</body>
</html>