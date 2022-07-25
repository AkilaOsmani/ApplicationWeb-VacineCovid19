<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscription</title>
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
					<h2 class="heading-section">Merci d'inscription</h2>
				</div>
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
			      			<h3 class="mb-4">Inscription</h3>
			      		</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
									</p>
								</div>
			      	</div>
						<form action="Signup" method="post">
						
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Nom :</label>
			      			<input type="text" class="form-control" name="nom" placeholder="saisir votre nom" required pattern="^[a-zA-Z]{3,12}$">
			      		</div>
			      		
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Prénom :</label>
			      			<input type="text" class="form-control"name="prenom"placeholder="saisir votre prenom" required pattern="^[a-zA-Z]{3,12}$">
			      		</div>
			      	
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Date de naissance  :</label>
			      			<input type="date"  class="form-control" name="date" placeholder="date" required>
			      		</div>
			      		
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Email :</label>
			      			<input type="Email" class="form-control" name="email" placeholder="saisir votre email" required>
			      		</div>
			      		
			      		 <div class="form-group mb-3">
		            	<label class="label" for="password">Mot de passe :</label>
		              <input type="password" class="form-control" name="motpasse" placeholder="saisir votre mot de passe" required>
		            </div>
		            
		            <div class="form-group mb-3">
			      			<label class="label" for="name">Catégorie :</label>
			      			
			             <input type ="radio" name="catg" value="admin">Administrateur
			             
				      <input type ="radio" name="catg" value="patient">Patient
			      		</div>
			      
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Adresse :</label>
			      			<input type="text" class="form-control" name="Adresse" placeholder="saisir votre adresse" required pattern="^[a-zA-Z0-9]{5,30}$">
			      		</div>
			      
			      
			      
			      
			      
		
			      
			      
		           
		            <div class="form-group">
		            	<button type="submit" value="Inscription" class="form-control btn btn-primary rounded submit px-3">Inscription</button>
		            </div>
		           
		          </form>
		      
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