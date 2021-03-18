package com.pharmacy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Addmail
 */
@WebServlet("/Addmail")
public class Addmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String n=request.getParameter("notify"); 
		
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/pms","root","Nitte");  
			 
			PreparedStatement ps=con.prepareStatement(  
			"insert into addmail (name) values(?)");  
			  
			ps.setString(1,n);  
			
			int i=ps.executeUpdate();  
			if(i>0)  
		
				
				out.println("Sucessfully Inserted");
			response.sendRedirect("detail1.jsp");
			
			         
			}catch (Exception e2) {System.out.println(e2);}  
			//out.print("You are successfully registered...");  
			
			out.close();  
	}

}
