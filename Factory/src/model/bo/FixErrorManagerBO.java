package model.bo;

import java.sql.Date;
import java.util.ArrayList;

import model.bean.FixErrorManager;
import model.dao.FixErrorManagerDAO;

public class FixErrorManagerBO {
	FixErrorManagerDAO fixErrorManagerDAO = new FixErrorManagerDAO();
	
	public int updateChangeMachineBySmest(int idOldMachine, int idNewMachine, Date timeChange, String idProduction){
		return fixErrorManagerDAO.updateChangeMachineBySmest(idOldMachine, idNewMachine, timeChange, idProduction);
	}
	
	public ArrayList<FixErrorManager> getListAllMachineError(){
		return fixErrorManagerDAO.getListAllMachineError();
	}
	
	public int changeStatusFixErrorByProduction(int idMachine){
		return fixErrorManagerDAO.changeStatusFixErrorByProduction(idMachine);
	}
	
	public int changeIdMachineForProduction(String idProduction, int idMachine){
		return fixErrorManagerDAO.changeIdMachineForProduction(idProduction,idMachine);
	}
	
	public int insertMachineErrorByProduction(String idProduction, Date dateCreate, int idMachine, Date timeCreate, int idFixError, int status){
		return fixErrorManagerDAO.insertMachineErrorByProduction(idProduction,dateCreate,idMachine,timeCreate,idFixError,status);
	}
	
	public int deleteMachineErrorByProduction(int idFixErrorManager){
		return fixErrorManagerDAO.deleteMachineErrorByProduction(idFixErrorManager);
	}
	
	public ArrayList<FixErrorManager> statisticalByTime(){
		return fixErrorManagerDAO.statisticalByTime();
	}
	
	public ArrayList<FixErrorManager> statisticalByFixError(){
		return fixErrorManagerDAO.statisticalByFixError();
	}
	
	public ArrayList<FixErrorManager> countMachineErrorForLine(){
		return fixErrorManagerDAO.countMachineErrorForLine();
	}
	
	public ArrayList<FixErrorManager> getDetailFixErrorByLine(String line){
		return fixErrorManagerDAO.getDetailFixErrorByLine(line);
	}
	
	public ArrayList<FixErrorManager> getAllLine(){
		return fixErrorManagerDAO.getAllLine();
	}
	
	public ArrayList<FixErrorManager> getDetailForLine(int line){
		return fixErrorManagerDAO.getDetailForLine(line);
	}
}
