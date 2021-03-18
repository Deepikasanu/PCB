package com.pharmacy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PrintFormParams
 */
@WebServlet("/PrintFormParams")
public class PrintFormParams extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Enumeration<String> Enumeration;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrintFormParams() {
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
		 response.setContentType("text/html");
		    PrintWriter out = response.getWriter();

		   String s=request.getParameter("Person");
		   String t=request.getParameter("emailaddress");
		   String p=request.getParameter("from");
		   String u=request.getParameter("rating");
		   String a=request.getParameter("suggestions");
		   
		   try{  
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/pms","root","Nitte");  
				
				
				PreparedStatement ps=con.prepareStatement(  
						"insert into feedback values(?,?,?,?,?)"); 
				ps.setString(1, s);
				ps.setString(2, t);
				ps.setString(3, p);
				ps.setString(4, u);
				ps.setString(5, a);
				
				
				int i=ps.executeUpdate();  
				if(i>0)  
			  
				response.sendRedirect("feedback.html");
					
			}catch (Exception e2) {System.out.println(e2);}  
	        
	out.close();  
	out.print("submitted...");	
	}

}
