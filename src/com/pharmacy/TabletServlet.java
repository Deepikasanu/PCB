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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TabletServlet
 */
@WebServlet("/TabletServlet")
public class TabletServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TabletServlet() {
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
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
	    String n=request.getParameter("city");  
		String p=request.getParameter("cmp");  
		String e=request.getParameter("qty");  
		String c=request.getParameter("mdd"); 
		String d=request.getParameter("erd");
		String f=request.getParameter("prc");
		
		//String t=request.getParameter("uloc");
		
		HttpSession session = request.getSession(true);
		session.setAttribute("name",e);
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/pms","root","Nitte");  
			 
			PreparedStatement ps=con.prepareStatement(  
			"insert into tablet (Name,Company,Quantity,Mdate,Edate,price) values(?,?,?,?,?,?)");  
			  
			ps.setString(1,n);  
			ps.setString(2,p);  
			ps.setString(3,e);  
			ps.setString(4,c);  
			ps.setString(5,d);  
			ps.setString(6,f);  
			 
			//ps.setString(12,t);  
			 
			         
			int i=ps.executeUpdate();  
			if(i>0)  
		
				
				
			response.sendRedirect("tablet.jsp");
			
			         
			}catch (Exception e2) {System.out.println(e2);}  
			//out.print("You are successfully registered...");  
			
			out.close();  
		
	}

}
