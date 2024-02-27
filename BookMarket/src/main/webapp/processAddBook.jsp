<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>

<%
request.setCharacterEncoding("UTF-8");

String filename = "";
String realFolder = "C:\\upload";
int maxSize = 5 * 1024 * 1024;
String encType = "UTF-8";

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String bookId = multi.getParameter("bookId");
String name = multi.getParameter("name");
String unitPrice = multi.getParameter("unitPrice");
String author = multi.getParameter("author");
String description = multi.getParameter("description");
String publisher = multi.getParameter("publisher");
String category = multi.getParameter("category");
String unitsInStock = multi.getParameter("unitsInStock");
String totalPages = multi.getParameter("totalPages");
String releaseDate = multi.getParameter("releaseDate");
String condition = multi.getParameter("condition");

Integer price;
if (unitPrice.isEmpty())
	price = 0;
else
	price = Integer.valueOf(unitPrice);

long stock;
if (unitsInStock.isEmpty())
	stock = 0;
else
	stock = Long.valueOf(unitsInStock);

long pages;
if (unitsInStock.isEmpty())
	pages = 0;
else
	pages = Long.valueOf(totalPages);

Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

BookRepository dao = BookRepository.getInstance();

Book newProduct = new Book();
newProduct.setBookId(bookId);
newProduct.setName(name);
newProduct.setUnitPrice(price);
newProduct.setAuthor(author);
newProduct.setDescription(description);
newProduct.setPublisher(publisher);
newProduct.setCategory(category);
newProduct.setUnitsInStock(stock);
newProduct.setTotalPages(pages);
newProduct.setReleaseDate(releaseDate);
newProduct.setCondition(condition);
newProduct.setFilename(fileName);

dao.addBook(newProduct);

response.sendRedirect("books.jsp");
%>