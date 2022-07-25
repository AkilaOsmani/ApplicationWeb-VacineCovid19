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
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String psw;
	static String eml;
  
    public Login() {
        super();
   
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String form;
		  CustomerDAO cd = new CustomerDAOImp();
		  Customer c = new BEAN.Customer();
		  String email=request.getParameter("email");
		  String motpass=request.getParameter("motpasse")	;
		
		  psw = motpass;
		  eml = email;
		c =cd.getCustomer(email, motpass);
		 if (c!=null && c.getEmail()!=null && c.getCatrg() !=null) {

		    	
		    	if( c.getCatrg().equals("patient"))  {
		    		/*System.out.print("coucou");
		    		form="Salem le patient  "+c.getNom()+" "+c.getPrenom();
		    		 request.setAttribute("message",form);*/
				    	
		    		this.getServletContext().getRequestDispatcher("/WEB-INF/patient.jsp").forward(request, response);
		 	 	   }
		   
		    	  
		         else {
			 
		        	 System.out.print("coucou 2");  
		        	/*form="Salem le admin  "+c.getNom()+" "+c.getPrenom();
			    		 request.setAttribute("message",form);*/
					    	
			    		this.getServletContext().getRequestDispatcher("/WEB-INF/User-list.jsp").forward(request, response);
			 	 	  }
		 }
		   
	    		
	    else {
	    	
	    	 form="vous n'avez pas un compte ou vous etes tompé , clique sur crée compte";
	    	 request.setAttribute("message",form);
	
	    	this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	 	   
	    	
	 }
	
		 
		 
		 
		 
		 
	
	}}
