create database fruit;
use fruit;

create table Users(
Uname varchar(50) primary key,
Upassword varchar(50) not null,
Uicon varchar(255),
Ucontext varchar(255),
phone varchar(30)
);

create table Ovens(
Oname varchar(255),
Ostatus varchar(10),
IP varchar(100),
primary key (Oname)
);

create table Fruits(
Fname varchar(255) primary key,
mean varchar(255),
Ficon varchar(255)
);

create table Notes(
noteId int NOT NULL AUTO_INCREMENT,
Oname varchar(255),
Fname varchar(255),
startTime varchar(100),
endTime varchar(100),
Uname varchar(255),
Nstatus varchar(5),
primary key (noteId),
foreign key(Oname) references Ovens(Oname),
foreign key(Fname) references Fruits(Fname),
foreign key(Uname) references USers(Uname)

);

create table Logs(
id int NOT NULL AUTO_INCREMENT,
noteId int,
temp varchar(50),
humi varchar(50),
Ltime varchar(100),
Lev varchar(10),
primary key(id),
foreign key(noteId) references Notes(noteId)
);