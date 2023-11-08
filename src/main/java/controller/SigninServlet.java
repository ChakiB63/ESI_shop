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
 * Servlet implementation class SigninServlet
 */
public class SigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SigninServlet() {
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

		System.out.println("servlet");
		if ((request.getParameter("user_name")!=null) & (request.getParameter("password")!=null))
		{
			System.out.println("condition");
			String username= request.getParameter("user_name");
			String password= request.getParameter("password");
	
			User u = new User(username, password);
			ConnectDB udb= new ConnectDB();
			
			try {
				u = udb.findUser(u);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(u!=null)
			{
				System.out.println("Trouvé");
				request.setAttribute("id_user",u.getId_user());
				request.getRequestDispatcher("./home.jsp").forward(request,response);
				return;
			}
		}

			request.setAttribute("Erreur","Login ou mot de passe incorrect");
			request.getRequestDispatcher("./signin.jsp").forward(request, response);
			return;
		
	}

}
