<%@page import="com.js.dto.Product"%>
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
}

.container {
	text-align: center;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	border-radius: 5px;
	padding: 20px;
	width: 100%;
	max-width: 615px;
}

.header {
	font-size: 24px;
	font-weight: bold;
	color: #333;
	margin-bottom: 20px;
	margin-top: 20px;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
	font-family: Arial, sans-serif;
	color: #333;
	margin-bottom: 20px;
	margin-top: 20px;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
}

table {
	width: auto;
	border-collapse: collapse;
	margin-bottom: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

th, td {
	border: 1px solid #333;
	padding: 10px;
	text-align: center;
	background-color: #f0f0f0;
}

th {
	background-color: #FFA500;
	color: black;
	font-weight: bold;
}

tr:hover {
	background-color: #f5f5f5;
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

.form table tr td input[type="submit"] {
	width: auto;
	height: 50px;
	border: none;
	outline: none;
	border-radius: 10px;
	padding: 0 10px;
	font-size: 20px;
	background: #ff9900;
	color: #fff;
	cursor: pointer;
	align-items: center;
}

.formContainer {
	display: flex;
	align-items: center;
	flex-direction: column;
}

.form table tr td input[type="submit"]:hover {
	background: #ffcc66;
	color: black;
	text-decoration: underline;
}

.nav {
	text-align: left;
}

.nav a {
	text-decoration: none;
	background: #ff9900;
	color: #fff;
	border-radius: 5px;
	padding: 5px 12px;
	font-size: 16px;
	transition: background 0.3s;
}

.nav a:hover {
	background: #ffcc66;
	text-decoration: underline;
	color: black;
}
</style>
</head>
<body>
	<div class="container">
		<%
			Product p = (Product) request.getAttribute("product");
		%>
		<div class="logo">
			<img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2048px-Amazon_icon.svg.png"
				alt="Amazon Logo" width="80">
		</div>
		<div class="header">ENTER PRODUCT DETAILS:</div>
		<div class="formContainer">
			<form class="form" action="update" method="">
				<table>
					<tr>
						<th>Product ID:</th>
						<td><input type="number" name="id"
							value="<%=p.getProductId()%>" readonly="readonly" /></td>
					</tr>
					<tr>
						<th>Product Name:</th>
						<td><input type="text" name="pname"
							value="<%=p.getProductName()%>" /></td>
					</tr>
					<tr>
						<th>Product Price:</th>
						<td><input type="number" name="pprice"
							value="<%=p.getPrice()%>" /></td>
					</tr>
					<tr>
						<th>Product Brand:</th>
						<td><input type="text" name="pbrand"
							value="<%=p.getBrand()%>" /></td>
					</tr>
					<tr>
						<th>Product Quantity:</th>
						<td><input type="number" name="pqty"
							value="<%=p.getQuantity()%>" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Update" /></td>
					</tr>
				</table>

			</form>
			<div class="nav">
				<a href="getall">Back</a>
			</div>
		</div>

	</div>

</body>
</html>