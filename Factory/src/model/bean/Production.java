package model.bean;

public class Production {
	private String id;
	private String name;
	private String line;
	private int part;
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
	public String getLine() {
		return line;
	}
	public void setLine(String line) {
		this.line = line;
	}
	public int getPart() {
		return part;
	}
	public void setPart(int part) {
		this.part = part;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Production(String id, String name, String line, int part,
			String password) {
		super();
		this.id = id;
		this.name = name;
		this.line = line;
		this.part = part;
		this.password = password;
	}
	public Production() {
		super();
	}
	
	
}
