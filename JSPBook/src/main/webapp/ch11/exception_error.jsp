<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<p>오류가 발생했습니다.
	<P> 예외 : <%=exception%>
	<p> toString() : <%=exception.toString() %>
	<p> getClass().getName() : <%=exception.getClass().getName() %>
	<p> getMessage() : <%=exception.getMessage() %>
</body>
</html>