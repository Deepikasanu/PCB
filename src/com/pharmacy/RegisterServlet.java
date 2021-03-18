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
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
	    String n=request.getParameter("firstname");  
		String p=request.getParameter("lastname");  
		String e=request.getParameter("email");  
		String c=request.getParameter("password"); 
		String d=request.getParameter("repassword");
		String f=request.getParameter("tel");
		String m=request.getParameter("address");
		String s=request.getParameter("postcode");
		String b=request.getParameter("radio");
		String h=request.getParameter("city");
		String a=request.getParameter("state");
		//String t=request.getParameter("uloc");
		
		HttpSession session = request.getSession(true);
		session.setAttribute("name",e);
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/pms","root","Nitte");  
			 
			PreparedStatement ps=con.prepareStatement(  
			"insert into register (name,lastname,email,password,repassword,mobile,address,code,gender,city,state) values(?,?,?,?,?,?,?,?,?,?,?)");  
			  
			ps.setString(1,n);  
			ps.setString(2,p);  
			ps.setString(3,e);  
			ps.setString(4,c);  
			ps.setString(5,d);  
			ps.setString(6,f);  
			ps.setString(7,m);  
			ps.setString(8,s);  
			ps.setString(9,b);  
			ps.setString(10,h);  
			ps.setString(11,a);  
			//ps.setString(12,t);  
			 
			         
			int i=ps.executeUpdate();  
			if(i>0)  
		
				
				
			response.sendRedirect("Product.html");
			
			         
			}
		catch (Exception e2) {System.out.println(e2);}  
			//out.print("You are successfully registered...");  
			
			out.close();  
	}

}
