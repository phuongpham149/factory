package model.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.bean.User;

public class UserDAO {
	private Connection con = null;
	private CallableStatement cstmt = null;
	private ResultSet rs = null;
	
	private User user = null;
	
	public User getUserByUsernamePassword(String id, String password) {
		
		try {
			con = SqlConnection.getConnection();
			String query = "{CALL getUserByUsernamePassword(?,?)}";
			cstmt = con.prepareCall(query);
			rs = cstmt.executeQuery();
			
			while (rs.next()) {
				user = new User();
				user.setId(rs.getString(1));
				user.setName(rs.getString(2));
				user.setIdPosition(rs.getInt(3));
				user.setRole(rs.getInt(4));
				user.setPassword(rs.getString(5));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlConnection.closeConnection(this.con);
			SqlConnection.closePrepareStatement(cstmt);
			SqlConnection.closeResultSet(rs);
		}
		
		return user;
	}

}
