package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Customer;
import BEAN.ListeOfRDV;
import BEAN.RDV;
import BEAN.RDV_liste;
import BEAN.patient_RDV;
import DAO.manipuler_patient_RDV;

/**
 * Servlet implementation class serv_patient
 */
@WebServlet("/serv_patient")
public class serv_patient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static patient_RDV ptRDV ;

	String pt_email = Login.eml;
	String pt_password = Login.psw;
	
	
    public serv_patient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/patient.jsp").forward(request, response);
		

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String injection = request.getParameter("injct");
		String date = request.getParameter("date");
		String centre = request.getParameter("centre");
		
		
		
		ptRDV = new patient_RDV(injection, date, centre);
		
		//RDV_liste rdv  = new RDV_liste();
		Customer cs = new Customer(pt_password, pt_email);
		
		
		manipuler_patient_RDV m_pt_rdv = new manipuler_patient_RDV();
		m_pt_rdv.ajouter_RDV(ptRDV, cs); //ajouter à la table "patient_rdv" la date de l'injection et le centre
		
		
	System.out.println(injection);
	System.out.println(date);
	System.out.println(centre);
	
  //selectionner depuis la table "patient_rdv" un RDV
	
	ListeOfRDV l = new ListeOfRDV();
	
	ArrayList <RDV_liste> rdv_liste = m_pt_rdv.select_RDV(pt_email, pt_password);
	
	l.setRdv_liste(rdv_liste);
	
			
	request.setAttribute("les_rdvs", l);
	
	request.getRequestDispatcher("/WEB-INF/affichage_RDV.jsp").forward(request, response);
	
	
	}

}
