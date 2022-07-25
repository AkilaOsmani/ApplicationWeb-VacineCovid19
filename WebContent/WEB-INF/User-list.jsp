 <%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
         <link rel="shortout icon" href="assets/virus.png" >
            <title>Page Admin</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                   
                 <div class="logo">
	            	<a href="/JAVAEE_M2_SIR/Pagedaccuiel"  class="navbar-brand"><img src="assets/Logo.png" alt="" /></a>
	          	 </div>
                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Patients</a></li>
                    </ul>
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Liste Des Patients</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Ajouter
    Nouveau patient</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                 <th>ID</th>
                                <th>Nom</th>
                                <th>Email</th>
                                <th>Date de naissance</th>
                                <th>Rendez vous</th>
                                <th>Type dose</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.date_naissance}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.RDV}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.type_dose}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${user.id}' />">modifie </a> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="delete?id=<c:out value='${user.id}' />">Supprimer</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>
