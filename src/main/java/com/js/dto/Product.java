package com.js.dto;

public class Product {
	private int productId;
	private String productName;
	private double price;
	private String brand;
	private int quantity;

	public Product() {

	}

	public Product(int productId, String productName, double price, String brand, int quantity) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.brand = brand;
		this.quantity = quantity;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", price=" + price + ", brand="
				+ brand + ", quantity=" + quantity + "]";
	}

}
