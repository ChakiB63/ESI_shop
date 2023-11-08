package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ConnectDB {

	
	public ConnectDB() {}
	
	
	public Connection connexion() throws SQLException {
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jee", "root", "root");
		return con;
	}
	

	public User findUser(User u) throws SQLException  {
	    PreparedStatement pre= connexion().prepareStatement("Select * from user where username='"+u.getUsername()+"' and password='"+u.getPassword()+"';");
		ResultSet res= pre.executeQuery();
		if(res.next()) {
			u.setId_user(res.getInt(1));
			//System.out.println(u.getId_user());
			//System.out.println("a l'interieur de find");
			return u;
			//why doesn't the first try
		}
		return null;
		}
	
	public String findCategory(int id) throws SQLException  {
	    PreparedStatement pre= connexion().prepareStatement("Select name from category where id_category='"+id+"';");
		ResultSet res= pre.executeQuery();
		while(res.next()) {
			return res.getString(1);
			//why doesn't the first try
		}
		return null;
		}
	
	public int findId_category(String category) throws SQLException  {
	    PreparedStatement pre= connexion().prepareStatement("Select id_category from category where name='"+category+"';");
		ResultSet res= pre.executeQuery();
		while(res.next()) {
			return res.getInt(1);
			//why doesn't the first try
		}
		return 0;
		}
	
	public ArrayList<Product> findProducts() throws SQLException  {
	    
		PreparedStatement pre= connexion().prepareStatement("Select * from product ;");
		ResultSet res= pre.executeQuery();
		ArrayList<Product> products = new ArrayList<Product>();
		while(res.next()) {
			products.add(new Product(res.getInt("id_product"),res.getString("name"), res.getInt("price"),res.getInt("id_product_category"),res.getString("picture"), res.getString("particularity"),res.getString("description")));
		}
		return products;
		}
	
public Product findProduct(int id_product) throws SQLException  {
	    
		PreparedStatement pre= connexion().prepareStatement("Select * from product where id_product='"+id_product+"';");
		ResultSet res= pre.executeQuery();
		while(res.next()) {
			return new Product(res.getString("name"), res.getInt("price"),res.getInt("id_product_category"),res.getString("picture"), res.getString("particularity"),res.getString("description"));
		}
		return null;
		}
	
	public ArrayList<Category> findCategories() throws SQLException  {
	    PreparedStatement pre= connexion().prepareStatement("Select name from category;");
		ResultSet res= pre.executeQuery();
		ArrayList<Category> t=new ArrayList<Category>();
		while(res.next()) {
			t.add(new Category(res.getString("name")));
			//why doesn't the first try
		}
		return t;
		}
			
	public void addUser(User u) throws SQLException {
		
		String s="Insert into user(first_name,last_name,email,address,username, password)"
				+ " values(?,?,?,?,?,?)";
		PreparedStatement t= connexion().prepareStatement(s);
		t.setString(1, u.getFirst_name());
		t.setString(2, u.getLast_name());
		t.setString(3, u.getEmail());
		t.setString(4, u.getAddress());
		t.setString(5, u.getUsername());
		t.setString(6, u.getPassword());
		t.executeUpdate();
	}
	
	public int addCategory(Category c) throws SQLException {
		
		String s="Insert into category(name)"
				+ " values(?)";
		PreparedStatement t= connexion().prepareStatement(s);
		t.setString(1, c.getName());
		
		int tt=t.executeUpdate();
		return tt;
	}


	public int addProduct(Product p) throws SQLException {
		
		String s="Insert into product(name,price,id_product_category,picture,particularity, description)"
				+ " values(?,?,?,?,?,?)";
		PreparedStatement t= connexion().prepareStatement(s);
		t.setString(1, p.getName());
		t.setInt(2, p.getPrice());
		t.setInt(3, p.getId_product_category());
		t.setString(4, p.getPicture());
		t.setString(5, p.getParticularity());
		t.setString(6, p.getDescription());
		int tt=t.executeUpdate();
		return tt;
	}
	
	public void UpdateProduct(Product p) throws SQLException {
		
		String s="Update product set name =? and price=? and id_product_category=? and picture=? and particularity=? and description=?"
				+ "where id_product=?";
		PreparedStatement t= connexion().prepareStatement(s);
		t.setString(1, p.getName());
		t.setInt(2, p.getPrice());
		t.setInt(3, p.getId_product_category());
		t.setString(4, p.getPicture());
		t.setString(5, p.getParticularity());
		t.setString(6, p.getDescription());	
		t.setInt(7, p.getId_product());
		
		t.executeUpdate();
	}
	
	public void DeleteProduct(Product p) throws SQLException {
		
		String s="Delete from product where id_product=?";
		PreparedStatement t= connexion().prepareStatement(s);	
		t.setInt(1, p.getId_product());
		
		t.executeUpdate();
	}

	















}