show databases;



-- 주석
#얘도 주석
/*주석이 많아요~*/

update person set email ='un@google.com',
age = 28,
pid = 'un',
height = 182.0,
reg_date = '2022-11-22'
where pid = 'un';


create table member(
	pid varchar(20),
	age int,
	height double,
	addr text,
	reg_date date,
	wake_up datetime
);


show tables;

desc member;
desc person;

/*테이블에 컬럼 추가*/
alter table member add mail varchar(40);
-- 테이블에 칼럼 타입 변경
alter table member modify mail double;

-- 테이블에 컬럼 명과 컬럼 타입 변경 (change oldName new_name type)
alter table member change mail email varchar(40);

-- member테이블에 있는 모든 자료들을 person table을 만들 때 다 복제할꺼야! 데이터도 같이 복제! 데이터 복세 싫으면 따로 조건 제어해야함
create table person as select * from member;


-- 테이블의 이름을 변경!
alter table member rename asdf;
alter table asdf rename member;


-- table 삭제!
drop table member;





create table shirt(
	no int,
	name varchar(20),
	price int(3),
	release_date date,
	sales_date datetime,
	size int
);

alter table shirt modify price double;
alter table shirt modify size int(3);
show tables;
desc shirt;
desc person;

-- 하나씩 데이터 추가
insert into person(pid,age,height,addr,reg_date,wake_up,email) values ('woong',29,180.2,'우리집','2024-01-26','2024-01-27 11:00:00','jin02014@naver.com');


-- 다중 데이터 추가
insert into person(pid,age,height,addr,reg_date,wake_up,email) 
values ('jeong',28,180.2,'정가','2024-01-22','2024-05-30 12:00:00','jeong@naver.com'),
('un',29,180.2,'언가','2023-11-26','2025-05-30 09:00:00','un@google.com'),
('man',27,180.2,'만가','2015-12-01','2026-05-30 00:00:00','man@naver.com');

select * from person;

select pid, age, email from person;


update person set age = 27;
update person set age = 28 where pid ='un';
update person set age = 29 where pid ='woong';


delete from person where pid='woong';

select * from person;

-- 연습 문제 1
create table student(
	name varchar(20),
	one_semester_midterm_examination int,
	one_semester_midterm_examination int,
	two_semester_midterm_examination int,
	two_semester_final_examination int
);

show tables;

desc exam;

insert into exam(name,one_semester_midterm_examination,one_semester_final_examination,two_semester_midterm_examination,two_semester_final_examination)
values ('일학생',100,100,98,100),
('이학생',78,60,38,40),
('삼학생',90,80,70,60),
('사학생',20,30,100,100);

alter table student rename exam;


select * from person;

select * from person where reg_date >= '1990-01-01' && email is null; 


select *, (one_semester_midterm_examination + one_semester_final_examination +two_semester_midterm_examination +two_semester_final_examination)/4 as 평균 
from exam
where ((one_semester_midterm_examination + one_semester_final_examination +two_semester_midterm_examination +two_semester_final_examination  )/4) >= 60
order by name, 평균 desc;
                                     


create table student(
	ban int,
	name varchar(10),
	kor int,
	eng int,
	mat int
);


insert into student 
values 
(1,"김철수",100,100,100),
(2,"나미수",93,98,93),
(3,"박그수",83,85,83),
(4,"이지수",73,75,63),
(4,"시길수",83,65,63),
(3,"김눌수",49,55,73),
(2,"박세수",69,45,53),
(1,"평철수",39,35,43),
(2,"츠철수",39,25,33),
(4,"소수수",29,15,23),
(3,"김표수",52,25,13),
(4,"김지수",72,35,13),
(1,"염쇼부",28,48,23),
(2,"식부기",18,58,53),
(2,"비철이",48,68,43),
(1,"키철니",58,78,62),
(4,"프라평",61,88,72),
(3,"이치미",86,98,92),
(2,"기키수",36,100,82),
(1,"글치수",66,98,12),
(2,"김응수",85,88,21),
(2,"소니미",95,78,41),
(1,"프라비",35,68,51),
(4,"기디지",25,58,61),
(4,"시며뱌",55,48,71),
(1,"지르시",65,38,23)
;



select name, max(kor),max(eng),max(mat)
from student
group by name
having avg(kor+eng+mat) >= 200
order by name;


