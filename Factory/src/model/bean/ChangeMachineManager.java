package model.bean;

import java.sql.Date;

public class ChangeMachineManager {
	private int id;
	private int idOldMachine;
	private int idNewMachine;
	private Date timeChange;
	private String idProduction;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdOldMachine() {
		return idOldMachine;
	}
	public void setIdOldMachine(int idOldMachine) {
		this.idOldMachine = idOldMachine;
	}
	public int getIdNewMachine() {
		return idNewMachine;
	}
	public void setIdNewMachine(int idNewMachine) {
		this.idNewMachine = idNewMachine;
	}
	public Date getTimeChange() {
		return timeChange;
	}
	public void setTimeChange(Date timeChange) {
		this.timeChange = timeChange;
	}
	public String getIdProduction() {
		return idProduction;
	}
	public void setIdProduction(String idProduction) {
		this.idProduction = idProduction;
	}
	public ChangeMachineManager(int id, int idOldMachine, int idNewMachine,
			Date timeChange, String idProduction) {
		super();
		this.id = id;
		this.idOldMachine = idOldMachine;
		this.idNewMachine = idNewMachine;
		this.timeChange = timeChange;
		this.idProduction = idProduction;
	}
	public ChangeMachineManager() {
		super();
	}
}
