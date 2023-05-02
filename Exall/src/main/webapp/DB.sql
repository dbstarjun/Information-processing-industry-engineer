create table student_2021 (
	student_no char(7) not null,
    student_name varchar2(14),
    dept_code CHAR(2),
    hire_date varchar2(8),
    grade char(1),
    constraint st2021_pk primary key (student_no)
);


insert into student_2021 values ('YY30501', '고은빈', '60', '20210302', '1');
insert into student_2021 values ('YY30612', '강태윤', '30', '20210302', '4');
insert into student_2021 values ('YY00000', '쌤', '90', '20230302', '4');
insert into student_2021 values ('YY30505', '김동건', '60', '20210302', '2');
insert into student_2021 values ('YY30506', '김승준', '60', '20210302', '3');

select s.student_no, s.student_name, s.dept_code, 
to_char(to_date(s.hire_date, 'yyyymmdd'), 'yyyy"년"mm"월"dd"일"'), 
s.grade  
from student_2021 s


create table attendance_2023 (
	student_no char(7) not null,
    absence NUMBER(3),
    night NUMBER(3),
    holiday NUMBER(3),
    constraint at2023_pk primary key (student_no)
);

insert into attendance_2023 values ('YY30501', 1, 2, 3);
insert into attendance_2023 values ('YY30612', 2, 3, 4);
insert into attendance_2023 values ('YY00000', 0, 0, 0);
insert into attendance_2023 values ('YY30505', 4, 5, 6);
insert into attendance_2023 values ('YY00506', 7, 8, 9);


select * from attendance_2023


create table department_2023 (
	dept_code char(2) NOT NULL,
    dept_name varchar2(20),
    location varchar2(20),
    constraint dm2023_PK primary key (dept_code)
);

insert into department_2023 values('10', '전자과', '전자과동');
insert into department_2023 values('20', '정통과', '정통과동');
insert into department_2023 values('30', '소프트', '소프트과동');
insert into department_2023 values('40', '바이오', '바이오과동');
insert into department_2023 values('50', '생명', '바이오과동');
insert into department_2023 values('60', '도제반', '도제실');
insert into department_2023 values('70', '취업준비반', '취준반');
insert into department_2023 values('80', '기능반', '기능반실');
insert into department_2023 values('90', '기타', '학교');


select * from department_2023

select * from student_2021 where student_no=?
