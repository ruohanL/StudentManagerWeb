package org.ruohan.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ruohan.bean.Student;
import org.ruohan.dao.StudentDao;
import org.ruohan.util.DBUtil;

public class StudentUpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.设置编码
		request.setCharacterEncoding("utf-8");
		// 2.接收参数
		String idStr = request.getParameter("id");
		Integer id = Integer.parseInt(idStr);
		
		String studentId = request.getParameter("studentId");		
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");	
		String ageStr = request.getParameter("age");
		Integer age = Integer.parseInt(ageStr);	
		String clazz = request.getParameter("clazz");
		String phone = request.getParameter("phone");

		// 3.响应
		String sql = "update student set student_id= ?, name=?, sex=?, age= ?, clazz= ?,phone= ? where id= ?";
		Object[] objs = { studentId, name, sex, age, clazz, phone, id };

	    int count= DBUtil.update(sql, objs);
         if(count>0){
        	 System.out.println("update success");
        	 response.sendRedirect("studentList.jsp"); 
         }else{
        	 System.out.println("update error"); 
         }
		
	}
}
