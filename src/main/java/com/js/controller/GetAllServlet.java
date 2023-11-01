package com.js.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.ProductCRUD;
import com.js.dto.Product;

@WebServlet("/getall")
public class GetAllServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<Product> al = new ProductCRUD().getAllProducts();

		if (al != null) {
			RequestDispatcher rd = req.getRequestDispatcher("Display.jsp");
			req.setAttribute("data", al);
			rd.forward(req, resp);
		} else {
			RequestDispatcher rd = req.getRequestDispatcher("Result.jsp");
			req.setAttribute("msg", "Oops no Products Found");
			rd.forward(req, resp);
		}
	}
}
