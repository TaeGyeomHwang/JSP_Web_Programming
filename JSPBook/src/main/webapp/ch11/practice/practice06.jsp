<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="practice04_isErrorPage.jsp" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
	try {
		int a = 1;
		int b = 0;
		int c = a / b;
	} catch (ArithmeticException e) {
		out.println("오류 발생: "+e.getMessage());
	}
	
	%>
</body>
</html>

