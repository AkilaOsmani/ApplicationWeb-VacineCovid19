<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
         <link rel="shortout icon" href="assets/virus.png" >
            <title>Page Adimin </title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a href="/JAVAEE_M2_SIR/Pagedaccuiel"class="navbar-brand"> Page d'accuiel </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Patient </a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${user != null}">
                            <form action="update" method="get">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="get">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${user != null}">
                                    Modifier un Patient
                                </c:if>
                                <c:if test="${user == null}">
                                    Ajouter un nouveau Patient
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Nom</label> <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Email</label> <input type="Email" value="<c:out value='${user.email}' />" class="form-control" name="email">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Date de naissance</label> <input type="Date" value="<c:out value='${user.date_naissance}'  />" class="form-control" name="date_naissance">
                        </fieldset>
                          
                        <fieldset class="form-group">
                            <label>RDV</label> <input type="Date" value="<c:out value='${user.RDV}' />" class="form-control" name="RDV" id="date">
		                            <script>
			                          date.min = new Date().toISOString().split("T")[0];
		                            </script>
                        </fieldset>
                        
                        <fieldset class="form-group">
                            <label>Type dose</label> <input type="number" min="1" max="3" value="<c:out value='${user.type_dose}' />" class="form-control" name="type_dose">
                        </fieldset>

                        <button type="submit" class="btn btn-success">Sauvgarder</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>
