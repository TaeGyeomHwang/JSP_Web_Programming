package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	public static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}

	public BookRepository() {
		Book book1 = new Book("ISBN0001", "HTML5+CSS3", 15000);
		book1.setAuthor("황재호");
		book1.setDescription(
				"워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면에 바로 보여서 눈으로만 읽어도 쉽게 파악할 수 있는 것은 기본이고, 중간중간 퀴즈를 추가하여 재미있게 게임하듯 복습할 수 있습니다.");
		book1.setPublisher("한빛미디어");
		book1.setCategory("Hello Coding");
		book1.setUnitsInStock(1000);
		book1.setTotalPages(288);
		book1.setReleaseDate("2018/03/02");
		book1.setCondition("신규 도서");
		book1.setFilename("ISBN0001.jpg");

		Book book2 = new Book("ISBN0002", "쉽게 배우는 자바 프로그래밍", 27000);
		book2.setAuthor("우종종");
		book2.setDescription(
				"객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보가자 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 셜명과 군더더기 없는 핵심 코드를 통해 개념과 구현 두 마리 토끼를 잡아보세요.");
		book2.setPublisher("한빛아카데미");
		book2.setCategory("IT모바일");
		book2.setUnitsInStock(10000);
		book2.setTotalPages(2888);
		book2.setReleaseDate("2018/03/03");
		book2.setCondition("중고 도서");
		book2.setFilename("ISBN0002.jpg");

		Book book3 = new Book("ISBN0003", "스프링4 입문", 27000);
		book3.setAuthor("하세가와 유이치, 오오노 와타루, 토키 코헤이,(권은철, 전민수)");
		book3.setDescription(
				"스프링은 단순히 사용 방법만 익히는 것보다 아키텍쳐를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다. 스프링은 단순히 사용 방법만 익히는 것보다 아키텍쳐를 어떻게 이해하고 설계하는지가 더 중요합니다.");
		book3.setPublisher("한빛미디어");
		book3.setCategory("IT모바일");
		book3.setUnitsInStock(100);
		book3.setTotalPages(228);
		book3.setReleaseDate("2018/03/04");
		book3.setCondition("E-Book");
		book3.setFilename("ISBN0003.jpg");

		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
	}

	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
	}

	public Book getBookById(String bookId) {
		Book bookById = null;

		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}

	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}