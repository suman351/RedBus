<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search buses</title>
</head>
<body>

  <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #d84f57">
                    <div>
                        <img src="https://logodix.com/logo/304269.png" alt="redbus-logo" width="120px" height="70px">
                        <h1>Search buses</h1><hr>
                    </div>
                </nav>
            </header>
<form action="searchbus" method="get">
<div class="busform">
<label for="from">from</label>

<select name="origin" id="origin">
<option value="origin">origin</option>
  <option value="bhubaneswar">Bhubaneswar</option>
  <option value="khordha">Khordha</option>
  <option value="gunupur">Gunupur</option>
  <option value="cuttack">Cuttack</option>
</select><br><br>
</div>
<div class="busto">
<label for="to">To:</label>

<select name="destination" id="destination">
<option value="destination">destination</option>
  <option value="bhubaneswar">Bhubaneswar</option>
  <option value="khordha">Khordha</option>
  <option value="gunupur">Gunupur</option>
  <option value="cuttack">Cuttack</option>
</select><br><br>
</div>
<div>
<button type="submit">Check</button>
</div>
</form>
<style>
body{
	background-color:#d84f57;
	}
form{
border:1px solid;
text-align:center;
border-radius: 15px 50px;
margin:5% 20% 3% 30%;
}
h1{
text-align:center;}
select{
width:60%;
margin-top:5%;
height:3rem;
}
button{
width:40%;
margin-bottom:3%;
height:2rem;
}
</style>
</body>
</html>