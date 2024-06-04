package Roogle;

public class Roogle_Cart_DTO {
	private String cart_id, cart_animalname;
	private int cart_no, cart_amount, cart_price;
	private String cart_img;
	
	public Roogle_Cart_DTO() {}

	public Roogle_Cart_DTO(String cart_id, int cart_no, String cart_animalname, int cart_amount, int cart_price) {
		super();
		this.cart_id = cart_id;
		this.cart_no = cart_no;
		this.cart_animalname = cart_animalname;
		this.cart_amount = cart_amount;
		this.cart_price = cart_price;
	}

	public String getCart_id() {
		return cart_id;
	}

	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}

	public int getCart_no() {
		return cart_no;
	}

	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}

	public String getCart_animalname() {
		return cart_animalname;
	}

	public void setCart_animalname(String cart_animalname) {
		this.cart_animalname = cart_animalname;
	}

	public int getCart_amount() {
		return cart_amount;
	}

	public void setCart_amount(int cart_amount) {
		this.cart_amount = cart_amount;
	}

	public int getCart_price() {
		return cart_price;
	}

	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}

	public String getCart_img() {
		return cart_img;
	}

	public void setCart_img(String cart_img) {
		this.cart_img = cart_img;
	}
}
