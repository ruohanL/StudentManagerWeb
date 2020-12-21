package org.ruohan.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ruohan.bean.User;

import org.ruohan.dao.UserDao;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String userName = request.getParameter("userName");
		String pwd = request.getParameter("pwd");

		User user = UserDao.login(userName, pwd);

		if (user != null) {
			System.out.println("login success!");
			response.sendRedirect("main.jsp");
		} else {
			String errorMessage = "登录失败，请确认是否输入正确的用户名和密码";
			request.setAttribute("errorMessage", errorMessage);
			request.setAttribute("userName", userName);
			request.setAttribute("pwd", pwd);
			request.getRequestDispatcher("index.jsp")
					.forward(request, response);
			// System.out.println("账户名或密码错误!");
		}
	}

}
