package model.bean;

public class Machine {
	private int id;
	private String name;
	private int idTypeMachine;
	private String manufactory;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIdTypeMachine() {
		return idTypeMachine;
	}
	public void setIdTypeMachine(int idTypeMachine) {
		this.idTypeMachine = idTypeMachine;
	}
	public String getManufactory() {
		return manufactory;
	}
	public void setManufactory(String manufactory) {
		this.manufactory = manufactory;
	}
	public Machine(int id, String name, int idTypeMachine, String manufactory) {
		super();
		this.id = id;
		this.name = name;
		this.idTypeMachine = idTypeMachine;
		this.manufactory = manufactory;
	}
	public Machine() {
		super();
	}
	
	
}
