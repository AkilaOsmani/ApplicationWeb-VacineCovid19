package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Customer;
import DAO.CustomerDAO;
import DAO.CustomerDAOImp;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Signup() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustomerDAOImp cd_im_dao = new CustomerDAOImp();
		CustomerDAO cd = new CustomerDAOImp();
	    Customer c = new Customer();
	    String username=request.getParameter("nom");
	    String prenom=request.getParameter("prenom");
	   String date=request.getParameter("date");
	    String Email=request.getParameter("email");
	    String passwode=request.getParameter("motpasse"); 
	    String catg=request.getParameter("catg");
	    String adresse=request.getParameter("Adresse");

	 
	   c.setNom(username);
	   c.setPrenom(prenom);
	    c.setDate(date);
	   c.setEmail(Email);
	   c.setPasswode(passwode);
	   c.setCatrg(catg);
	   c.setAdresse(adresse);
	   cd.insertCustomer(c);
	  cd_im_dao.InsertPatient_RDV(c);
	   this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);

	}

}
