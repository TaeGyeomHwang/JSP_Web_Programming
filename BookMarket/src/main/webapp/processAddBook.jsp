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

String bookId = request.getParameter("bookId");
String name = request.getParameter("name");
String unitPrice = request.getParameter("unitPrice");
String author = request.getParameter("author");
String description = request.getParameter("description");
String publisher = request.getParameter("publisher");
String category = request.getParameter("category");
String unitsInStock = request.getParameter("unitsInStock");
String totalPages = request.getParameter("totalPages");
String releaseDate = request.getParameter("releaseDate");
String condition = request.getParameter("condition");

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

response.sendRedirect("products.jsp");
%>