<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Amazon - Your Online Store</title>

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
	position: relative;
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	background-color: #f7f7f7;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	max-width: 720px;
	border-radius: 15px;
}

.header {
	font-size: 36px;
	color: #333;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
	margin: 0px;
	text-align: center;
}

/* .header h1 {
	font-size: 3em;
	color: #ff9900;
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
} */
.logo {
	margin: 20px 0;;
}

.tagline {
	font-size: 18px;
	color: #666;
	margin: 20px 0;
	text-align: center;
}

.buttons {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	gap: 20px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.action-button {
	width: 200px;
	height: 50px;
	background-color: #FF9900;
	color: #fff;
	font-size: 20px;
	border: none;
	cursor: pointer;
	border-radius: 5px;
	text-align: center;
	line-height: 50px;
	text-transform: uppercase;
	text-decoration: none;
	transition: background 0.3s, transform 0.3s, box-shadow 0.3s;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.action-button:hover {
	background: linear-gradient(to bottom, #FFC266, #FF9900);
	transform: scale(1.05);
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	color: black;
}
</style>
</head>
<body>
	<div class="container">
		<div class="logo">
			<img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2048px-Amazon_icon.svg.png"
				alt="Amazon Logo" width="80">
		</div>
		<!-- <h1 class="header">Amazon.in</h1>  -->
		<div class="tagline">Your Online Store for Everything You Need</div>
		<div class="buttons">
			<a class="action-button" href="ProductData.jsp">Add Product</a> <a
				class="action-button" href="getall">View All</a>
		</div>
	</div>
</body>
</html>