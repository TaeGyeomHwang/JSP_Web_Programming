<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");

	if (user_id.equals("admin") && user_pw.equals("1234")) {
		Cookie cookie_id = new Cookie("userID", user_id);
		response.addCookie(cookie_id);
		response.sendRedirect("practice03_welcome.jsp");
	}else{
		response.sendRedirect("practice03.jsp");
	}
	%>
</body>
</html>