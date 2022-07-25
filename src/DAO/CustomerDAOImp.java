package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BEAN.Customer;
import BEAN.RDV;
import BEAN.patient_RDV;

public class CustomerDAOImp implements CustomerDAO {
static Connection con;
static PreparedStatement ps,pss;
	@Override
	public int insertCustomer(Customer c) {
	int status,statuss=0;String catg;
	try {
		con=MyConnectionProvider.getCon();
		ps=con.prepareStatement("insert into inscrr values(null,?,?,?,?,?,?,?)");
		ps.setString(1, c.getNom());
		ps.setString(2, c.getPrenom());
		ps.setString(3, c.getDate());
		ps.setString(4, c.getEmail());
		ps.setString(5, c.getPasswode());
		ps.setString(6, c.getCatrg() );
		ps.setString(7, c.getAdresse());
		status=ps.executeUpdate();
		con.close();
		
		catg =c.getCatrg();
		
	}catch(Exception e) {System.out.println(e);}
		
		
		return 0;
	}
	
	
	public Customer getCustomer(String email, String pass) {
		Customer c = new Customer();
		try {
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("select * from inscrr where Email = ? and Motpasse =?");
			ps.setString(1, email);
			ps.setString(2, pass);
			
			
			ResultSet rs =ps.executeQuery();
			
			while(rs.next()) {
				c.setNom(rs.getString(2));
				c.setPrenom(rs.getString(3));
				c.setDate(rs.getString(4));
				c.setEmail(rs.getString(5));
				c.setPasswode(rs.getString(6));
				c.setCatrg(rs.getString(7));
				c.setAdresse(rs.getString(8));
			}
	
			
			
			
		}catch(Exception e) {System.out.println(e);}
			
			
		return c;
	}
	
	public int InsertPatient_RDV(Customer c) {
		//int status=0;
	
	try {
		con=MyConnectionProvider.getCon();
		
		ps=con.prepareStatement
		("insert into patient_rdv values (?,?,?,?,?,?,?,?,?,?)");
		//
		ps.setString(1, c.getNom());
		ps.setString(2, c.getPrenom());
		ps.setString(3, c.getEmail());
		ps.setString(4, c.getPasswode());
		ps.setString(5, null);
		ps.setString(6, "centre_1");
		ps.setString(7, null);
		ps.setString(8, "centre_2");
		ps.setString(9, null);
		ps.setString(10, "centre_3");
		//
		
		System.out.println(" M3 InsertPatient_RDV ok!");
		
		ps.executeUpdate();
		
		System.out.println(" M3 InsertPatient_RDV executeUpdate() ok!");
		con.close();
		
		} catch (SQLException e) {
		e.printStackTrace();
		}
		
		
		
		return 0;
	
	}
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	



	@Override
	public void ajouter_RDV(patient_RDV pt_rdv, Customer cs) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public RDV get_patient_rdv(String pt_email, String pt_password) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
