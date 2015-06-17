package net.simflow.ssp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import java.util.ArrayList;
//import java.util.Date;
import java.util.Iterator;
import java.sql.Date;
public class AddPlatService extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddPlatService() {
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
		PlatService platservice=new PlatService();		
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("LogInUser");
		platservice.ownerid=user.id;
		platservice.ownername=user.name;
		platservice.classid=1;
		
		//platservice.birthday=new java.sql.Date(new java.util.Date());
		platservice.platservicename=request.getParameter("platservicename");
		platservice.content=request.getParameter("content");
		platservice.platserviceurl=request.getParameter("platserviceurl");
		//System.out.println(platservice.idplatservice);
		//System.out.println(platservice.comnum);
		//System.out.println(platservice.birthday);
		//System.out.println(platservice.content);
		//System.out.println(platservice.content);
		PlatServiceDAO platservicedao=new PlatServiceDAO();
		try {
			platservicedao.addplatservice(platservice);
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
						    
		request.getRequestDispatcher("/MainPage.jsp").forward(request, response);
		
/*
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
		*/
		
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
