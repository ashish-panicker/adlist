package com.adlist.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.adlist.model.User;
import com.adlist.model.dao.UserDaoImpl;
import com.adlist.model.service.UserService;
import com.adlist.model.service.UserServiceImpl;

/**
 * Servlet implementation class RegisterUser
 */
@WebServlet("/register.user")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {
			User user = new User(email, firstName, lastName, password, new Date());
			UserService userService = new UserServiceImpl(new UserDaoImpl());
			if(userService.findByEmail(email) == null) {
				user.setPassword(userService.hashPassword(user.getPassword()));
				userService.create(user);
				request.setAttribute("user", user);
				request.setAttribute("ex", false);
				System.out.println("inside if...");
			}else {
				request.setAttribute("userPresent", true);
				System.out.println("insode else...");
			}
			
		} catch (NoSuchAlgorithmException e) {
			request.setAttribute("ex", true);
			e.printStackTrace();
		} catch (Exception e) {
			request.setAttribute("ex", true);
			e.printStackTrace();
		} finally {
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}

	}

}
