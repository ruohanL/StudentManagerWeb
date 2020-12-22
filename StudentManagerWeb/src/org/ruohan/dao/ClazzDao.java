package org.ruohan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.ruohan.bean.Clazz;
import org.ruohan.util.DBUtil;

public class ClazzDao {

	public static ArrayList<Clazz> getClazzs() {

		Connection conn = DBUtil.getConn();

		String sql = "SELECT * FROM clazz";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Clazz> clazzs = new ArrayList<Clazz>();

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {
				Clazz clazz = new Clazz();
				clazz.setId(rs.getInt("id"));
				clazz.setDepartment(rs.getString("department"));
				clazz.setGrade(rs.getString("grade"));
				clazz.setLeader(rs.getString("leader"));
				clazz.setName(rs.getString("name"));
				clazz.setNum(rs.getInt("num"));
				clazz.setSubject(rs.getString("subject"));

				clazzs.add(clazz);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, ps, rs);
		}

		return clazzs;

	}

}
