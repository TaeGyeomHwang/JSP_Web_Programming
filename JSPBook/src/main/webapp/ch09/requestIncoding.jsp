<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<fmt:requestEncoding value="euc-kr"/>
	��û �Ķ����:
	<%
		out.println(request.getParameter("id"));
	%>
	<form method="post" action="#">
		<p> ���̵� <input type="text" name="id">
		<input type="submit" value="����">
	</form>
</body>
</html>