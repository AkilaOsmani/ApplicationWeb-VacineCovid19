package BEAN;

public class RDV {

	private String nom,prenom, first_injection, second_injection, third_injection,centre;
	
	
	

	public RDV() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RDV(String nom, String prenom, String first_injection, String second_injection, 
			String third_injection, String centre) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.first_injection = first_injection;
		this.second_injection = second_injection;
		this.third_injection = third_injection;
		
		this.centre = centre;
	}

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

 

	public String getFirst_injection() {
		return first_injection;
	}

	public void setFirst_injection(String first_injection) {
		this.first_injection = first_injection;
	}

	public String getSecond_injection() {
		return second_injection;
	}

	public void setSecond_injection(String second_injection) {
		this.second_injection = second_injection;
	}

	public String getThird_injection() {
		return third_injection;
	}

	public void setThird_injection(String third_injection) {
		this.third_injection = third_injection;
	}


	public String getCentre() {
		return centre;
	}

	public void setCentre(String centre) {
		this.centre = centre;
	}
}
