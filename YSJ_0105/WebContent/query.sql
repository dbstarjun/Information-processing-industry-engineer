drop table member_tbl_02 cascade constraint;

create table member_tbl_02 (
	custno number(6) not null,
	custname varchar2(20),
	phone varchar2(13),
	address varchar2(4) check(address in('SK', 'KT', 'LG')),
	joindate date,
	grade char(1),
	city char(2),
	constraint member_tbl_custon_pk primary key (custno)
);
insert into member_tbl_02 values(100001, '김항복', '010-1111-2222', 'SK', '20151202', 'A', '01');
insert into member_tbl_02 values(100002, '이축복', '010-1111-3333', 'SK', '20151206', 'B', '01');
insert into member_tbl_02 values(100003, '장믿음', '010-1111-4444', 'LG', '20151001', 'B', '30');
insert into member_tbl_02 values(100004, '최사랑', '010-1111-5555', 'KT', '20151113', 'A', '30');
insert into member_tbl_02 values(100005, '진평화', '010-1111-6666', 'SK', '20151225', 'B', '60');
insert into member_tbl_02 values(100006, '차공단', '010-1111-7777', 'LG', '20151211', 'C', '60');

select * from MEMBER_TBL_02;

drop table money_tbl_02 cascade constraint;

create table money_tbl_02 (
	custno number(6) not null,
	saleno number(8) not null,
	pcost number(8),
	amount number(4),
	price number(8),
	pcode varchar(4),
	sdate date,
	constraint money_table_pk primary key (custno, saleno),
	constraint custno_fk foreign key (custno) references member_tbl_02 (custno)
);
insert into money_tbl_02 values(100001, 20160001, 500, 5, 2500, 'A00l', '20160101');
insert into money_tbl_02 values(100001, 20160002, 1000, 4, 4000, 'A002', '20160101');
insert into money_tbl_02 values(100001, 20160003, 500, 3, 1500, 'A008', '20160101');
insert into money_tbl_02 values(100002, 20160004, 2000, 1, 2000, 'A004', '20160103');
insert into money_tbl_02 values(100002, 20160005, 500, 1, 500, 'A001', '20160103');
insert into money_tbl_02 values(100003, 20160006, 1500, 2, 3000, 'A003', '20160103');
insert into money_tbl_02 values(100004, 20160007, 500, 2, 1000, 'A001', '20160104');
insert into money_tbl_02 values(100004, 20160008, 300, 1, 300, 'A005', '20160104');
insert into money_tbl_02 values(100004, 20160009, 600, 1, 600, 'A006', '20160104');
insert into money_tbl_02 values(100004, 20160010, 3000, 1, 3000, 'A007', '20160106');

--회원목록 조회
select custno, custname, phone, address, joindate, 
decode(grade, 'A','VIP', 'B','일반', 'C','직원') grade, city 
from member_tbl_02 
order by custno;


select max(custno)+1 nextCustNO from member_tbl_02;

insert into member_tbl_02
values(100007, '칠칠칠', '010-9999-8888', '추가~제주도 제주시 감나무골', '20151211', 'A', '99');

select custno, custname, phone, address, joindate, grade, city
from member_tbl_02 where custno=100001;

update member_tbl_02
set custname='칠칠칠', phone='010-9999-8888', address='추가+수정~제주도 제주시 감나무골', joindate='20151211', grade='A', city='99'
where custno=100007;

delete from memeber_tbl_02
where custno = 100007;

select A.custno, A.custname, decode(A.grade, 'A', 'VIP', 'B', '일반', 'C','직원') grade, SUM(price)price
from member_tbl_02 A, money_tbl_02 B
where A.custno=B.custno
group by A.custno, A.custname, A.grade
order by price desc;