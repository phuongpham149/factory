package model.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.bean.Production;

public class ProductionDAO {
	private Connection con = null;
	private CallableStatement cstmt = null;
	private ResultSet rs = null;
	
	private Production production = null;
	public Production getProductionByUsernamePassword(String id, String password) {
		try {
			con = SqlConnection.getConnection();
			String query = "{CALL getProductionByUsernamePassword(?,?)}";
			cstmt = con.prepareCall(query);
			rs = cstmt.executeQuery();
			
			while (rs.next()) {
				production = new Production();
				production.setId(rs.getString(1));
				production.setName(rs.getString(2));
				production.setLine(rs.getString(3));
				production.setPart(rs.getInt(4));
				production.setPassword(rs.getString(5));
				production.setIdMachine(rs.getString(6));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlConnection.closeConnection(this.con);
			SqlConnection.closePrepareStatement(cstmt);
			SqlConnection.closeResultSet(rs);
		}
		
		return production;
	}

}
