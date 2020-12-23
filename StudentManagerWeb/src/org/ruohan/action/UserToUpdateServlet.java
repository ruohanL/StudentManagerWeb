package org.ruohan.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ruohan.bean.Student;
import org.ruohan.bean.User;
import org.ruohan.dao.StudentDao;
import org.ruohan.dao.UserDao;

public class UserToUpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ���ñ���

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		// ���ղ���

		String idStr = request.getParameter("id");
		Integer id = Integer.parseInt(idStr);
		// ��Ӧ

		User user = UserDao.getUserByID(id);

		request.setAttribute("user", user);

		request.getRequestDispatcher("managerUpdate.jsp").forward(request,
				response);
	}

}
