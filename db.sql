create table user(
userid int primary key,
uname varchar(30),
password varchar(30) not null,
email varchar(30) unique,
role varchar(30) not null
);


create table project(
projectid int primary key,
projname varchar(50) not null,
startdate date not null,
ebddate date not null,
description varchar(100)
);

create table task(
taskid int primary key,
taskname varchar(50) not null,
duedate date not null,
myprid int,
myusrid int,
constraint foreign key fk_myprid(myprid) references project (projectid) on update cascade on delete set null
);