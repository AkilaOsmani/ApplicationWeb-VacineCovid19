<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 	<title>Connexion</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="CSS/style2.css">
 <link rel="shortout icon" href="assets/virus.png" >
</head>
<body>

<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">
					<c:out value="${message}" default="Connexion"/></h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(assets/starter.png);">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      		
			      			<h3 class="mb-4">Connexion
			      			</h3>
			      		</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
									</p>
								</div>
			      	</div>
						<form action="Login" method="post">
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Email :</label>
			      			<input type="Email" class="form-control" name="email" placeholder="saisir votre email" required>
			      		</div>
		            <div class="form-group mb-3">
		            	<label class="label" for="password">Mot de passe :</label>
		              <input type="password" class="form-control" name="motpasse" placeholder="saisir votre mot de passe" required>
		            </div>
		            <div class="form-group">
		            	<button type="submit" value="Connexion" class="form-control btn btn-primary rounded submit px-3">Connexion</button>
		            </div>
		           
		          </form>
		         <a href="/JAVAEE_M2_SIR/Signup">Créer un Compte</a>  </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

  <script src="JS/jquery.min.js"></script>
  <script src="JS/popper.js"></script>
  <script src="JS/bootstrap.min.js"></script>
  <script src="JS/main.js"></script>


</body>
</html>