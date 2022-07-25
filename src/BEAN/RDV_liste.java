package BEAN;

import java.util.ArrayList;

public class RDV_liste {

	private String Nom , Prenom, first_injection,centre_1, second_injection,centre_2, third_injection,centre_3;
	private ArrayList<RDV_liste> rdv_liste = new ArrayList<RDV_liste>();
	
	
	

	public ArrayList<RDV_liste> getRdv_liste() {
		return rdv_liste;
	}

	public void setRdv_liste(ArrayList<RDV_liste> rdv_liste) {
		this.rdv_liste = rdv_liste;
	}
	
	public RDV_liste() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RDV_liste(String nom, String prenom, String first_injection, String centre_1, String second_injection,
			String centre_2, String third_injection, String centre_3) {
		super();
		this.Nom = nom;
		this.Prenom = prenom;
		this.first_injection = first_injection;
		this.centre_1 = centre_1;
		this.second_injection = second_injection;
		this.centre_2 = centre_2;
		this.third_injection = third_injection;
		this.centre_3 = centre_3;
	}

	public String getNom() {
		return Nom;
	}

	public void setNom(String nom) {
		Nom = nom;
	}

	public String getPrenom() {
		return Prenom;
	}

	public void setPrenom(String prenom) {
		Prenom = prenom;
	}

	public String getFirst_injection() {
		return first_injection;
	}

	public void setFirst_injection(String first_injection) {
		this.first_injection = first_injection;
	}

	public String getCentre_1() {
		return centre_1;
	}

	public void setCentre_1(String centre_1) {
		this.centre_1 = centre_1;
	}

	public String getSecond_injection() {
		return second_injection;
	}

	public void setSecond_injection(String second_injection) {
		this.second_injection = second_injection;
	}

	public String getCentre_2() {
		return centre_2;
	}

	public void setCentre_2(String centre_2) {
		this.centre_2 = centre_2;
	}

	public String getThird_injection() {
		return third_injection;
	}

	public void setThird_injection(String third_injection) {
		this.third_injection = third_injection;
	}

	public String getCentre_3() {
		return centre_3;
	}

	public void setCentre_3(String centre_3) {
		this.centre_3 = centre_3;
	}
	
	
}
