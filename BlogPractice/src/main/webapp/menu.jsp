<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/BlogPractice/welcome.jsp">Home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
							href="<c:url value="/member/loginMember.jsp"/>">LOGIN</a></li>
						<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
							href='<c:url value="/member/addMember.jsp"/>'>SIGN UP</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">[<%=sessionId%>님]
						</li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/member/logoutMember.jsp"/>">로그아웃 </a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>
