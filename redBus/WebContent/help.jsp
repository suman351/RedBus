<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>HELP</title>
</head>
<body>

<div class="image"><img src="https://s3.rdbuz.com/Images/webplatform/Common/rc_artboard.jpg" class="img_rc"> </div>
<button type="button" onclick="button()">How can i help you?</button>
<style>
body{
	box-sizing:border-box;
	background-color:#d84f57;
}
.image{
	margin-left:30%;
	margin-top:7%;
}
button{
	margin-left:40%;
	margin-top:2%;
	border-radius:10px;
	padding:10px;
	width:20%;
	background-color:#A2BAF5;
}
</style>
<script>
function button(){
	window.open("mailto:redBusAdmin@gmail.com");
}

</script>
</body>
</html>