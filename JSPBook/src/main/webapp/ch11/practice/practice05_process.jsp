<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	if (id.equals("") || passwd.equals("")) {
		throw new ServletException();
	} else {
		out.println("아이디: " + request.getParameter("id"));
	}
	%>
</body>
</html>