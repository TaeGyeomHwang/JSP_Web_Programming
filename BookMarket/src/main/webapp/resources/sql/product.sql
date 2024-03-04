CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) not null,
    p_name varchar(20),
    p_unitPrice integer,
    p_author varchar(40),
    p_description text,
    p_publisher varchar(20),
    p_category varchar(20),
    p_unitsInStock long,
	p_totalPages long,
    p_releaseDate varchar(20),
    p_condition varchar(20),
    p_filename varchar(20),
    primary key (p_id)
)default CHARSET=utf8;

insert into product values('ISBN0001', 'HTML5+CSS3', 15000, '황재호', '워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면에 바로 보여서 눈으로만 읽어도 쉽게 파악할 수 있는 것은 기본이고, 중간중간 퀴즈를 추가하여 재미있게 게임하듯 복습할 수 있습니다.', '한빛미디어', 'Hello Coding', 1000, 288, '2018/03/02', '신규 도서', 'ISBN0001.jpg');
insert into product values('ISBN0002', '쉽게 배우는 자바 프로그래밍', 27000, '우종종', '객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보가자 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 셜명과 군더더기 없는 핵심 코드를 통해 개념과 구현 두 마리 토끼를 잡아보세요.', '한빛아카데미', 'IT모바일', 10000, 2888, '2018/03/03', '중고 도서', 'ISBN0002.jpg');
insert into product values('ISBN0003', '스프링4 입문', 27000, '하세가와 유이치, 오오노 와타루, 토키 코헤이,(권은철, 전민수)', '스프링은 단순히 사용 방법만 익히는 것보다 아키텍쳐를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다. 스프링은 단순히 사용 방법만 익히는 것보다 아키텍쳐를 어떻게 이해하고 설계하는지가 더 중요합니다.', '한빛미디어', 'IT모바일', 100, 228, '2018/03/04', 'E-Book', 'ISBN0003.jpg');