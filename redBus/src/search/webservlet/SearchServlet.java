package search.webservlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import search.dao.SearchDAO;
import search.model.Search;

	@WebServlet("/")
	public class SearchServlet extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	    private SearchDAO searchDAO;

	    public void init() {
	        searchDAO = new SearchDAO();
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	        doGet(request, response);
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	        String action = request.getServletPath();

	        try {
	            switch (action) {
	                case "/new":
	                    showNewForm(request, response);
	                    break;
	                case "/insert":
	                    insertUser(request, response);
	                    break;
	                case "/delete":
	                    deleteUser(request, response);
	                    break;
	                case "/edit":
	                    showEditForm(request, response);
	                    break;
	                case "/update":
	                    updateUser(request, response);
	                    break;
	                default:
	                    listUser(request, response);
	                    break;
	            }
	        } catch (SQLException ex) {
	            throw new ServletException(ex);
	        }
	    }

	    private void listUser(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, IOException, ServletException {
	        List < Search > listUser = searchDAO.selectAllUsers();
	        request.setAttribute("listUser", listUser);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
	        dispatcher.forward(request, response);
	    }

	    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	        RequestDispatcher dispatcher = request.getRequestDispatcher("Book.jsp");
	        dispatcher.forward(request, response);
	    }

	    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        Search existingUser = searchDAO.selectUser(id);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("Book.jsp");
	        request.setAttribute("user", existingUser);
	        dispatcher.forward(request, response);

	    }

	    private void insertUser(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, IOException {
	        String name = request.getParameter("name");
	        String origin = request.getParameter("origin");
	        String destination = request.getParameter("destination");
	        String email = request.getParameter("email");
	        int age= Integer.parseInt(request.getParameter("age"));
	        Search newUser = new Search(name, origin, destination,email,age);
	        searchDAO.insertUser(newUser);
	        response.sendRedirect("payment.jsp");
	    }

	    private void updateUser(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        String name = request.getParameter("name");
	        String origin = request.getParameter("origin");
	        String destination = request.getParameter("destination");
	        String email = request.getParameter("email");
	        int age = Integer.parseInt(request.getParameter("age"));
	        
	        Search book = new Search(id, name, origin, destination,email,age);
	        searchDAO.updateUser(book);
	        response.sendRedirect("payment.jsp");
	    }

	    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
	    throws SQLException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        searchDAO.deleteUser(id);
	        response.sendRedirect("payment.jsp");

	    }
	}


