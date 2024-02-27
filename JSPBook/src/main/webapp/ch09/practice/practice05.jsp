<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Validation</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="ch09.practice05">
	<div class="text-right">
		<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
	</div>
	<form name="loginForm" method="post"
		onsubmit="return checkform();">
		<p>
			<fmt:message key="id" /> : <input type="text" id="id" name="id">
		<p>
			<fmt:message key="passwd" /> : <input type="password" id="passwd" name="passwd">
		<p>
			<input type="submit" value="<fmt:message key="button" />">
	</form>
	</fmt:bundle>
</body>
</html>