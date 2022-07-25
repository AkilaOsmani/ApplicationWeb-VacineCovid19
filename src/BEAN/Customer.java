package BEAN;

public class Customer {
	
	
private int id;
private	String nom;
private	String prenom;
private String date;
private String passwode;
private String Email;
private String catrg;
private String adresse;


public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;}

public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}

public String getPrenom() {
	return prenom;
}

public void setPrenom(String prenom) {
	this.prenom = prenom;
}

public String getDate() {
	return date;
}


public void setDate(String date) {
	this.date = date;
}

public String getPasswode() {
	return passwode;
}
public void setPasswode(String passwode) {
	this.passwode = passwode;
}

public String getEmail() {
	return Email;
}
public void setEmail(String Email) {
	this.Email = Email;
}


public String getCatrg() {
	return catrg;
}
public void setCatrg(String catrg) {
	this.catrg = catrg;
}


public String getAdresse() {
	return adresse;
}

public void setAdresse(String adresse) {
	this.adresse = adresse;
}



public Customer(int id, String nom, String prenom, String date, String passwode, String email, String catrg,
		String adresse) {
	super();
	this.id = id;
	this.nom = nom;
	this.prenom = prenom;
	this.date = date;
	this.passwode = passwode;
	Email = email;
	this.catrg = catrg;
	this.adresse = adresse;
}
//////////////////////////////////////////////////////////////
public Customer(String passwode, String email) {
	super();
	this.passwode = passwode;
	Email = email;
}



public Customer(String nom, String prenom, String passwode, String email) {
	super();
	this.nom = nom;
	this.prenom = prenom;
	this.passwode = passwode;
	Email = email;
}

public Customer() {
	super();
	
}




	
	
	
}
