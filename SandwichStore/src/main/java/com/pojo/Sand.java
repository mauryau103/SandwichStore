package com.pojo;

public class Sand {
	private int id;
	private String name;
	private String category;
	private float price;
	private String active;
	
	
	public Sand() {
		super();
	}


	public Sand(int id, String name, String category, float price, String active) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.active = active;
	}


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


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public String getActive() {
		return active;
	}


	public void setActive(String active) {
		this.active = active;
	}


	@Override
	public String toString() {
		return "Sand [id=" + id + ", name=" + name + ", category=" + category + ", price=" + price + ", active="
				+ active + "]";
	}

	
	
}
