package DAO;

import BEAN.Customer;
import BEAN.RDV;
import BEAN.patient_RDV;

public interface CustomerDAO {
	public int insertCustomer(Customer c );
	
	public Customer getCustomer(String email,String pass);

	void ajouter_RDV(patient_RDV pt_rdv, Customer cs);

	RDV get_patient_rdv(String pt_email, String pt_password);


}
