<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Affichage rendez-vous</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" href="CSS/style.css" />

</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			
			<div class="brand">
	             <div class="logo">
	            	<a href="Pagedaccuiel" class="navbar-brand"><img src="assets/Logo.png" alt="" /></a>
	          	 </div>
          
       	    </div>
			<div>
				<a class="navbar-brand"> Affichage rendez-vous  </a>
			</div>

		</nav>
	</header>
    <br>
   <form action="serv_patient" method="post">
    <div class="row">
		

            <div class="container">
                <h3 class="text-center">Information de rendez-vous</h3>
                <hr>
   
	<table class="table table-bordered">
        <c:forEach items="${ les_rdvs.rdv_liste }" var="rdvs">
       	   
	            <tr> <td> Nom:</td><td> ${ rdvs.getNom() }</td></tr> 
	            <tr> <td> Prenom:</td><td> ${ rdvs.getPrenom() }</td></tr>
	            <tr> <td> Première injection:</td><td> ${ rdvs.getFirst_injection() }</td></tr>
	            <tr> <td> Centre de la première injection:</td><td> ${ rdvs.getCentre_1() }</td></tr>
	            <tr> <td> Deuxième injection:</td><td> ${ rdvs.getSecond_injection() }</td></tr>
	            <tr> <td> Centre de la deuxième injection:</td><td> ${ rdvs.getCentre_2() }</td></tr>
	            <tr> <td> Troisième injection:</td><td> ${ rdvs.getThird_injection() }</td></tr>
	            <tr> <td> Centre de la troisième injection:</td><td> ${ rdvs.getCentre_3() }</td></tr>
          
        </c:forEach>
        </table>
        </div>
        </div>
        
    
   </form>
</body>
</html>