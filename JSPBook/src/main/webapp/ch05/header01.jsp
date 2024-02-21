<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
	String hostValue = request.getHeader("host");
	String alValue = request.getHeader("accept-language");

	out.println("호스트명: " + hostValue + "<br>");
	out.println("설정된 언어: " + alValue + "<br>");
	%>

	<%
	java.util.Enumeration en = request.getHeaderNames();
	while (en.hasMoreElements()){
		String headerName = (String)en.nextElement();
		String headerValue = request.getHeader(headerName);
	%>
	<%=headerName %> : <%=headerValue %><br>
	<%
		}
	%>
	
	<p> <%=request.getRemoteAddr() %>
	<p> <%=request.getQueryString() %>
</body>
</html>