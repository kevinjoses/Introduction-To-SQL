create database MB1;
USE MB1;
CREATE table STUDENT(id int,name varchar(30),age int,place varchar(30),phone bigint,primary key(id));
select * from student;
insert into student(id,name,age,place,phone) values(1,"kevin",22,"chalakudy",9562640213),(2,"smera",20,"mannuthy",9847830656);
insert into student values (3,"jose",50,"pariyaram",6235393065),(4,"shiji",45,"kochi",953478568);
update student set place="thrissur" where id=3;
update student set age=45 where id=3;
create table newstudent like student;
select * from student;
insert into newstudent select * from student;
delete from newstudent where id=1;
select name,place from newstudent;
select * from newstudent where place="kochi";
select name,phone from newstudent where place="kochi";
select * from student where age>25;
select distinct place from newstudent;
select * from newstudent order by place asc;
select name,phone from newstudent order by place desc;
select * from newstudent order by location desc;
alter table newstudent add gender varchar(50);
update newstudent set gender="male" where id=5;
alter table newstudent rename column place to location;
alter table newstudent drop column gender;
truncate newstudent;
select * from student order by id desc limit 2;
select * from student order by rand() limit 1;
select name as "firstname",age,place as "location" from student;
select 10+20 as result;
select 10<11 as result;
select 10<>10 as result;
select * from student where age=45 or place="kochi"; 
select * from student where age between 20 and 40;
select * from student where place in("chalakudy","mannuthy");
select * from student where name like "kevin";
select * from student where name like "s%";
select * from student where name like "%a";
select * from student where name like "%e%";
select * from student where name not like "kevin";
create table country(country_code varchar(10),country_name varchar(30), primary key(country_code));
insert into country values 
("bn","bangladesh"),
("in","india"),
("sr","srilanka"),
("np","nepal");
select * from country;
create table capital(
capital_id varchar(10),country_code varchar(10), capital_name varchar(30),primary key (capital_id),foreign key(country_code) 
references country(country_code));
select * from capital;
insert into capital values("c1","in","new delhi"),("c2","sr","colombo"),("c3","np","katmandu");