<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-left">
			<%@ include file="dbconn.jsp"%>
			<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
			%>
			<img src="/upload/<%=rs.getString("p_fileName")%>"
				style="width: 100%">
			<h3><%="[" + rs.getString("p_category") + "]" + rs.getString("p_name")%></h3>
			<p><%=rs.getString("p_description")%>
			<p><%=rs.getString("p_author") + " | " + rs.getString("p_publisher") + " | " + rs.getString("p_unitPrice") + "원"%>
			<p>
				<a href="./product.jsp?id=<%=rs.getString("p_id")%>"
					class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
				<%
				}
				if (rs != null)
				rs.close();
				if (pstmt != null)
				pstmt.close();
				if (conn != null)
				conn.close();
				%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>