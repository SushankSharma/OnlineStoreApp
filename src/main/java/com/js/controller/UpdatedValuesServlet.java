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

@WebServlet("/update")
public class UpdatedValuesServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt((req.getParameter("id")));
		String name = req.getParameter("pname");
		double price = Double.parseDouble(req.getParameter("pprice"));
		String brand = req.getParameter("pbrand");
		int quantity = Integer.parseInt(req.getParameter("pqty"));

		Product p = new Product();
		p.setProductId(id);
		p.setProductName(name);
		p.setPrice(price);
		p.setBrand(brand);
		p.setQuantity(quantity);
		
		int res = new ProductCRUD().updateProductById(p.getProductId(), p);

		if (res > 0) {
			RequestDispatcher rd = req.getRequestDispatcher("getall");
			rd.forward(req, resp);
		} else {
			RequestDispatcher rd = req.getRequestDispatcher("Result.jsp");
			req.setAttribute("msg", "Item Could Not be Updated!");
			rd.forward(req, resp);
		}

	}

}
