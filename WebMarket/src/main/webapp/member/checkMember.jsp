<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
String id = request.getParameter("id");
String msg = "아이디를 사용할 수 있습니다.";
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/WebMarketDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:query var="resultSet" dataSource="${dataSource}">
   select id from member where id=?
   <sql:param value="<%=id%>" />
</sql:query>

<c:if test="${resultSet.rowCount > 0}">
	<%
	msg = "아이디를 사용할 수 없습니다.";
	%>
</c:if>

<%=msg %>


