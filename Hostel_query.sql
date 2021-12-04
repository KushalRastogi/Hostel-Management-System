create database Hostel_Management
use Hostel_Management

--------------------------------------------------Tables-------------------------------------------------

create table Student
(
id int primary key identity,
img varchar(100),
name varchar(50),
gender varchar(50),
f_phoneno int,
country varchar(50),
state varchar(100),
city varchar(500),
phoneno int,
course varchar(50),
branch varchar(50),
room_no int,
hostel varchar(100),
insert_date date,
status int default 1,

)
alter table Student 
add password varchar(100) default 'grd';
create table city
(
cityid int primary key identity,
cityname varchar(50),
sid int
)



create table state
(
sid int primary key identity,
sname varchar(100),
cid int
)
select *  from state

create table country
(
cid int primary key identity,
cname varchar(50)
)

insert into country(cname)values('Srilanka')


create table admin
(
aid int primary key identity,
username varchar(50),
admin_name varchar(50),
password varchar(50)
)
insert into admin(username,admin_name,password)values('Kushal','ADMIN','ADMIN@123')
select * from admin

create table warden
(
id int primary key identity,
img varchar(100),
name varchar(100),
password varchar(100),
phoneno bigint,
city varchar(100),
gender varchar(100),
salary int,
hostel varchar(100),
)

alter table warden
add status int default 1 

create table course
(
courseid int primary key identity,
course_name varchar(100)
)

create table branch
(
branchid int primary key identity,
branch_name varchar(100),
courseid int
)

------------------------------------------Procedures--------------------------------------------------------


create proc sp_admin_login

@id int=0,
@action varchar(50)=null,
@username varchar(50)=null,
@password varchar(50)=null,
@admin_name varchar(50)=null,
@new varchar(50)=null,
@old varchar(50)=null
as
begin
	if(@action='Select')
	begin
		select * from admin where admin_name=@admin_name and password=@password 
	end
	else if(@action='Update_username')
	begin
		update admin set username=@username
	end
	else if(@action='change_password')
	begin
		update admin set password=@new
		where password=@old
	end
end




alter proc sp_warden
@action varchar(100)=null,
@img varchar(500)=null,
@id int=0,
@name varchar(100)=null,
@password varchar(100)=null,
@city varchar(100)=null,
@gender varchar(100)=null,
@hostel varchar(100)=null,
@phoneno bigint=0,
@salary int=0,
@confirm varchar(100)=null,
@new varchar(100)=null,
@old varchar(100)=null
as
begin
if(@action='Insert')
	begin
		insert into 
		warden(img,name,password,phoneno,city,gender,salary,hostel,insert_date)
		values(@img,@name,@password,@phoneno,@city,@gender,@salary,@hostel,GETDATE())
	end
else if(@action='Select')
	begin
		select * from warden where status=1
	end
else if(@action='edit')
	begin
		select * from warden where id=@id
	end
else if(@action='update')
	begin
		update warden set 
		img=@img,name=@name,password=@password,city=@city,phoneno=@phoneno,salary=@salary,gender=@gender,hostel=@hostel
		where id=@id
	end
else if(@action='delete')
	begin
		update warden set status = 0 where id=@id
	end
else if(@action='warden_login')
	begin
		select * from warden where name=@name and password= @password 
	end
else if(@action='change_password')
	begin
		update warden set password=@new where password=@old
	end
end
truncate table warden

insert into 
		warden(img,name,password,phoneno,city,gender,salary,hostel)
		values('dadbhscbhj','sachin','sachin123','21648','Mumbai','Male','10000','hostel')
		update warden set status = 1 

		

alter proc sp_display
@action varchar(100)=null,
@cid int=0,
@sid int=0,
@courseid varchar(100)=null
as
begin
	if(@action='country')
	begin
		select * from country
	end
	else if(@action='state')
	begin
		select * from state where cid=@cid
	end
	else if(@action='city')
	begin
		select * from city where sid=@sid
	end
	else if(@action='Course')
	begin
		select * from course 
	end
	else if(@action='Branch')
	begin
		select * from branch where courseid=@courseid
	end
end

create proc sp_students
@action varchar(100)=null,
@password varchar(100)=null,
@name varchar(100)=null
as
begin
	if(@action='student_login')
	begin
		select * from Student where name=@name and password=@password
	end
end