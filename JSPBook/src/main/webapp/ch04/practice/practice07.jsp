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
	Book book1 = listOfBooks.get(0);
	Book book2 = listOfBooks.get(1);
	Book book3 = listOfBooks.get(2);
	%>
	<div class="container">
		<div class="text-left">
			<h3><%="["+book1.getCategory()+"]"+book1.getName() %></h3>
			<p><%=book1.getDescription() %>
			<p><%=book1.getAuthor()+" | "+book1.getPublisher()+" | "+book1.getUnitPrice()+"원" %>
		</div>
		<hr>
		<div class="text-left">
			<h3><%="["+book2.getCategory()+"]"+book2.getName() %></h3>
			<p><%=book2.getDescription() %>
			<p><%=book2.getAuthor()+" | "+book2.getPublisher()+" | "+book2.getUnitPrice()+"원" %>
		</div>
		<hr>
		<div class="text-left">
			<h3><%="["+book3.getCategory()+"]"+book3.getName() %></h3>
			<p><%=book3.getDescription() %>
			<p><%=book3.getAuthor()+" | "+book3.getPublisher()+" | "+book3.getUnitPrice()+"원" %>
		</div>
		<hr>
	</div>
	<footer class="container">
		<p>&copy; BookMarket</p>
	</footer>
</body>
</html>