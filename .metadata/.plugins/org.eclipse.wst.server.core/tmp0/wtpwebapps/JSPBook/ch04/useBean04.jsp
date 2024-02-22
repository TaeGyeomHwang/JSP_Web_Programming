<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<%-- scope가 page라면 include시 흐름이 넘어가면서 인스턴스가 사라진다. --%>
	<jsp:useBean id="person" class="ch04.Person" scope="page" />
	<jsp:setProperty name="person" property="id" value="20182005" />
	<jsp:setProperty name="person" property="name" value="홍길동" />

	<p>
		아이디 :
		<jsp:getProperty name="person" property="id" />
	<p>
		이름 :
		<jsp:getProperty name="person" property="name" />

		<jsp:include page="useBean03.jsp" />
</body>
</html>