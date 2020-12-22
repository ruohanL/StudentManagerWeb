package org.ruohan.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ruohan.util.DBUtil;

public class StudentAddServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.设置编码
		request.setCharacterEncoding("utf-8");
		// 2.接收参数
		String studentId = request.getParameter("studentId");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String ageStr = request.getParameter("age");
		Integer age = Integer.parseInt(ageStr);
		String clazz = request.getParameter("clazz");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String position = request.getParameter("position");
		String id_cardStr = request.getParameter("id_card");
		Integer id_card = Integer.parseInt(id_cardStr);
		String address = request.getParameter("address");

		// 3.响应
		String sql = "INSERT INTO student values (?,?,?,?,?,?,?,?,?,?)";
		Object[] objs = { studentId, name, sex, age, clazz, phone, email,
				position, id_card, address };

		int count = DBUtil.update(sql, objs);
		if (count > 0) {
			System.out.println("add success");
			response.sendRedirect("studentList.jsp");
		} else {
			System.out.println("add error");
		}

	}

}
