package model;

import java.sql.SQLException;
//import java.util.ArrayList;

public class Test {
	public static void test_user() {
		User u=new User("u1", "p1");
		ConnectDB udb=new ConnectDB();
			try {
				if(udb.findUser(u) == null) {
					System.out.println("n'existe pas");
				}
				else {
					System.out.println("existe");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public static void test_products() {
		//ArrayList<Product> u=new ArrayList<Product>();
		ConnectDB udb=new ConnectDB();
			try {
				for(Product p:udb.findProducts()) {
					System.out.println(p.getName()+"####"+ p.getPrice());
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	public static void main(String[] args)  {
		// TODO Auto-generated method stub

		//test_products();
		
		String t ="";
		String tt =null;
		System.out.println(t+tt+"oh yeaaaah");
		
	}

}
