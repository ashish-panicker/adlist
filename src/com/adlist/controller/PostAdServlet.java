package com.adlist.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.adlist.model.Post;
import com.adlist.model.User;
import com.adlist.model.dao.PostDao;
import com.adlist.model.dao.PostDaoImpl;
import com.adlist.model.dao.UserDao;
import com.adlist.model.dao.UserDaoImpl;
import com.adlist.model.service.PostService;
import com.adlist.model.service.PostServiceImpl;
import com.adlist.model.service.UserService;
import com.adlist.model.service.UserServiceImpl;

/**
 * Servlet implementation class PostAdServlet
 */
@WebServlet("/post_ad.do")
public class PostAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PostAdServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("post.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User user = (User) request.getSession().getAttribute("user");

		UserDao userDao = new UserDaoImpl();
		UserService userService = new UserServiceImpl(userDao);

		String title = request.getParameter("title");
		String area = request.getParameter("area");
		String zipcode = request.getParameter("zipcode");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		String email = request.getParameter("email");
		String[] callme = request.getParameterValues("callme");
		String phone = request.getParameter("phone");
		String contactme = request.getParameter("contactme");

		boolean emailMe = false;
		boolean callMe = false;
		boolean textMe = false;

		if (contactme.equals("yes")) {
			emailMe = !emailMe;
		}
		if (callme != null) {
			for (String option : callme) {
				if (option.equals("call")) {
					callMe = !callMe;
				} else if (option.equals("text")) {
					textMe = !textMe;
				}
			}
		}

		Post post = new Post(title, area, zipcode, category, description, email, phone, new Date(), emailMe, callMe,
				textMe);
		PostDao postDao = new PostDaoImpl();
		PostService postService = new PostServiceImpl(postDao);
		try {
			System.out.println("before post insert...");
			postService.create(post);
			System.out.println("after post insert...");
			request.setAttribute("posted", true);
		} catch (Exception ex) {
			System.out.println("after post insert exception...");
			ex.printStackTrace();
			request.setAttribute("posted", true);
		}finally {
			System.out.println("inside finally...");
			request.getRequestDispatcher("home.jsp").forward(request, response);
			
		}

	}

}
