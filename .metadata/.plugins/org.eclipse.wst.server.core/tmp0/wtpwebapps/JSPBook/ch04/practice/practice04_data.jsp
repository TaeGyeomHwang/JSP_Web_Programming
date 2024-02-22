<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%
	int num = Integer.parseInt(request.getParameter("num"));
	for (int i = 1; i < 10; i++) {
		out.println(num+" * "+i+" = "+num*i);
	%>
		<br>
	<%
	}
	%>
</body>
</html>