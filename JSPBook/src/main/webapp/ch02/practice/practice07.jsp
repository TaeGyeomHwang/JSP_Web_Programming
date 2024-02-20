<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<nav class="navbar navbar-expend navbar-darkgray bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./practice07.jsp">Home</a>
			</div>
		</div>
	</nav>
	<%!String greeting = "Book Market Mall";
	String tagline = "Welcome to Web Market!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>
</body>
</html>