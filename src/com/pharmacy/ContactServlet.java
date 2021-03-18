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
 * Servlet implementation class ContactServlet
 */
@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
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
		//String t = request.getParameter("oid");
		String s = request.getParameter("nam");
		String k =request.getParameter("email");
		String a =request.getParameter("sub");
		String n = request.getParameter("mess");
		//String b = request.getParameter("mobile");
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/pms","root","Nitte");  
			 
			PreparedStatement ps=con.prepareStatement(  
			"insert into contact(name,email,subj,message) values(?,?,?,?)");  
			

			//ps.setString(1,t);
			ps.setString(1,s);  
			ps.setString(2,k);  
			ps.setString(3,a);  
			ps.setString(4,n);  
			//ps.setString(5,b);  
			
			int i=ps.executeUpdate();  
			if(i>0)  
		
			response.sendRedirect("contact.html");
			out.print("You are successfully registered...");  
			     
			         
			}catch (Exception e2) {System.out.println(e2);}  
			         
			out.close(); 
	}

}
