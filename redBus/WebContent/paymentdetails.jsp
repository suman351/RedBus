<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Payment Details</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>
            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #d84f57">
                    <div>
                        <div>
                        <img src="https://logodix.com/logo/304269.png" alt="redbus-logo" width="120px" height="70px">
                        <a href="https://www.redbus.in/" class="navbar-brand"> redBus</a>
                    </div>
                    </div>
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <hr>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                
                                <th>Card HolderName</th>
                                <th>Card Number</th>
                                <th>Expairy</th>
                                <th>CVV</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.chname}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.cnumber}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.expairy}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.cvv}" />
                                    </td>
                                   <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>