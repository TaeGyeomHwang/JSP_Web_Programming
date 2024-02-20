<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<%! String str = "Hello, Java Server Pages"; 
		public String getString(String string){
			return string;
		}%>
	<%
		out.println(getString(str));
	%>
</body>
</html>