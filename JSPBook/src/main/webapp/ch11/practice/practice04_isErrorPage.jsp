<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<h3>오류 발생</h3>
	<p>ERROR: <%=request.getAttribute("javax.servlet.error.exception")%>: 오류발생!! 
	<p>URI: <%=request.getAttribute("javax.servlet.error.request_uri")%>
	<p>Status Code: <%=request.getAttribute("javax.servlet.error.status_code")%>

</body>
</html>