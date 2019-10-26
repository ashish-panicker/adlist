package com.adlist.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.adlist.model.User;
import com.adlist.model.dao.UserDao;
import com.adlist.model.dao.UserDaoImpl;
import com.adlist.model.service.UserService;
import com.adlist.model.service.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.user")
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("account.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserDao userDao = new UserDaoImpl();
		UserService userService = new UserServiceImpl(new UserDaoImpl());
		String path = "";
		try {
			if(userService.isValidLogin(email, password)) {
				User user = userService.findByEmail(email);
				request.getSession().setAttribute("user", user);
				request.setAttribute("login", true);
				path = "home.jsp";
			}else {
				request.setAttribute("login", false);
				path = "account.jsp";
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			request.setAttribute("login", false);
			request.setAttribute("ex", true);
			path = "account.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

}
