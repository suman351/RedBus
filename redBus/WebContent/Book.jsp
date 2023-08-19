<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>search buses</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #d84f57">
                    <div>
                        <img src="https://logodix.com/logo/304269.png" alt="redbus-logo" width="120px" height="70px">
                        <a href="https://www.redbus.in/" class="navbar-brand"> redBus</a>
                    </div>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${user != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${user != null}">
                                    Edit User
                                </c:if>
                                <c:if test="${user == null}">
                                   Book the Bus
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Name</label> <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <div class="busform">
<label for="from">From: </label>

<select name="origin" id="origin">
<option value="origin">origin</option>
  <option value="bhubaneswar">Bhubaneswar</option>
  <option value="khordha">Khordha</option>
  <option value="gunupur">Gunupur</option>
  <option value="cuttack">Cuttack</option>
</select><br><br>
</div>
                        </fieldset>

                        <fieldset class="form-group">
                            <div class="busto">
<label for="to">To: </label>

<select name="destination" id="destination">
<option value="destination">destination</option>
  <option value="bhubaneswar">Bhubaneswar</option>
  <option value="khordha">Khordha</option>
  <option value="gunupur">Gunupur</option>
  <option value="cuttack">Cuttack</option>
</select><br><br>
</div>
                        </fieldset>
                        
                        <fieldset class="form-group">
                            <label>Email</label> <input type="email" value="<c:out value='${user.email}' />" class="form-control" name="email" required="required">
                        </fieldset>
                        
                         <fieldset class="form-group">
                            <label>Age</label> <input type="number" value="<c:out value='${user.age}' />" class="form-control" name="age" required="required">
                        </fieldset>

                        <button type="submit" class="btn btn-success">Payment</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>