package model;

public class User {

	private int id_user;
	private String first_name;
	private String last_name;
	private String email;
	private String address;
	private String username;
	private String password;
	
	
	
	public User( String first_name, String last_name, String email, String address, String username,
			String password) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.address = address;
		this.username = username;
		this.password = password;
	}
	
	public User( String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
	
	