-- 서브스트링 느낌! 문자열 파싱
select left('그린 it 컴퓨터 아카데미',4);
select right ('그린 it 컴퓨터 아카데미',4);
select mid ('그린 it 컴퓨터 아카데미',7,3);
select substring('그린 it 컴퓨터 아카데미',7,3);
select substring('그린 it 컴퓨터 아카데미',7); 
select substring_index ('aaa,bbb,cc,dddd,ee,fff',',',3);
-- ','로 나누고 나눈 것의 몇 번째까지 문자열 출력
select substring_index ('aaa,bbb,cc,dddd,ee,fff',',',3);
-- ','로 나누고 나눈 것의 뒤에서부터 몇 번째까지 출력

select length('그린 it 컴퓨터 아카데미'), char_length('그린 it 컴퓨터 아카데미'); 

select instr('그린 com it com 아cda카데미 com','co');
select instr('그린 com it com 아cda카데미 com','qwer'); -- 없으면 0
select instr('그린 com it com 아cda카데미 com','Co'); -- 대소문자 구분 못함

select position ('co' in '그린 com it com 아cda카데미 com');

select ascii('a');

select upper('aBCd Efg'), lower('aBCd Efg');

select concat('그린', '컴퓨터');

select replace('그린 com it com 아cda카데미 COM','com', '콤퓨타');

select repeat ('it',5);

select insert('그린 com it com 아cda카데미 COM',4,8,'자바');

select ltrim('     그린 컴퓨터     '); --왼쪽만 공백 자름
select rtrim('     그린 컴퓨터   '); --오른쪽만 공백 자름
select trim('     그린 컴퓨터   '); -- 양방향 공백 다 자름


create table exam_nick_name(age int, name varchar(10));

insert into exam_nick_name
values 
(14,"김철수"),
(25,"나실수"),
(37,"다미수"),
(23,"라명수"),
(47,"마프수")
;

select concat(name ,mid('씨군님님님', left(age,1),1)) from exam_nick_name; 

select sysdate(), now(), curdate(), curtime();

select last_day(sysdate()), last_day('2024-02-07'); 

select year(sysdate()), month(sysdate()), day(sysdate());
select dayofyear(sysdate()) , dayofmonth(sysdate()) , dayofweek(sysdate()), dayname(sysdate()), weekday(sysdate());


select concat(year(sysdate()),"년 ",lpad(month(sysdate()),2,0),"월 ", lpad(day(sysdate()),2,0), "일 (",mid("일월화수목금토",dayofweek(sysdate()),1),") ",
lpad(hour(sysdate()),2,0) ," : ", lpad(minute(sysdate()),2,0), " : ", lpad(second(sysdate()),2,0) ); 


select date_add(sysdate(), interval -5 month);
select date_add(sysdate(), interval 5 month);
select date_sub(sysdate(), interval 5 month);


select sysdate(), addtime(sysdate(),'00:05:00'), addtime(sysdate(),'-00:05:00');  
select sysdate(), subtime(sysdate(),'00:05:00'), subtime(sysdate(),'-00:05:00');

select sysdate(), datediff(sysdate(),'2024-02-10'), datediff('2024-02-10',sysdate());
select sysdate(), period_add(202105,8), period_add(202105,-8);  
select sysdate(), period_diff(202105, 202109);


select date_format(sysdate(),'%Y'), date_format(sysdate(),'%y'),
												-- 두자리						   한자리
date_format(sysdate(),'%M'), date_format(sysdate(),'%m'),date_format(sysdate(),'%c'),
date_format(sysdate(),'%D'), date_format(sysdate(),'%d'),
date_format(sysdate(),'%w'), date_format(sysdate(),'%W'),date_format(sysdate(),'%a'),
date_format(sysdate(),'%p'),
date_format(sysdate(),'%H'),date_format(sysdate(),'%h'),date_format(sysdate(),'%k'),date_format(sysdate(),'%l'),
					-- 분						   초
date_format(sysdate(),'%i'),date_format(sysdate(),'%s'),
date_format(sysdate(),'%r'),date_format(sysdate(),'%T');


select unix_timestamp(), unix_timestamp('1970-01-01 09:00:00'), unix_timestamp('1970-01-01 09:00:10');
select from_unixtime(0), from_unixtime(100),from_unixtime(1706587610);
select to_days('0000-01-01'), to_days('0000-02-12'), to_days('0001-01-04');

