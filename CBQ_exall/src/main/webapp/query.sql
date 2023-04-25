create table tbl_employee_202205(
	emp_no char(4),
	emp_name varchar2(14),
	dept_code char(2),
	hire_date varchar2(8),
	job char(1),
	salary number(9),
	primary key(emp_no)
);

insert into tbl_employee_202205 values('E001', '김길동', '10', '20100101', '9', 5000000);
insert into tbl_employee_202205 values('E002', '이길동', '10', '20100102', '7', 4000000);
insert into tbl_employee_202205 values('E003', '박길동', '10', '20100103', '6', 3500000);
insert into tbl_employee_202205 values('E004', '조길동', '20', '20100104', '4', 3000000);
insert into tbl_employee_202205 values('E005', '황길동', '20', '20100105', '4', 3000000);
insert into tbl_employee_202205 values('E006', '최길동', '20', '20100106', '1', 2000000);
insert into tbl_employee_202205 values('E007', '왕길동', '30', '20100107', '1', 2000000);
insert into tbl_employee_202205 values('E008', '고길동', '30', '20100108', '2', 2300000);
insert into tbl_employee_202205 values('E009', '용길동', '30', '20100109', '2', 2300000);
insert into tbl_employee_202205 values('E010', '현길동', '40', '20100110', '3', 2800000);

create table tbl_work_202205(
	emp_no char(4),
	absence number(3),
	night number(3),
	holiday number(3),
	business_trip number(3),
	primary key(emp_no) 
);

insert into tbl_work_202205 values('E001', 2, 2, 1, 5);
insert into tbl_work_202205 values('E002', 3, 3, 2, 2);
insert into tbl_work_202205 values('E003', 2, 5, 3, 3);
insert into tbl_work_202205 values('E004', 2, 5, 2, 4);
insert into tbl_work_202205 values('E005', 0, 5, 2, 4);
insert into tbl_work_202205 values('E006', 3, 3, 2, 0);
insert into tbl_work_202205 values('E007', 2, 4, 3, 0);
insert into tbl_work_202205 values('E008', 0, 5, 4, 0);
insert into tbl_work_202205 values('E009', 0, 10, 2, 1);
insert into tbl_work_202205 values('E010', 0, 8, 5, 1);

create table tbl_department_202205(
	dept_code char(2),
	dept_name varchar2(20),
	location varchar2(20),
	primary key(dept_code)
);


insert into tbl_department_202205 values('10', '인사팀', '서울특별시');
insert into tbl_department_202205 values('20', '회계팀', '서울특별시');
insert into tbl_department_202205 values('30', '개발팀', '경기도');
insert into tbl_department_202205 values('40', '홍보팀', '경기도');

select * from tbl_employee_202205 aa, tbl_work_202205 bb 
where aa.emp_no = bb.emp_no;  
