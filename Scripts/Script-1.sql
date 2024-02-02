use mvc_db;

create table board(
	no int auto_increment primary key,
	title varchar(100),
	pname varchar(100),
	upfile varchar(100),
	content varchar(9999),
	reg_date datetime
);
alter table mvc_db.board default charset = utf8;
SHOW FULL COLUMNS FROM mvc_db.board;
ALTER TABLE mvc_db.board CONVERT TO character SET utf8;

show variables like 'c%'

insert into board (title, pname, content, reg_date) values
('첫글이다','이상훈','첫글내용','2022-05-06'),
('두글이다','삼상훈','두글내용','2022-06-09'),
('세글이다','사상훈','세글내용','2022-07-12'),
('네글이다','박건우','네글내용','2023-02-24'),
('오글이다','박건수','오글내용','2023-08-13');