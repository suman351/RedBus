package com.user.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("password");
		String umobile = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_details?useSSL=false","root","Suman@5081");
            PreparedStatement pst = con.prepareStatement("insert into user(uname,uemail,upwd,umobile) values(?,?,?,?)");
            pst.setString(1, uname);
            pst.setString(2, uemail);
            pst.setString(3, upwd);
            pst.setString(4, umobile);
		
		int rowCount = pst.executeUpdate();
		dispatcher = request.getRequestDispatcher("register.jsp");
		if(rowCount > 0){
			request.setAttribute("status", "success");
			
		}else{
			request.setAttribute("status", "failed");
		}
		dispatcher.forward(request, response);
		}
		catch (SQLException e) {
        e.printStackTrace();
	}catch (ClassNotFoundException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
		finally{
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}
}
	