<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");
	
	if(user_id.equals("admin")&&user_pw.equals("1234")){
		session.setAttribute("userID", user_id);
		response.sendRedirect("practice04_welcome.jsp");
	}else{
		response.sendRedirect("practice04.jsp");
	}	
	%>
</body>
</html>