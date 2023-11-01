package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.ProductCRUD;
import com.js.dto.Product;

@WebServlet("/save")
public class InsertServer extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("pname");
		double price = Double.parseDouble(req.getParameter("pprice"));
		String brand = req.getParameter("pbrand");
		int quantity = Integer.parseInt(req.getParameter("pqty"));

		// Storing DATA into Product OBJECT
		Product p = new Product();
		p.setProductId(id);
		p.setProductName(name);
		p.setPrice(price);
		p.setBrand(brand);
		p.setQuantity(quantity);

		// Call the insert method from Product-CRUD Layer
		int res = new ProductCRUD().insertProduct(p);
		RequestDispatcher rd = req.getRequestDispatcher("Result.jsp");
		if (res > 0) {
			req.setAttribute("msg", "Product Insertion Done!");
			rd.forward(req, resp);

		} else {
			req.setAttribute("msg", "Prodcut Could Not be Added");
			rd.forward(req, resp);

		}

	}

}
