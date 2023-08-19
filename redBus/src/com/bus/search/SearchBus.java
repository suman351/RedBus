package com.bus.search;

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * Servlet implementation class SearchBus
 */
@WebServlet("/searchbus")
public class SearchBus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
		PreparedStatement pst;
		ResultSet rs;
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			try{
				
				PrintWriter out=response.getWriter();
				response.setContentType("text/html");
				
				String origin = request.getParameter("origin");
				String destination = request.getParameter("destination");
				
				
				Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_details?useSSL=false","root","Suman@5081");
	            PreparedStatement pst = con.prepareStatement("select * from buses where origin =? and destination=?");
	            pst.setString(1, origin);
	            pst.setString(2, destination);
	           
				
	            ResultSet rs = pst.executeQuery();
	            out.println("<table width=70% border=1 border-collapse :collapse;>");
	            out.println("<tr><td colspan =5");
	            out.println("</td></tr>");
	            out.println("<tr>");
	            out.println("<th>Bus Name</th>");
	            out.println("<th>Origin</th>");
	            out.println("<th>Destination</th>");
	            out.println("<th>Departure</th>");
	            out.println("<th>Arrival</th>");
	            out.println("<th>Price</th>");
	            out.println("<th>Action</th>");
	            out.println("</tr>");
	            
	            while(rs.next()){
	            	out.println("<tr>");
	            	out.println("<td>" + rs.getString("busname")+"</td>");
	            	out.println("<td>" + rs.getString("origin")+"</td>");
	            	out.println("<td>" + rs.getString("destination")+"</td>");
	            	out.println("<td>" + rs.getString("departure")+"</td>");
	            	out.println("<td>" + rs.getString("arrival")+"</td>");
	            	out.println("<td>" + rs.getString("price")+"</td>");
	            	out.println("<td><a href=Book.jsp><button>Book</button></a></td>");
	            	out.println("</tr>");
	            }
	            out.println("</table>");
			}
			catch(ClassNotFoundException ex){
				
			}catch(Exception e){
				throw new ServletException("search Failed",e);
			}
		}

	

}
