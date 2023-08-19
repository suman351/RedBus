package com.user.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
	          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_details?useSSL=false","root","Suman@5081");
	          PreparedStatement pst = con.prepareStatement("select * from user where uemail =? and upwd=?");
	          pst.setString(1, uemail);
	          pst.setString(2, upwd);
	          
	          ResultSet rs = pst.executeQuery();
	          if(rs.next()){
	        	  if(uemail.equalsIgnoreCase("redbusadmin@gmail.com"))
	        	  {
	        		  System.out.println("Admin");
	        		  session.setAttribute("name", rs.getString("uname"));
		        	  dispatcher = request.getRequestDispatcher("admin.jsp");
	        	  }
	        	  else
	        		  
	        	 
	          {
	        		  System.out.println("Normal");
	        	  session.setAttribute("name", rs.getString("uname"));
	        	  dispatcher = request.getRequestDispatcher("index.jsp");
	          }
	          }
	        	  else{
	        		  System.out.println("Failed");
	        	  request.setAttribute("status", "failed");
	        	  dispatcher = request.getRequestDispatcher("login.jsp");
	          }
	          dispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
