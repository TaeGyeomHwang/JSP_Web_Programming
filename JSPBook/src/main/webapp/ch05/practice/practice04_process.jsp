<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("id");
	String password = request.getParameter("passwd");
	%>
	<p>전송된 요청 파라미터 : <%=userid+"&"+password %>
</body>
</html>