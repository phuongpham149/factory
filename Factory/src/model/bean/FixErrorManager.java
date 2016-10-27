package model.bean;

import java.sql.Date;

public class FixErrorManager {
	private int id;
	private String idProduction;
	private Date dateCreate;
	private int idMachine;
	private Date timeCreate;
	private Date timeFinish;
	private int idFixError;
	private String line;
	private int status;
	private Date downTime;
	private String nameFixError;
	private int count;
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Date getDownTime() {
		return downTime;
	}
	public void setDownTime(Date downTime) {
		this.downTime = downTime;
	}
	public String getNameFixError() {
		return nameFixError;
	}
	public void setNameFixError(String nameFixError) {
		this.nameFixError = nameFixError;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getLine() {
		return line;
	}
	public void setLine(String line) {
		this.line = line;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIdProduction() {
		return idProduction;
	}
	public void setIdProduction(String idProduction) {
		this.idProduction = idProduction;
	}
	public Date getDateCreate() {
		return dateCreate;
	}
	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}
	public int getIdMachine() {
		return idMachine;
	}
	public void setIdMachine(int idMachine) {
		this.idMachine = idMachine;
	}
	public Date getTimeCreate() {
		return timeCreate;
	}
	public void setTimeCreate(Date timeCreate) {
		this.timeCreate = timeCreate;
	}
	public Date getTimeFinish() {
		return timeFinish;
	}
	public void setTimeFinish(Date timeFinish) {
		this.timeFinish = timeFinish;
	}
	public int getIdFixError() {
		return idFixError;
	}
	public void setIdFixError(int idFixError) {
		this.idFixError = idFixError;
	}
	
	public FixErrorManager(int id, String idProduction, Date dateCreate,
			int idMachine, Date timeCreate, Date timeFinish, int idFixError,
			String line, int status, Date downTime, String nameFixError) {
		super();
		this.id = id;
		this.idProduction = idProduction;
		this.dateCreate = dateCreate;
		this.idMachine = idMachine;
		this.timeCreate = timeCreate;
		this.timeFinish = timeFinish;
		this.idFixError = idFixError;
		this.line = line;
		this.status = status;
		this.downTime = downTime;
		this.nameFixError = nameFixError;
	}
	public FixErrorManager() {
		super();
	}
	
	
}
