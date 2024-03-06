CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) not null,
    p_name varchar(20),
    p_unitPrice integer,
    p_description text,
    p_category varchar(20),
    p_manufacturer varchar(20),
    p_unitsInStock long,
    p_condition varchar(20),
    p_filename varchar(20),
    primary key (p_id)
)default CHARSET=utf8;

insert into product values('P1234', 'iPhone 6s', 800000, '4.7-inch,1334x750 Retina HD display, 8-megapixel iSight Camera', 'Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
insert into product values('P1235', 'LG PC 그램', 1500000, '13.3-inch, IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');
insert into product values('P1236', 'Galaxy Tab S', 900000, '212.8*125.6*6.6mm, super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

CREATE TABLE IF NOT EXISTS student(
	num VARCHAR(10) not null,
    depart varchar(20),
    name varchar(20),
    address varchar(10),
    phone varchar(10),
    primary key (num)
)default CHARSET=utf8;

create table member(
	id varchar(10) not null,
    password varchar(10) not null,
    name varchar(10) not null,
    gender varchar(4),
    birth varchar(10),
    mail varchar(30),
    phone varchar(20),
    address varchar(90),
    regist_day varchar(50),
    primary key(id)
)default CHARSET=utf8;

create table board(
	num int not null auto_increment,
    id varchar(10) not null,
    name varchar(10) not null,
    subject varchar(100) not null,
    content text not null,
    regist_day varchar(30),
    hit int,
    ip varchar(20),
    primary key (num)
)default CHARSET=utf8;