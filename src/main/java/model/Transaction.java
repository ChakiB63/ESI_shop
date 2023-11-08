package model;

public class Transaction {

	
	private int id_transaction;
	private int id_transaction_user;
	private int id_transaction_Product;
	
	
	public Transaction(int id_transaction, int id_transaction_user, int id_transaction_Product) {
		super();
		this.id_transaction = id_transaction;
		this.id_transaction_user = id_transaction_user;
		this.id_transaction_Product = id_transaction_Product;
	}
	public int getId_transaction() {
		return id_transaction;
	}
	public void setId_transaction(int id_transaction) {
		this.id_transaction = id_transaction;
	}
	public int getId_transaction_user() {
		return id_transaction_user;
	}
	public void setId_transaction_user(int id_transaction_user) {
		this.id_transaction_user = id_transaction_user;
	}
	public int getId_transaction_Product() {
		return id_transaction_Product;
	}
	public void setId_transaction_Product(int id_transaction_Product) {
		this.id_transaction_Product = id_transaction_Product;
	}
	
	
	
}
