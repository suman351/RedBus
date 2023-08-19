package com.bus.payment;

import java.io.IOException;
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

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String chname = request.getParameter("chname");
		String cnumber = request.getParameter("cnumber");
		String expairy = request.getParameter("expairy");
		String cvv = request.getParameter("cvv");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payment?useSSL=false","root","Suman@5081");
            PreparedStatement pst = con.prepareStatement("insert into pay(chname,cnumber,expairy,cvv) values(?,?,?,?)");
            pst.setString(1, chname);
            pst.setString(2, cnumber);
            pst.setString(3, expairy);
            pst.setString(4, cvv);
		
		int rowCount = pst.executeUpdate();
		dispatcher = request.getRequestDispatcher("payment.jsp");
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
	
