
create table member(
	nick_name varchar(20),
	id varchar(20),
	pwd varchar(20),
	email varchar(30),
	phone_number varchar(11),
	reg_date timestamp,
	front_num varchar(6),
	back_num varchar(7),
	gender int
);

alter table member add gender int;


create table board(
	title varchar(30),
	content varchar(500),
	cnt int,
	no int,
	nick_name varchar(20),
	upload_date timestamp,
	id varchar(20),
	file_name varchar(100)
);


show tables;
desc member;
desc board;

-- 회원가입 쿼리

insert into member values('firstMember','fisrtId','firstPwd','firstMail','01011112222',sysdate(),'950530','1234567',0);
