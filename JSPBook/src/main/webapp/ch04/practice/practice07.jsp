<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="ch04.practice.dto.Book"%>
<jsp:useBean id="bookDAO" class="ch04.practice.dao.BookRepository"
	scope="session" />
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<nav class="navbar navbar-expend navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./practice07.jsp">Home</a>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
	ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
	%>
	<div class="container">
			<%
			for (int i = 0; i < listOfBooks.size(); i++) {
				Book book = listOfBooks.get(i);
				System.out.println(book.getName());
			%>
			<div class="text-left">
				<h3><%="["+book.getCategory()+"]"+book.getName() %></h3>
				<p><%=book.getDescription() %>
				<p><%=book.getAuthor()+" | "+book.getPublisher()+" | "+book.getUnitPrice()+"원" %>
			</div>
			<hr>
			<%
			}
			%>
	</div>
	<footer class="container">
		<p>&copy; BookMarket</p>
	</footer>
</body>
</html>