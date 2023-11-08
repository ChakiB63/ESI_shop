package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ConnectDB;
import model.User;

import java.io.IOException;
import java.sql.SQLException;

/**
 * Servlet implementation class SignupServlet2
 */
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("servlet");
		//System.out.println(request.getParameter("first_name")+"#"+request.getParameter("last_name")+"#"+request.getParameter("email")+"#"+
			//	request.getParameter("address")+"#"+request.getParameter("user_name")+"#"+request.getParameter("password"));
		if ((request.getParameter("user_name")!="") && (request.getParameter("password")!="") &&
				(request.getParameter("first_name")!="") && (request.getParameter("last_name")!="") &&
				(request.getParameter("email")!="") && (request.getParameter("address")!="")
				)
		{
			System.out.println("tt champs remplis");
			String first_name= request.getParameter("first_name");
			String last_name= request.getParameter("last_name");
			String email= request.getParameter("email");
			String adress= request.getParameter("address");
			String username= request.getParameter("user_name");
			String password= request.getParameter("password");
	
			User u = new User(first_name, last_name, email,adress,username, password);
			ConnectDB udb= new ConnectDB();
			
			try {
				udb.addUser(u);
				request.getRequestDispatcher("./signin.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
				request.setAttribute("Erreur","Erreur s'est occurée. Veuillez réessayer, svp.");
				request.getRequestDispatcher("./signup.jsp").forward(request, response);
			
			}
			
		}
		else
		{
			request.setAttribute("Erreur","Données incomplètes. Veuillez remplir tous les champs, svp.");
			request.getRequestDispatcher("./signup.jsp").forward(request, response);
		}
	}

}