select from_days(1), from_days(57), from_days(366), from_days(500);  

select time_to_sec('00:01:15'); 
select sec_to_time(100); 


-- 년 월 일 이렇게 들어오면 2025-03-14로 바꿔줌!
select str_to_date('2024년03월14일','%Y년%m월%d일'); 

create table wakeup(
	uptime datetime
);
-- 현재 기준 wakeup이 얼마나 지났는지 출력하라

insert into wakeup values('2024-01-30 09:00:00');
insert into wakeup values('2024-01-06 09:00:00');

select
concat(
	left (
		date_format(timediff(sysdate(),uptime),'%H')/24,
		instr(date_format(timediff(sysdate(), uptime),'%H')/24,'.')-1 
	),
	'일',
	date_format(timediff(sysdate(), uptime),'%H'%24),
	':',
	date_format(timediff(sysdate(), uptime),'%i:%s') 
) as wakeup from wakeup;


select 123.456, -123.456,
abs(123.456),abs(-123.456),
ceiling (123.456), ceiling (-123.456)
,floor(123.456) , floor(-123.456) 
,truncate(123.456,2), truncate(-123.456,2)
,round(123.456,2), round(-123.456,2)
;
-- 		   2의4승				이중 제일 높은 값							이중 제일 낮은 값
select pow(2,4), greatest(2,6,98,1,23,54,6,12,43,54,234), least(2,4,5,436,42,1,123,1254);

select
interval(30,10,20,33,55,44)
,interval(50,10,20,33,55,43)
,interval(30,10,20,33,55,42);


select mid("가가가가가가양미우수수" ,interval (59,0,10,20,30,40,50,60,70,80,90),1);

select 90 as name;

-- if

select if(true,"참이지롱","거짓부렁");

select 
case 1 
	when 1 then '1이지롱'
	when 2 then '2이지롱'
	when 3 then '3이지롱'
	when 4 then '4이지롱'
	else '디폴트지롱'
	end
;

select 
case  
	when 60>= 90 then '수'
	when 60>= 80 then '우'
	when 60>= 70 then '미'
	when 60>= 60 then '양'
	else '가'
end
;

select version(), database(), password('1234');

select 
case  
	when (60+55+74)/3>= 90 then '수'
	when (60+55+74)/3>= 80 then '우'
	when (60+55+74)/3>= 70 then '미'
	when (60+55+74)/3>= 60 then '양'
	else '가'
end
;


create table stud_info(
	name varchar(10),
	addr varchar(100),
	age int,
	phoneNum varchar(20)
);


insert into stud_info values (
	"김철수",
	"강남구",
	39,
	"0101112222"
),
(
	"소수수",
	"송파구",
	29,
	"01033334444"
),
(
	"식부기",
	"은평구",
	19,
	"01055556666"
),
(
	"나미수",
	"관악구",
	29,
	"01077778888"
),
(
	"시길수",
	"서초구",
	39,
	"01099990000"
),
(
	"김응수",
	"마포구",
	49,
	"01015151515"
)
;

-- equals Join
select * from student,stud_info
where student.name = stud_info.name;

-- equals join ! same!
select * from student
join stud_info
on student.name = stud_info.name;

-- outer left equals join
select * from 
stud_info
left outer join student 
on stud_info.name = student.name;

-- outer right equals join
select * from 
stud_info
right outer join student 
on stud_info.name = student.name;


-- inner join 은 equals join 과 같다
select * from 
stud_info
inner join student 
on stud_info.name = student.name;


select * from stud_info
where name = friend;

select * from
stud_info me, stud_info you;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ;

select me.*, you.name from
stud_info me, stud_info you
where you.name = me.friend;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ;

select me.*, you.name from
stud_info me left outer join stud_info you
on you.name = me.friend;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ;

select me.* from
student me, student cut;

select me.* from
student me, student cut
where me.kor >= 70;

select me.* from
student me, student cut
having me.kor >= avg(cut.kor) ;

-- 두개 이상의 테이블을 묶는 방법 union

create table mm1(
	menu varchar(30),
	price int
);

create table mm2(
	menu varchar(30),
	price int,
	cnt int
);


create table mm3(
	menu varchar(30),
	price int,
	cnt int,
	option varchar(50)
);

