<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<%! String makeItLower(String data){
			return data.toLowerCase();
	}%>
	
	<%=
		makeItLower("Hello World")
	%>
</body>
</html>