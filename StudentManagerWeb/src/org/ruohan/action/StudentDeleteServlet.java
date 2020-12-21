package org.ruohan.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ruohan.util.DBUtil;

public class StudentDeleteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//1.设置编码
		request.setCharacterEncoding("utf-8");
		//2.接收参数
	
		String idStr=request.getParameter("id");
        Integer id=Integer.parseInt(idStr);
		
		//3.响应
		String sql ="DELETE FROM student WHERE id=?";
		Object[] objs={id};
		
		DBUtil.update(sql, objs);
		
		
		response.sendRedirect("studentList.jsp");
	}

}
