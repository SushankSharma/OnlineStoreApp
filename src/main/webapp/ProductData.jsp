<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Product Details - Amazon</title>
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
	max-width: 400px;
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
}

.nav {
	text-align: right;
}

.nav a {
	text-decoration: none;
	background: #ff9900;
	color: #fff;
	border-radius: 5px;
	padding: 5px 10px;
	font-size: 16px;
	transition: background 0.3s;
}

.nav a:hover {
	background: #ffcc66;
	text-decoration: underline;
	color: black;
}

.form {
	text-align: left;
}

.form table {
	width: 100%;
}

.form table tr td {
	padding: 10px 0;
}

.form table tr td input[type="number"], .form table tr td input[type="text"]
	{
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.form table tr td input[type="submit"] {
	width: 100%;
	height: 50px;
	border: none;
	outline: none;
	border-radius: 10px;
	padding: 0 10px;
	font-size: 20px;
	background: #ff9900;
	color: #fff;
	cursor: pointer;
}

.form table tr td input[type="submit"]:hover {
	background: #ffcc66;
	color: black;
}

.logo {
	margin: 20px 0;
}
</style>
</head>
<body>
	<div class="container">
		<div class="nav">
			<a href="Welcome.jsp">Back/Home</a>
		</div>
		<div class="logo">
			<img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2048px-Amazon_icon.svg.png"
				alt="Amazon Logo" width="80">
		</div>
		<div class="header">ENTER PRODUCT DETAILS:</div>
		<form class="form" action="save" method="">
			<table>
				<tr>
					<th>Product ID:</th>
					<td><input type="number" name="id" /></td>
				</tr>
				<tr>
					<th>Product Name:</th>
					<td><input type="text" name="pname" /></td>
				</tr>
				<tr>
					<th>Product Price:</th>
					<td><input type="number" name="pprice" /></td>
				</tr>
				<tr>
					<th>Product Brand:</th>
					<td><input type="text" name="pbrand" /></td>
				</tr>
				<tr>
					<th>Product Quantity:</th>
					<td><input type="number" name="pqty" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>