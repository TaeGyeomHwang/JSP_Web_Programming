<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:useBean id="gugudan" class="ch04.practice.GuGuDan"/>
	<%=gugudan.process(5) %>
</body>
</html>