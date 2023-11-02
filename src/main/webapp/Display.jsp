<%@page import="com.js.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details - Amazon</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: #f0f0f0;
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	width: 80%;
	max-width: 1024px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	margin: 20px;
	padding: 20px;
	border-radius: 20px;
}

.header {
	font-size: 36px;
	text-align: center;
	color: #333;
	/* text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2); */
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #333;
	padding: 10px;
	text-align: center;
	background-color: #f0f0f0;
}

th {
	background-color: #FF9900;
	color: black;
	font-weight: bold;
}

a {
	text-decoration: none;
	font-weight: bold;
	background: #ff9900;
	color: #fff;
	border-radius: 5px;
	padding: 5px 12px;
	font-size: 18px;
	transition: background 0.3s;
}

a:hover {
	text-decoration: underline;
	background: #ffcc66;
	color: black;
}

.logo {
	margin: 10px 10px;
}
</style>
</head>
<body>
	<div class="container">
		<%
			ArrayList<Product> al = (ArrayList) request.getAttribute("data");
		%>

		<div class="logo">
			<img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2048px-Amazon_icon.svg.png"
				alt="Amazon Logo" width="80">
		</div>

		<h1 class="header">PRODUCTS AVAILABLE</h1>
		<table>
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>Product Brand</th>
				<th>Product Quantity</th>
			</tr>

			<%
				for (Product p : al) {
			%>

			<tr>
				<td><%=p.getProductId()%></td>
				<td><%=p.getProductName()%></td>
				<td><%=p.getPrice()%></td>
				<td><%=p.getBrand()%></td>
				<td><%=p.getQuantity()%></td>
			</tr>
			<%
				}
			%>

		</table>
		<h3>
			<a href="Welcome.jsp">BACK/HOME</a>
		</h3>
	</div>
</body>
</html>