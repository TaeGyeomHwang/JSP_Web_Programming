<%@ page contentType="text/html; charset=utf-8" %>
<%@ page isErrorPage="true" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<h4>errorPage 디렉티브 태그</h4>
	에러가 발생했습니다.
	<%
		exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>