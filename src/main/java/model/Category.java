package model;

public class Category {

	private int id_category;
	private String name;
	
	public Category(String name) {
		super();
		this.name = name;
	}
	public int getId_category() {
		return id_category;
	}
	public void setId_category(int id_category) {
		this.id_category = id_category;
	}
	public String getName() {
		return name;
	}
	public void setName(String category) {
		this.name = category;
	}
	
	
}
