package BEAN;

public class patient_RDV {

private String injection, date, centre;

	
	
	public patient_RDV(String injection, String date, String centre) {
		super();
		this.injection = injection;
		this.date = date;
		this.centre = centre;
	}

	public patient_RDV() {
		// TODO Auto-generated constructor stub
	}

	public String getInjection() {
		return injection;
	}

	public void setInjection(String injection) {
		this.injection = injection;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCentre() {
		return centre;
	}

	public void setCentre(String centre) {
		this.centre = centre;
	}
}
