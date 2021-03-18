package com.pharmacy;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UploadHealthServlet
 */
@WebServlet("/UploadHealthServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class UploadHealthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadHealthServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    private static final int BUFFER_SIZE = 4096;
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/pms";
    private String dbUser = "root";
    private String dbPass = "Nitte";

    //naive way to obtain a connection to database
    //this MUST be improved, shown for 
    private Connection getConnection() {
        Connection conn = null;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        } catch (Exception e) {
            //wrapping any exception and rethrowing it
            //inside a RuntimeException
            //so the method is silent to exceptions
            throw new RuntimeException("Failed to obtain database connection.", e);
        }
        return conn;
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			   throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String l = request.getParameter("city");
         String s = request.getParameter("cmpa");
         String t = request.getParameter("qyt");
         String n = request.getParameter("mfdate");
         String k = request.getParameter("eddate");
         String u =request.getParameter("prc");
         //String a = request.getParameter("sim");
        // String i = request.getParameter("mem");
         
         InputStream inputStream = null; // input stream of the upload file
         // obtains the upload file part in this multipart request
         Part filePart = request.getPart("Photo");
         if (filePart != null) {
             // prints out some information for debugging
             System.out.println(filePart.getName());
             System.out.println(filePart.getSize());
             System.out.println(filePart.getContentType());

             //obtains input stream of the upload file
             //the InputStream will point to a stream that contains
             //the contents of the file
             inputStream = filePart.getInputStream();
         }
         
         Connection conn = null; // connection to the database
         String message = null; // message will be sent back to client
         try {
             // connects to the database
             conn = getConnection();
             // constructs SQL statement
             String sql = "INSERT INTO health (Name,Company,Quantity,MDate,EDate,Price,image) values (?,?,?,?,?,?,?)";
             //Using a PreparedStatement to save the file
             PreparedStatement pstmtSave = conn.prepareStatement(sql);

             pstmtSave.setString(1, l);
             pstmtSave.setString(2, s);
             pstmtSave.setString(3, t);
             pstmtSave.setString(4, n);
             pstmtSave.setString(5, k);
             pstmtSave.setString(6, u);
             
             if (inputStream != null) {
                 //files are treated as BLOB objects in database
                 //here we're letting the JDBC driver
                 //create a blob object based on the
                 //input stream that contains the data of the file
                 pstmtSave.setBlob(7, inputStream);
             }
             //sends the statement to the database server
             int row = pstmtSave.executeUpdate();
             if (row > 0) {
                 message = "File uploaded and saved into database";
             }
             
             String filepath = "C:\\Users\\Tufel ahmed\\Desktop\\tufel\\startbootstrap-small-business-1.0.3\\img\\logo.png";
             //Obtaining the file from database
            /* //Using a second statement
             String sql1 = "SELECT photo FROM product_master WHERE first_name=? AND last_name=?";
             PreparedStatement pstmtSelect = conn.prepareStatement(sql1);
             pstmtSelect.setString(1, l);
             pstmtSelect.setString(2, s);
             PreparedStatement statement1;
 			ResultSet result = pstmtSelect.executeQuery();
             if (result.next()) {
                 Blob blob = result.getBlob("photo");
                 InputStream inputStream1 = blob.getBinaryStream();
                 OutputStream outputStream = new FileOutputStream(filepath);
                 int bytesRead = -1;
                 byte[] buffer = new byte[BUFFER_SIZE];
                 while ((bytesRead = inputStream1.read(buffer)) != -1) {
                     outputStream.write(buffer, 0, bytesRead);
                 }
                 inputStream1.close();
                 outputStream.close();
                 System.out.println("File saved");
             }*/
         } catch (SQLException ex) {
             message = "ERROR: " + ex.getMessage();
             ex.printStackTrace();
         } finally {
             if (conn != null) {
                 // closes the database connection
                 try {
                     conn.close();
                 } catch (SQLException ex) {
                     //silent
                 }
             }
             // sets the message in request scope
             request.setAttribute("message", message);

             // forwards to the message page
             getServletContext().getRequestDispatcher("/HealthCare.jsp")
                 .include(request, response);
         }
	}

}
