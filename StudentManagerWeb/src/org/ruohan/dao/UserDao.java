package org.ruohan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.ruohan.bean.User;
import org.ruohan.util.DBUtil;

public class UserDao {

	public static User login(String userName, String pwd) {

		Connection conn = DBUtil.getConn();

		String sql = "SELECT * FROM users WHERE user_name = ? AND pwd = ? ";
		User user = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, userName);
			ps.setString(2, pwd);

			rs = ps.executeQuery();

			if (rs.next()) {
				user = new User();
				user.setUserName(rs.getString("user_name"));
				user.setPwd(rs.getString("pwd"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, ps, rs);
		}

		return user;
	}

	public static User getUser() {

		Connection conn = DBUtil.getConn();

		String sql = "SELECT * FROM users ";
		User user = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("user_name"));
				user.setPwd(rs.getString("pwd"));
				user.setName(rs.getString("name"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, ps, rs);
		}

		return user;
	}

	public static User getUserByID(Integer id) {

		Connection conn = DBUtil.getConn();

		String sql = "SELECT * FROM users WHERE id= ?";
		User user = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			rs = ps.executeQuery();

			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("user_name"));
				user.setPwd(rs.getString("pwd"));
				user.setName(rs.getString("name"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, ps, rs);
		}

		return user;
	}

}
