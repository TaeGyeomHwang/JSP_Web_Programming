<%@ page contentType="text/html; charset=utf-8"%>

<%
String userid = (String) session.getAttribute("userID");

if (userid == null) {
	response.sendRedirect("practice04_session_out.jsp");
}
%>
<h3><%=userid%>님 반갑습니다.
</h3>
<a href="practice04_session_out.jsp">로그아웃</a>
