<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Filter</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("passwd");

if(id.equals("admin") && pw.equals("admin1234")){
%>
<p> 로그인 성공
<%
}else{
%>
<p> 로그인 실패
<%
}
%>
</body>
</html>