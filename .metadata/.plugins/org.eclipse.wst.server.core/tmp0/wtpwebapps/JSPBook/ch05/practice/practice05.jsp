<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Calendar"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
	Calendar cal = Calendar.getInstance();
	int hh = cal.get(Calendar.HOUR);
	int mm = cal.get(Calendar.MINUTE);
	int ss = cal.get(Calendar.SECOND);
	int ampm = cal.get(Calendar.AM_PM);
	String apName = "";
	if(ampm == 0)apName = "AM";
	else apName = "PM";
	
	out.println("현재 시간은 "+hh+":"+mm+":"+ss+" "+apName);
	response.setIntHeader("Refresh", 5);
	%>
	<p>
		<a href="practice05_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>