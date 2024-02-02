
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
);'

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

-- 로그인 쿼리

select id,pwd,nick_name from member where id='1111' and pwd='2222';


-- 건우형 보더 쿼리
CREATE TABLE board(
	type VARCHAR(10),
	title VARCHAR(30),
	content VARCHAR(500),
	cnt INT,
	NO INT,
	nick_name VARCHAR(20),
	upload_date DATETIME,
	id VARCHAR(20),
	file_name VARCHAR(100)
);


-- 성재형 멤버 쿼리

create table member(
   nick_name varchar(20),
   id varchar(20),
   pwd varchar(20),
   email varchar(30),
   phone_number varchar(11),
   reg_date timestamp,
   gender int,
   jumin1 varchar(6),
   jumin2 varchar(7)
   
);