insert into mm1(menu, price) 
values
('떡볶이', 14000),
('라면', 4000),
('만두국', 8000);

insert into mm2 
values
('까르보나라', 14000, 5),
('니네나라', 12000, 3),
('우리나라', 11400, 2);

insert into mm3 
values
('기본', 20000, 5,'된장찌개'),
('스페셜', 25000, 6,'김치찌개'),
('프리미엄', 28000, 8,'참치찌개'),
('킹갓제네럴엠페러', 100000, 1,'킹제엠찌개')
;

-- 1
select menu from mm1;
select menu from mm2;
select menu from mm3;

-- 2
select menu from mm1
union
select menu from mm2
union
select menu from mm3;
-- 3 유니온은 중복된 데이터는 보여주지 않음
select price from mm1
union
select price from mm2
union
select price from mm3;
-- 4 유니온 all은 중복을 허용!
select price from mm1
union all
select price from mm2
union all
select price from mm3;
-- 5 두개를 동시에 가능!
select menu,price from mm1
union 
select menu,price from mm2
union 
select menu,price from mm3;
-- 6. 컬럼 갯수 맞으면 가능!!
select menu,price from mm1
union 
select menu,cnt from mm2
union 
select menu, option from mm3;
-- 7. 컬럼 갯수 안맞으면 안되는 예시 !
select menu,price from mm1
union 
select menu,cnt, price from mm2
union 
select menu, option from mm3;


-- subquery 쿼리 안에 쿼리문

-- from 절에서 사용한 것
select *, mid("가양미우수" , interval(avg,0,60,70,80,90),1) from
(select *, tot/3 as avg from
(select *, kor+eng+mat as tot from student) e) e2;

-- where절에서 사용한 subquery
select name from stud_info where name ='나미수';



select * 
from stud_info 
where 
friend = (select name from stud_info where name ='소수수');


-- insert into 절 에서도 사용 가능

select max(kor)+1 from student;



insert into student (ban,name,kor,eng,mat) values
(2,'kings',97,96,95)
;



insert into student (ban,name,kor,eng,mat) values
(2,
'kings',
(select max(kor)+1 from student ko),
(select max(eng)+1 from student en),
(select max(mat)+1 from student ma))
;



select name from stud_info where age >= 30;



select * from stud_info si 
where addr in ('마포구','강남구','서초구');



select * from stud_info si 
where addr in (select addr  from stud_info where age >= 30);



select age from stud_info si where name ='식부기';


/*
select * from exam
where kor > all (select kor from exam where sid = 'aaa'); -- all 은 가장 높은 값  : 88



select * from exam
where kor > any (select kor from exam where sid = 'aaa'); -- any 는 가장 낮은 값  : 46
*/


select name,eng, kor-5 
from student stud
where 
	(select avg(eng) 
	from student s)
>= eng; -- 영어 평균 61점



select * from stud_info si ;

insert into stud_info (name,age,addr) value ('홍길동',23,'서대문구');
insert into stud_info (name,age,addr) value ('홍준표',60,'대구');
insert into stud_info (name,age,addr) value ('홍박사',33,'홍대입구');
insert into stud_info (name,age,addr) value ('홍홍홍',47,'입벌구');
insert into stud_info (name,age,addr) value ('홍바람',97,'길구봉구');

commit;

rollback;
-- rollback to savepoint sp2;

savepoint sp1;
savepoint sp2;
savepoint sp3;





insert into student
values (1,
'홍준표'
,99
,10
,50),
(12,
'홍길동'
,100
,100
,0),
(1,
'홍박사'
,20
,10
,30);

select * from student;
commit;
rollback;



-- 제약 조건을 수정할 때
-- not null과 unique()의 방법이 다르다

create table memeber(
	mid varchar(50) primary key,
	mname varchar(100) not null,
	tel varchar(20) unique,
	addr varchar(100)
);

insert into member values
('aaa','정우성','1111','니네집');

/* 기본키 null이면 안 됨 프라이머리키는 필수로 값이 들어가야 함. 그리고 중복은 절대 허용하지 않음. 유일해야하합니다.
insert into member values
('정북성','1111','니네집');
insert into member values
('aaa','정좌성','1111','니네집');
*/


select * from member;

select * from information_schema.columns where TABLE_SCHEMA = 'jsp_db' and TABLE_NAME = 'member';

select * from information_schema.table_constraints;