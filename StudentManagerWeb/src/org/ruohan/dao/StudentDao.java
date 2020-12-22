package org.ruohan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.ruohan.bean.Student;
import org.ruohan.util.DBUtil;

public class StudentDao {

	/**
	 * @param args
	 */
	public static ArrayList<Student> getStudents() {

		Connection conn = DBUtil.getConn();

		String sql = "SELECT * FROM student";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Student> students = new ArrayList<Student>();

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {
				Student student = new Student();
				student.setId(rs.getInt("id"));
				student.setStudentId(rs.getString("student_id"));
				student.setName(rs.getString("name"));
				student.setSex(rs.getString("sex"));
				student.setAge(rs.getInt("age"));
				student.setClazz(rs.getString("clazz"));
				student.setPhone(rs.getString("phone"));
				student.setEmail(rs.getString("email"));
				student.setPosition(rs.getString("position"));
				student.setId_card(rs.getString("id_card"));
				student.setAddress(rs.getString("address"));
				students.add(student);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, ps, rs);
		}

		return students;

	}

	public static Student getStudentByID(Integer id) {
		Connection conn = DBUtil.getConn();

		String sql = "SELECT * FROM student WHERE id = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Student student = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();

			if (rs.next()) {
				student = new Student();
				student.setId(rs.getInt("id"));
				student.setStudentId(rs.getString("student_id"));
				student.setName(rs.getString("name"));
				student.setSex(rs.getString("sex"));
				student.setAge(rs.getInt("age"));
				student.setClazz(rs.getString("clazz"));
				student.setPhone(rs.getString("phone"));
				student.setEmail(rs.getString("email"));
				student.setPosition(rs.getString("position"));
				student.setId_card(rs.getString("id_card"));
				student.setAddress(rs.getString("address"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, ps, rs);
		}

		return student;
	}

	public static Student getStudentByNAME(String name) {
		Connection conn = DBUtil.getConn();

		String sql = "SELECT * FROM student WHERE name = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Student student = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();

			if (rs.next()) {
				student = new Student();
				student.setId(rs.getInt("id"));
				student.setStudentId(rs.getString("student_id"));
				student.setName(rs.getString("name"));
				student.setSex(rs.getString("sex"));
				student.setAge(rs.getInt("age"));
				student.setClazz(rs.getString("clazz"));
				student.setPhone(rs.getString("phone"));
				student.setEmail(rs.getString("email"));
				student.setPosition(rs.getString("position"));
				student.setId_card(rs.getString("id_card"));
				student.setAddress(rs.getString("address"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, ps, rs);
		}

		return student;
	}
}
