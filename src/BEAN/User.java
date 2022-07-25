package BEAN;

public class User {
	
	    private  int id;
	    private String name;
	    private String email;
	    private String date_naissance;
	    private String RDV;
	    private int type_dose;

	   

	    public User() {
			super();
		}
		public User(String name, String email, String date_naissance, String rDV, int type_dose) {
			super();
			this.name = name;
			this.email = email;
			this.date_naissance = date_naissance;
			RDV = rDV;
			this.type_dose = type_dose;
		}
		public User(int id, String name, String email, String date_naissance, String rDV, int type_dose) {
			super();
			this.id = id;
			this.name = name;
			this.email = email;
			this.date_naissance = date_naissance;
			RDV = rDV;
			this.type_dose = type_dose;
		}
		public int getId() {
	        return id;
	    }
	    public void setId(int id) {
	        this.id = id;
	    }
	    public String getName() {
	        return name;
	    }
	    public void setName(String name) {
	        this.name = name;
	    }
	    public String getEmail() {
	        return email;
	    }
	    public void setEmail(String email) {
	        this.email = email;
	    }
		public String getDate_naissance() {
			return date_naissance;
		}
		public void setDate_naissance(String date_naissance) {
			this.date_naissance = date_naissance;
		}
		public String getRDV() {
			return RDV;
		}
		public void setRDV(String rDV) {
			RDV = rDV;
		}
		public int getType_dose() {
			return type_dose;
		}
		public void setType_dose(int type_dose) {
			this.type_dose = type_dose;
		}
	    
	}