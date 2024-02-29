<%@ page contentType="text/html; charset=utf-8"%>

<%
	Cookie[] cookies = request.getCookies();
	String userId = "";
	for (int i = 0; i < cookies.length; i++) {
		if(cookies[i].getName().equals("userID")){
			userId = cookies[i].getValue();
		}
	}
	if (userId == null) {
		response.sendRedirect("practice03_cookie_out.jsp");
	}
%>
<h3><%=userId%>님 반갑습니다.
</h3>
<a href="practice03_cookie_out.jsp">로그아웃</a>
