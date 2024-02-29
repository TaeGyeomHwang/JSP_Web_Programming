<%@ page contentType="text/html; charset=utf-8"%>

<%
session.invalidate();
Cookie[] cookies = request.getCookies();
for (int i = 0; i < cookies.length; i++) {
	Cookie thisCookie = cookies[i];
	String n = thisCookie.getName();
	if (n.equals("userID"))
		thisCookie.setMaxAge(0);

	response.addCookie(thisCookie);
}
response.sendRedirect("practice03.jsp");
%>