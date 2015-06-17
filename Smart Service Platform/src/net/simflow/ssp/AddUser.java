package net.simflow.ssp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddUser extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddUser() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	this.doPlatService(request, response);
	}

	/**
	 * The doPlatService method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to platservice.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPlatService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String p1 = request.getParameter("password");
		String p2 = request.getParameter("confirm_password");
		if (!p1.equals(p2)){
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		} else {
			User user=new User();
			user.name=request.getParameter("name");
			user.password=request.getParameter("password");
			user.type=request.getParameter("type");
			user.age=request.getParameter("age");
			user.email=request.getParameter("email");
			UserDAO userdao=new UserDAO();
			try {
				userdao.AddUser(user);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//request.setAttribute("cates",cates);
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
