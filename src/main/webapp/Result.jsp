<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result - Amazon</title>
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
	display: flex;
	flex-direction: column;
	align-items: center; justify-content : center; width : 80%; max-width :
	600px; background-color : #fff; box-shadow : 0 0 10px rgba( 0, 0, 0,
	0.2);
	padding: 20px;
	align-items: center;
	justify-content: center;
	width: 80%;
	max-width: 600px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
	justify-content: center;
	width: 80%;
	max-width: 600px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.header {
	font-size: 24px;
	color: #333;
	text-align: center;
	margin-bottom: 20px;
	display: none;
}

h1 {
	font-size: 36px;
	color: #FF9900;
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
	text-align: center;
	margin-bottom: 20px;
}

a {
	display: block;
	text-align: center;
	background: #ff9900;
	text-decoration: none;
	border-radius: 5px;
	color: #fff;
	font-weight: bold;
	padding: 5px 10px;
	font-size: 16px;
	transition: background 0.3s;
}

a:hover {
	text-decoration: underline;
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
		<%
			String result = (String) request.getAttribute("msg");
		%>

		<div class="logo">
			<img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2048px-Amazon_icon.svg.png"
				alt="Amazon Logo" width="80">
		</div>

		<h1><%=result%></h1>

		<h3>
			<a href="Welcome.jsp">BACK/HOME</a>
		</h3>
	</div>
</body>
</html>