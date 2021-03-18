package com.pharmacy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.LoginDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
         
         String n=request.getParameter("username");    
        String p=request.getParameter("password");   
     
        HttpSession session = request.getSession(false);  
        if(session!=null)  
         session.setAttribute("name",n);  
   
         if(LoginDao.validate(n, p)){    
             RequestDispatcher rd=request.getRequestDispatcher("Adminlogin.jsp");    
            rd.forward(request,response);    
         }    
         else{    
            out.print("<p style=\"color:red\">Sorry username or password error</p>");    
            RequestDispatcher rd=request.getRequestDispatcher("Admin.html");    
             rd.include(request,response);    
       }    
   
        out.close();    

}

}
