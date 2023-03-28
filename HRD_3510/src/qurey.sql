create table member_tbl_02 (
	custno number(6),
	custname varchar2(20),
	phone varchar2(13),
	address varchar2(4) check(address in ('SK', 'KT', 'LG')),
	joindate date,
	grade char(1),
	city char(2),
	constraint member_tbl_custno_pk primary key (custno)
);

insert into member_tbl_02 values(100001, '김행복', '010-1111-2222', 'SK', '20151202', 'A', '01');
insert into member_tbl_02 values(100002, '이축복', '010-1111-3333', 'SK', '20151206', 'B', '01');
insert into member_tbl_02 values(100003, '장믿음', '010-1111-4444', 'LG', '20151001', 'B', '30');
insert into member_tbl_02 values(100004, '최사랑', '010-1111-5555', 'KT', '20151113', 'A', '30');
insert into member_tbl_02 values(100005, '진평화', '010-1111-6666', 'SK', '20151225', 'B', '60');
insert into member_tbl_02 values(100006, '차공단', '010-1111-7777', 'LG', '20151211', 'C', '60');

create table money_tbl_02 (
	custno number(6),
	salenol number(8),
	pcost number(8),
	amount number(4),
	price number(8),
	pcode varchar2(4),
	sdate date,
	constraint money_tabel_pk primary key (custno, salenol)
); 

insert into money_tbl_02 values(100001, 2016001, 500, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100001, 2016002, 1000, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100001, 2016003, 500, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100002, 2016004, 2000, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100002, 2016005, 500, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100003, 2016006, 1500, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100004, 2016007, 500, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100004, 2016008, 300, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100004, 2016009, 600, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100004, 2016010, 3000, 5, 2500, 'A001', '20160101');