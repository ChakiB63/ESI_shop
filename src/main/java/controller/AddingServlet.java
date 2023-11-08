package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import model.ConnectDB;
import model.Product;

import java.io.IOException;
import java.sql.SQLException;

/**
 * Servlet implementation class AddingServlet
 */
public class AddingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddingServlet() {
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


		if(request.getAttribute("add")=="product") {
			if ((request.getParameter("name")!=null) && (request.getParameter("category")!=null)&&(request.getParameter("price")!=null) 
					&& (request.getParameter("particularity")!=null)&&(request.getParameter("description")!=null) && (request.getParameter("picture")!=null))
			{
			String name= request.getParameter("name");
			int price= Integer.parseInt(request.getParameter("price"));
			String category= request.getParameter("category");
			String particularity= request.getParameter("particularity");
			String description= request.getParameter("description");
			String picture= request.getParameter("picture");
			
			
			
			ConnectDB udb= new ConnectDB();
			
			Product p = null;
			try {
				p = new Product(name,price,udb.findId_category(category),picture, particularity, description);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			int t = 0;
			try {
				t=udb.addProduct(p);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(t==0)
			{
				request.setAttribute("Alert", "Echec");
				request.getRequestDispatcher("/modifying.jsp").forward(request,response);
			}
			else
			{
			request.setAttribute("Alert", "Succes");
			request.getRequestDispatcher("/modifying.jsp").forward(request, response);
			}
			}
			else {
			request.setAttribute("Alert", "Manque");
			request.getRequestDispatcher("/modifying.jsp").forward(request, response);
			}
			}
			
			
			
			
			else if(request.getAttribute("add")=="category") {
			if ((request.getParameter("category_new")!=null))
			{
			String name= request.getParameter("name");
			
			ConnectDB udb= new ConnectDB();
			
			Category c = null;
			c = new Category(name);
			int t = 0;
			try {
				t=udb.addCategory(c);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(t==0)
			{
				request.setAttribute("Alert", "Echec");
				request.getRequestDispatcher("/modifying.jsp").forward(request,response);
			}
			else
			{
			request.setAttribute("Alert", "Succes");
			request.getRequestDispatcher("/modifying.jsp").forward(request, response);
			}
			}
			else {
			request.setAttribute("Alert", "Manque");
			request.getRequestDispatcher("/modifying.jsp").forward(request, response);
			}
			}
		
	}

}
