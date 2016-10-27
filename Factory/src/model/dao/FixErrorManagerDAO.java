package model.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.FixErrorManager;

public class FixErrorManagerDAO {
	private Connection con = null;
	private CallableStatement cstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<FixErrorManager> fixErrorManagers= null;
	private FixErrorManager fixErrorManager = null;
	
	public ArrayList<FixErrorManager> getListAllMachineError() {
		fixErrorManagers = new ArrayList<>();
		
		try {
			con = SqlConnection.getConnection();
			String query = "{CALL getListAllMachineError()}";
			cstmt = con.prepareCall(query);
			rs = cstmt.executeQuery();
			
			while (rs.next()) {
				FixErrorManager fixError = new FixErrorManager();
				fixError.setId(rs.getInt(1));
				fixError.setIdProduction(rs.getString(2));
				fixError.setDateCreate( rs.getDate(3));
				fixError.setIdMachine(rs.getInt(4));
				fixError.setTimeCreate(rs.getDate(5));
				fixError.setTimeFinish(rs.getDate(6));
				fixError.setIdFixError(rs.getInt(7));
				fixError.setLine(rs.getString(9));
				fixError.setNameFixError(rs.getString(8));
				fixErrorManagers.add(fixError);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlConnection.closeConnection(this.con);
			SqlConnection.closePrepareStatement(cstmt);
			SqlConnection.closeResultSet(rs);
		}
		
		return fixErrorManagers;
	}

	public int updateChangeMachineBySmest(int idOldMachine, int idNewMachine,
			Date timeChange, String idProduction) {
		int result = 0;
		try {
			con = SqlConnection.getConnection();
			String query = "{CALL updateChangeMachineBySmest(?, ?,?,?)}";
			cstmt = con.prepareCall(query);
			cstmt.setInt(1,idOldMachine);
			cstmt.setInt(2, idNewMachine);
			cstmt.setDate(3, timeChange);
			cstmt.setString(4, idProduction);
			result = cstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlConnection.closeConnection(this.con);
			SqlConnection.closePrepareStatement(cstmt);
			SqlConnection.closeResultSet(rs);
		}
		
		return result;
	}

	public int changeStatusFixErrorByProduction(int idMachine) {
		int result = 0;
		try {
			con = SqlConnection.getConnection();
			String query = "{CALL changeStatusFixErrorByProduction(?)}";
			cstmt = con.prepareCall(query);
			cstmt.setInt(1,idMachine);
			result = cstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlConnection.closeConnection(this.con);
			SqlConnection.closePrepareStatement(cstmt);
			SqlConnection.closeResultSet(rs);
		}
		
		return result;
	}

	public int changeIdMachineForProduction(String idProduction, int idMachine) {
		int result = 0;
		try {
			con = SqlConnection.getConnection();
			String query = "{CALL changeIdMachineForProduction(?,?)}";
			cstmt = con.prepareCall(query);
			cstmt.setString(1,idProduction);
			cstmt.setInt(2,idMachine);
			result = cstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlConnection.closeConnection(this.con);
			SqlConnection.closePrepareStatement(cstmt);
			SqlConnection.closeResultSet(rs);
		}
		
		return result;
	}

	public int insertMachineErrorByProduction(String idProduction,
			Date dateCreate, int idMachine, Date timeCreate, int idFixError,
			int status) {
		int result = 0;
		try {
			con = SqlConnection.getConnection();
			String query = "{CALL insertMachineErrorByProduction(?,?,?,?,?,?)}";
			cstmt = con.prepareCall(query);
			cstmt.setString(1,idProduction);
			cstmt.setDate(2, dateCreate);
			cstmt.setInt(3,idMachine);
			cstmt.setDate(4, timeCreate);
			cstmt.setInt(5,idFixError);
			cstmt.setInt(6, status);
			result = cstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlConnection.closeConnection(this.con);
			SqlConnection.closePrepareStatement(cstmt);
			SqlConnection.closeResultSet(rs);
		}
		return result;
	}

	public int deleteMachineErrorByProduction(int idFixErrorManager) {
		int result = 0;
		try {
			con = SqlConnection.getConnection();
			String query = "{CALL deleteMachineErrorByProduction(?)}";
			cstmt = con.prepareCall(query);
			cstmt.setInt(1,idFixErrorManager);
			result = cstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			SqlConnection.closeConnection(this.con);
			SqlConnection.closePrepareStatement(cstmt);
			SqlConnection.closeResultSet(rs);
		}
		return result;
	}

	public ArrayList<FixErrorManager> statisticalByTime() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<FixErrorManager> statisticalByFixError() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<FixErrorManager> countMachineErrorForLine() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<FixErrorManager> getDetailFixErrorByLine(String line) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<FixErrorManager> getAllLine() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<FixErrorManager> getDetailForLine(int line) {
		// TODO Auto-generated method stub
		return null;
	}

}
