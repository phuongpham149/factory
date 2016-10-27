package model.bean;

public class User {
	private String id;
	private String name;
	private int idPosition;
	private int role;
	private String password;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIdPosition() {
		return idPosition;
	}
	public void setIdPosition(int idPosition) {
		this.idPosition = idPosition;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User(String id, String name, int idPosition, int role,
			String password) {
		super();
		this.id = id;
		this.name = name;
		this.idPosition = idPosition;
		this.role = role;
		this.password = password;
	}
	public User() {
		super();
	}
	
	
}
