create table TBL_TEACHER_202201 (
	TEACHER_CODE char(3), 
	CLASS_NAME varchar2(12),
	TEACHER_NAME varchar2(12),
	CLASS_PRICE number(8),
	TEACHER_REGIST_DATR char(8),
	primary key(TEACHER_CODE)
);

insert into TBL_TEACHER_202201 values('100', '초급반', '김초급', 100000, '20220101');
insert into TBL_TEACHER_202201 values('200', '중급반', '이중급', 200000, '20220102');
insert into TBL_TEACHER_202201 values('300', '고급반', '박고급', 300000, '20220103');
insert into TBL_TEACHER_202201 values('400', '심화반', '조심화', 400000, '20220104');

create table TBL_MEMBER_202201 (
	C_NO char(5),
	C_NAME varchar2(12),
	PHONE varchar2(11),
	ADDRESS varchar2(50),
	REGIST_DATE char(8),
	C_TYPE varchar2(12),
	primary key(C_NO) 
);

insert into TBL_MEMBER_202201 values('10001', '이헤정', '01011112222', '');