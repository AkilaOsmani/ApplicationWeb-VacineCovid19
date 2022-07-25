<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="CSS/style2.css">
    <link rel="shortout icon" href="assets/virus.png" >
     <link rel="stylesheet" href="CSS/style.css" />
<title>Rendez-vous</title>
    <script src="https://kit.fontawesome.com/0fd7db252b.js" crossorigin="anonymous"></script>
<style >
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins',sans-serif;
    }
    
    
    .Rendezvous{
        position: relative;
        min-height: 10vh;
        padding: 50px 100px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
           
    }
    
    .Rendezvous .Rendezvous{
        
       
        background-size: cover;

        max-width: 800px;
        text-align: center; 
        
    }
    .Rendezvous .Rendezvous h2{
        font-size: 36px;
        font-weight: 500;
        color: #676868;
        
    }
    .Rendezvous .Rendezvous p{
        font-weight: 300;
        color: #FFF;
        
    }
    .container{
        width: 100%;
        display: flex;
        background: #fff;
        justify-content: center;
        align-items: center;
        margin-top: 30px;
    }
    
    .container .RendezvousInfo{
        width: 50%;
        display: flex;
        flex-direction: column;
       
    }
    .container .RendezvousInfo .box{
        position: relative;
        padding: 20px 0;
        display: flex;  
    }
    
    .container .RendezvousInfo .box .icon{
        min-width: 60px;
        height: 60px;
        background: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%;
        font-size: 22px;
    }
    .container .RendezvousInfo .box .text{
        display: flex;
        margin-left: 20px;
        font-size: 16px;
        color: #020024;
        flex-direction: column;
        font-weight: 300;
    }
    .container .RendezvousInfo .box .text h3{
        font-weight: 500;
        color: #e0a800;
        font-size: 22px;
        font-weight:100;
        
        
    }
    .RendezvousForm{
        width: 40%;
        padding: 40px;
        background: #fff;
    }
    .RendezvousForm h3{
        font-size: 26px;
        font-weight: 500;
        color: #333;
    }
    .RendezvousForm .inputBox{
        position: relative;
        width: 100%;
        margin-top: 10px;
    }
    .RendezvousForm .inputBox input[type="submit"]{
        width: 100%;
        background: linear-gradient(10deg,#17a2b8,#17a679);
        color: #fff;
        border: none;
        cursor: pointer;
        padding: 10px;
        font-size: 18px;
       
    }
    .RendezvousForm .inputBox input[type="date"]{
        width: 100%;
        background: linear-gradient(10deg,#17a2b8,#17a679);
        color: #fff;
        border: none;
        cursor: pointer;
        padding: 10px;
        font-size: 18px;
       
        
    }
    .RendezvousForm .inputBox select{
        width: 100%;
        color: #333;
        padding: 10px;
        font-size: 18px;
       
        
    }
    
    
    


</style> 
</head>
<body>

	   <div class="brand">
          <div class="logo">
            <a href="Pagedaccuiel" class="navbar-brand"><img src="assets/Logo.png" alt="" /></a>
          </div>
          
        </div>
    
			
    <section class="Rendezvous">
        <div class="Rendezvous">
            <h2 class="heading-section">Rendez-vous</h2>
            
        </div>
        <div class="container">
            <div class="RendezvousInfo">
                <div class="box">
                    <div class="icon"><i class="fas fa-notes-medical"></i></div>
                    <div class="text">
                        <h3>Les consignes vaccinales</h3>
                        <p>De nouvelles consignes et recommandations ont �t� �mises par les autorit�s de sant� concernant la strat�gie vaccinale contre la COVID-19 et les mesures applicables aux personnes vaccin�es</p>
                    </div>
                    
                </div>
                <div class="box">
                    <div class="icon"><i class="fas fa-syringe"></i></div>
                    <div class="text">
                        <h3>un sch�ma vaccinal � 2 doses</h3>
                        <p>Dans un sch�ma vaccinal � 2 doses, la seconde dose peut �tre administr�e � partir de 21 jours apr�s la premi�re (3 semaines) et jusqu'� 49 jours (7 semaines).</p>
                    </div>
                    
                </div>
                <div class="box">
                    <div class="icon"><i class="fas fa-syringe"></i></div>
                    <div class="text">
                        <h3>un sch�ma vaccinal � 3 doses</h3>
                        <p>Dans un sch�ma vaccinal � 3 doses, la troisi�me dose peut �tre administr�e � partir de 28 jours apr�s la seconde (4 semaines)</p>
                    </div>
                    
                </div>
                <div class="box">
                    <div class="icon"><i class="fas fa-virus"></i></div>
                    <div class="text">                      
                        <h3>COVID positif</h3>
                        <p>Autre nouvelle consigne, l'intervalle recommand� entre un �pisode d'infection  (confirm� par un test) et l'injection du vaccin est r�duite � 2 mois, au lieu de 3 � 6 mois pr�c�demment.</p>
                    </div>
                    
                </div>
            </div>
            <div class="RendezvousForm">
                
                
                <form  action="serv_patient" method="post">
                
             
                    
                    
                    <div class="form-group mb-3">
                       <label class="label" for="name">choisissez une dose:</label><br>
                       <label class="radio" for="1ere_injection">
                         <input type="radio" id="1ere_injection" name="injct" value="1ere_injection">
	                   1ere_injection</label> <br>
                        
                       <label class="radio" for="2eme_injection"> 
                        <input type="radio" id="2eme_injection" name="injct" value="2eme_injection">
	                   2eme_injection</label><br>
                        
                         <label class="radio" for="3eme_injection">
                       <input type="radio" id="3eme_injection" name="injct" value="3eme_injection">
	                   3eme_injection</label><br>
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    <div class="form-group mb-3">
                        <h3 class="label">choisissez une dose: <br><input type="date" class="form-control" id="date" name="date"></h3>
                        <script>
	                    date.min = new Date().toISOString().split("T")[0];
                        </script>
                    </div>
                    
                    
                    
                    <div class="form-group mb-3">
                        <label class="label">les centres du vaccination contre covid-19</label>
                        <select name="centre">
                            <option value="Hopital de Ouled Mohamed Chlef">H�pital de Ouled Mohamed Chlef </option>
                            <option value="Hopital ancien d'Oum El Bouaghi">H�pital ancien d'Oum El Bouaghi  </option>
                            <option value="Hopital de Ali Nemer de M�rouana Batna">H�pital de Ali Nemer de M�rouana Batna</option>
                            <option value="Hopital Bachir Bennacer de Biskra">H�pital Bachir Bennacer de Biskra</option>
                            <option value="Hopital de Abadla B�char">H�pital de Abadla B�char</option>
                            <option value="Hopital de Boufarik blida">H�pital de Boufarik blida</option>
                            <option value="Hopital de Lakhdaria Bouira">H�pital de Lakhdaria Bouira </option>
                            <option value="Hopital de Tamanrasset">H�pital de Tamanrasset</option>
                            <option value="Hopital Alia Salah de T�bessa">H�pital Alia Salah de T�bessa</option>
                            <option value="Hopital de Sebdou Tlemcen">H�pital de Sebdou Tlemcen</option>
                            <option value="Hopital Drid Hocine de Kouba">H�pital Drid Hocine de Kouba</option>
                            <option value="Hopital de Rouiba Alger">H�pital de Rouiba Alger </option>
                            <option value="Hopital de A�n Oussara Djelfa">H�pital de A�n Oussara Djelfa</option>
                            <option value="Hopital de Collo Skikda">H�pital de Collo Skikda</option>
                            <option value="Hopital Ibn Badis de Constantine">H�pital Ibn Badis de Constantine</option>
                       </select>
                        
                    </div>
                    <br>
                    <div class="form-group">
                        <input type="submit" class="form-control btn btn-primary rounded submit px-3" name="Enregistre" value="Enregistre">
                    </div>
                    
                    
                </form>
                
            </div>
        </div>
         
    </section>
 
</body>
</html>