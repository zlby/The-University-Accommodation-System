--drop table student;
create table student
(
	stu_id varchar(10) not null primary key,
	stu_name varchar(100) not null,
	address varchar(100) not null,
	stu_sex varchar(10) not null,
	birthday date not null,
	sex varchar(10) not null,
	category varchar(100) not null,
	nationality varchar(100) not null,
	smoker varchar(10) not null
);

--drop table staff;
create table staff
(
	staff_no varchar(4) not null primary key,
	staff_name varchar(100) not null,
	address varchar(100) not null,
	birthday date not null,
	staff_sex varchar(10) not null,
	staff_pos varchar(100) not null,
	staff_loc varchar(100) not null
);

--drop table hall;
create table hall
(
	hall_no varchar(2) not null primary key,
	hall_name varchar(100) not null,
	address varchar(100) not null,
	phone varchar(11) not null,
	manager_no varchar not null,
	foreign key(manager_no) references  staff(staff_no) on update cascade on delete cascade
);

--drop table flat;
create table flat
(
	flat_no varchar(2) not null primary key,
	address varchar(100) not null,
	num_of_bed smallint not null
);

--drop table lease;
create table lease
(
	lease_no varchar(10) not null primary key,
	duration smallint not null,
	stu_id varchar(10) not null,
	acco_type varchar(4) not null,
	place_no varchar(16) not null unique,
	flat_or_hall_no varchar(2) not null,
	date_enter date not null,
	date_leave date,
	foreign key(stu_id) references  student(stu_id) on update cascade on delete cascade
);

--drop table hallroom;
create table hallroom
(
	room_no varchar(6) not null primary key,
	rent float not null,
	place_no varchar(16) not null,
	hall_no varchar(2) not null,
	foreign key(hall_no) references hall(hall_no) on update cascade on delete cascade,
	foreign key(place_no) references lease(place_no) on update cascade on delete cascade
);

--drop table flatroom;
create table flatroom
(
	room_no varchar(6) not null primary key,
	rent float not null,
	place_no varchar(16) not null,
	flat_no varchar(2) not null,
	foreign key(flat_no) references flat(flat_no) on update cascade on delete cascade,
	foreign key(place_no) references lease(place_no) on update cascade on delete cascade
);

--drop table invoice;
create table invoice
(
	invoice_no varchar(14) not null primary key,
	lease_no varchar(10) not null,
	semester varchar(50) not null,
	paymentdue float not null,
	stu_id varchar(10) not null,
	pay_date date not null,
	foreign key (lease_no) references lease(lease_no) on update cascade on delete cascade,
	foreign key (stu_id) references student(stu_id) on update cascade on delete cascade
);

--drop table inspection;
create table inspection
(
	staff_no varchar(4) not null,
	flat_no varchar(2) not null,
	ins_date date not null,
	satisfy varchar(3) not null,
	addition varchar(500),
	primary key(staff_no, flat_no, ins_date),
	foreign key (staff_no) references staff(staff_no) on update cascade on delete cascade,
	foreign key (flat_no) references flat(flat_no) on update cascade on delete cascade
);

--drop table course;
create table course
(
	course_no varchar(6) not null primary key,
	course_title varchar(100) not null,
	course_leader varchar(100) not null,
	inter_phone varchar(11) not null,
	room_no varchar(3) not null,
	depar_name varchar(100) not null
);

--drop table studentcourse;
create table studentcourse
(
	stu_id varchar(10) not null,
	course_no varchar(6) not null,
	primary key (stu_id, course_no),
	foreign key (stu_id) references student(stu_id) on update cascade on delete cascade,
	foreign key (course_no) references course(course_no) on update cascade on delete cascade
);

--drop table next_of_kin;
create table next_of_kin
(
	stu_id varchar(10) not null,
	kin_name varchar(100) not null,
	relation varchar(100) not null,
	address varchar(100) not null,
	phone varchar(11) not null,
	primary key (stu_id, kin_name),
	foreign key (stu_id) references student(stu_id) on update cascade on delete cascade
);








