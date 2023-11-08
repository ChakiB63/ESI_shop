package model;


public class Product {

	private int id_product;
	private String name;
	private int price;
	private int id_product_category;
	private String picture;
	private String particularity;
	private String description;
	public Product() {}
	
	public Product( int id_product, String name, int price, int id_product_category, String picture,
			String particularity, String description) {
		this.id_product = id_product;
		this.name = name;
		this.price = price;
		this.id_product_category = id_product_category;
		this.picture = picture;
		this.particularity = particularity;
		this.description = description;
	}
	public Product( String name, int price, int id_product_category, String picture,
			String particularity, String description) {
		this.name = name;
		this.price = price;
		this.id_product_category = id_product_category;
		this.picture = picture;
		this.particularity = particularity;
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_Product) {
		this.id_product = id_Product;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getId_product_category() {
		return id_product_category;
	}

	public void setId_product_category(int id_product_category) {
		this.id_product_category = id_product_category;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getParticularity() {
		return particularity;
	}

	public void setParticularity(String particularity) {
		this.particularity = particularity;
	}

	
	
	
}
