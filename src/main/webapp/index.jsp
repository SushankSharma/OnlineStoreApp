<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Your Store - Amazon</title>
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
	max-width: 600px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	padding: 20px;
	text-align: center;
	border-radius: 15px;
}

img {
	width: 200px;
	margin-bottom: 20px;
}

p {
	font-size: 18px;
	color: #666;
	margin-bottom: 20px;
}

h2 {
	font-size: 24px;
	color: #333;
	text-align: center;
	margin-bottom: 20px;
}

a {
	display: block;
	text-align: center;
	text-decoration: none;
	background: #FF9900;
	color: #fff;
	font-weight: bold;
	padding: 10px 20px;
	border-radius: 5px;
	font-size: 18px;
	transition: background 0.3s;
}

a:hover {
	text-decoration: underline;
	background: #FFC266;
	color: black;
}
</style>
</head>
<body>
	<div class="container">
		<img
			src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2048px-Amazon_icon.svg.png"
			alt="Amazon Logo" width="200">
		<h2>Welcome to Your Store</h2>
		<p>Your One-Stop Shop for Everything You Need</p>
		<a href="Welcome.jsp">Get Started</a>
	</div>
</body>
</html>
