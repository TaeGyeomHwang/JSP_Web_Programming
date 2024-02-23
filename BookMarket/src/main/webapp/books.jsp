<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
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
	<%
	ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
	%>
	<div class="container">
		<div class="text-left">
			<%
			for (int i = 0; i < listOfBooks.size(); i++) {
				Book book = listOfBooks.get(i);
				System.out.println(book.getFilename());
			%>
			<img src="/upload/<%=book.getFilename()%>" style="width: 100%">
			<h3><%="[" + book.getCategory() + "]" + book.getName()%></h3>
			<p><%=book.getDescription()%>
			<p><%=book.getAuthor() + " | " + book.getPublisher() + " | " + book.getUnitPrice() + "원"%>
			<p>
				<a href="./product.jsp?id=<%=book.getBookId()%>"
					class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
		</div>
		<hr>
		<%
		}
		%>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>