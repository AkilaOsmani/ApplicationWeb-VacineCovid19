package DAO;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import DAO.MyConnectionProvider;
import BEAN.Customer;
import BEAN.RDV;
import BEAN.RDV_liste;
import BEAN.patient_RDV;

public class manipuler_patient_RDV implements CustomerDAO {
	
	static Connection con;
	static PreparedStatement ps;
	ResultSet rs;
	
	
	
	
	public void ajouter_RDV(patient_RDV pt_rdv, Customer cs) {
	
		if(pt_rdv.getInjection().equals("1ere_injection")) {
			try { 
				con=MyConnectionProvider.getCon();
				ps = con.prepareStatement
					("UPDATE patient_rdv SET 1ere_injection=?, centre_1=? "+
						          "WHERE Email= ? and Motpasse= ?");
						//
				 ps.setString(1, pt_rdv.getDate());
				 ps.setString(2, pt_rdv.getCentre());
				 ps.setString(3, cs.getEmail());
				 ps.setString(4, cs.getPasswode());
					//
				 ps.executeUpdate();
				 con.close();
				} catch (SQLException e) {
					e.printStackTrace();
					}
			
		}
		
		if(pt_rdv.getInjection().equals("2eme_injection")) {
			try {
				con=MyConnectionProvider.getCon();
				ps = con.prepareStatement
					("UPDATE patient_rdv SET 2eme_injection=?, centre_2=? "+
					          "WHERE Email= ? and Motpasse= ?");
						//
				 ps.setString(1, pt_rdv.getDate());
				 ps.setString(2, pt_rdv.getCentre());
				 ps.setString(3, cs.getEmail());
				 ps.setString(4, cs.getPasswode());
					//
				 ps.executeUpdate();
				 con.close();
					
				} catch (SQLException e) {
					e.printStackTrace();
					}
		}
		
		if(pt_rdv.getInjection().equals("3eme_injection")) {
			try {
				con=MyConnectionProvider.getCon();
				ps = con.prepareStatement
					("UPDATE patient_rdv SET 3eme_injection=?, centre_3=? "+
					          "WHERE Email= ? and Motpasse= ?");
						//
				 ps.setString(1, pt_rdv.getDate());
				 ps.setString(2, pt_rdv.getCentre());
				 ps.setString(3, cs.getEmail());
				 ps.setString(4, cs.getPasswode());
					//
				 ps.executeUpdate();
				 con.close();
				} catch (SQLException e) {
					e.printStackTrace();
					}
		}
		

		
		
	}
	
	

	public RDV get_patient_rdv ( String pt_email, String pt_password) {
		
		RDV rdv = new RDV();
		try {
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("select Nom, Prenom, 1ere_injection, centre_1,"
					+ " 2eme_injection, centre_2, 3eme_injection, centre_3"
					+ " from patient_rdv WHERE Email= ? and Motpasse= ?");
			ps.setString(1, pt_email);
			ps.setString(2, pt_password);
			
			
			rs =ps.executeQuery();
			
			while(rs.next()) {
				rdv.setNom(rs.getString(1));
				rdv.setPrenom(rs.getString(2));
				rdv.setFirst_injection(rs.getString(3));
				rdv.setSecond_injection(rs.getString(4));
				rdv.setThird_injection(rs.getString(5));
				rdv.setCentre(rs.getString(6));
			}
	
			
			con.close();
			
		}catch(Exception e) {System.out.println(e);}
			
			
		return rdv;
	
	}

			private ArrayList<RDV_liste> rdv_liste = new ArrayList<RDV_liste>();
	
	public ArrayList <RDV_liste> select_RDV (String email, String password){
		
		
		con = MyConnectionProvider.getCon();
		try {
			ps = con.prepareStatement("select Nom, Prenom, 1ere_injection, centre_1,2eme_injection, centre_2, "
					+ "3eme_injection, centre_3 from patient_rdv where Email= ? and Motpasse= ?");
			ps.setString(1, email);
			ps.setString(2, password);
			
			rs = ps.executeQuery();
			
			System.out.println("executeQuery() dcr");
			while(rs.next()) {
				RDV_liste L = new RDV_liste();
				
				L.setNom(rs.getString("Nom")); 
				L.setPrenom(rs.getString("Prenom"));
				L.setFirst_injection(rs.getString("1ere_injection"));
				L.setCentre_1(rs.getString("centre_1"));
				L.setSecond_injection(rs.getString("2eme_injection"));
				L.setCentre_2(rs.getString("centre_2"));
				L.setThird_injection(rs.getString("3eme_injection"));
				L.setCentre_3(rs.getString("centre_3"));
				
				rdv_liste.add(L);
			}
			
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rdv_liste;
		
	}
	

	@Override
	public int insertCustomer(Customer c) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public Customer getCustomer(String email, String pass) {
		// TODO Auto-generated method stub
		return null;
	}

}
