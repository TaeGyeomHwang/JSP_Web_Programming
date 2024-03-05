<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	%>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/JSPBookDB"
		driver="com.mysql.jdbc.Driver" user="root" password="1234" />
	<sql:update dataSource="${dataSource }" var="resultSet">
		<%-- insert into member(id,name,passwd) values(?,?,?)		
		<sql:param value="<%=id%>" />
		<sql:param value="<%=name%>" />
		<sql:param value="<%=passwd%>" /> --%>
		<%-- update member set name=? where id=? and passwd=?
		<sql:param value="<%=name%>" />
		<sql:param value="<%=id%>" />
		<sql:param value="<%=passwd%>" /> --%>
		delete from member where id=? and passwd=?
		<sql:param value="<%=id%>" />
		<sql:param value="<%=passwd%>" />
	</sql:update>
	<c:import url="sql01.jsp" var="url"/>
	${url}
</body>
</html>