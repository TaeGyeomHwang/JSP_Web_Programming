<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:forward page="practice04_data.jsp">
		<jsp:param value="5" name="num"/>
	</jsp:forward>
</body>
</html>