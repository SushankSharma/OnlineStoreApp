package com.js.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.js.dto.Product;

public class ProductCRUD {
	private final static String PATH = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/product_store";
	private final static String USER = "root";
	private final static String PWD = "SushankBharadwaj@2103";

	public int insertProduct(Product p) {
		String query = "insert into product values (?,?,?,?,?)"; // ? - Placeholder or delimiter
		Connection con = null; // Local Variable for the Method
		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, p.getProductId());
			ps.setString(2, p.getProductName());
			ps.setDouble(3, p.getPrice());
			ps.setString(4, p.getBrand());
			ps.setInt(5, p.getQuantity());
			return ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return 0;
	}

	public int deleteProductById(int id) {
		Connection con = null;
		String query = "delete from product where productId = ?";
		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			return ps.executeUpdate();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;

	}

	public double deleteProductByPrice(double price) {
		Connection con = null;
		String query = "delete from product where price = ?";

		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setDouble(1, price);
			return ps.executeUpdate();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;

	}

	public int updateProductById(int id, Product p) {
		Connection con = null;
		String query = "update product set productName = ?, price = ?, brand = ?, quantity = ? where productId = ? ";
		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, p.getProductName());
			ps.setDouble(2, p.getPrice());
			ps.setString(3, p.getBrand());
			ps.setInt(4, p.getQuantity());
			ps.setInt(5, id);
			return ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;

	}

	public Product getProductById(int id) {
		Connection con = null;
		String query = "SELECT * FROM product WHERE productId = ? ";
		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				Product p = new Product();
				p.setProductId(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setPrice(rs.getDouble(3));
				p.setBrand(rs.getString(4));
				p.setQuantity(rs.getInt(5));

				return p;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;

	}

	public ArrayList<Product> getAllProducts() {
		ArrayList<Product> al = new ArrayList<Product>();
		Connection con = null;
		String query = "SELECT * FROM product";
		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setProductId(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setPrice(rs.getDouble(3));
				p.setBrand(rs.getString(4));
				p.setQuantity(rs.getInt(5));

				al.add(p);
			}
			return al;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;

	}

	public ArrayList<Product> getProductByBrand(String brand) {
		ArrayList<Product> al = new ArrayList<Product>();

		Connection con = null;
		String query = "SELECT * FROM product WHERE brand=? ";
		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, brand);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setProductId(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setPrice(rs.getDouble(3));
				p.setBrand(rs.getString(4));
				p.setQuantity(rs.getInt(5));

				al.add(p);
			}
			return al;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;

	}

	public int[] batchExecutionForInsert(ArrayList<Product> products) {
		Connection con = null;
		String query = "INSERT INTO PRODUCT VALUES (?,?,?,?,?)";

		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = con.prepareStatement(query);
			for (Product p : products) {
				ps.setInt(1, p.getProductId());
				ps.setString(2, p.getProductName());
				ps.setDouble(3, p.getPrice());
				ps.setString(4, p.getBrand());
				ps.setInt(5, p.getQuantity());

				ps.addBatch();

			}
			return ps.executeBatch();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;

	}

	public int[] batchExecutionForDelete(int[] arr) {
		Connection con = null;
		String query = "DELETE FROM PRODUCT WHERE productId = ?";

		try {
			Class.forName(PATH);
			con = DriverManager.getConnection(URL, USER, PWD);
			PreparedStatement ps = con.prepareStatement(query);
			for (int x : arr) {
				ps.setInt(1, x);
				ps.addBatch();

			}
			return ps.executeBatch();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return arr;

	}

}
