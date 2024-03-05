<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<%
	String score = request.getParameter("score");
	%>
	<c:set var="score" value="<%=score%>" />
	<c:catch var="e">
		<c:choose>
			<c:when test="${score/10>=9 }">
				점수<c:out value="${score }" />는 A학점입니다.
		</c:when>
			<c:when test="${score/10>=8 }">
				점수<c:out value="${score }" />는 B학점입니다.
		</c:when>
			<c:when test="${score/10>=7 }">
				점수<c:out value="${score }" />는 C학점입니다.
		</c:when>
			<c:when test="${score/10>=6 }">
				점수<c:out value="${score }" />는 D학점입니다.
		</c:when>
			<c:otherwise>
			점수<c:out value="${score }" />는 F학점입니다.
		</c:otherwise>
		</c:choose>
	</c:catch>
	<c:if test="${e!=null }">
		<%=score%>는 숫자가 아닙니다.
	</c:if>
</body>
</html>