<%@ page import="java.util.Date"%>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<%
	Date date = new java.util.Date();
	out.println("Today : "+date);
	%>
</body>
</html>