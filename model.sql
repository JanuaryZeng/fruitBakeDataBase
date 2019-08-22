create database fruit;
use fruit;

create table Users(
Uname varchar(25) primary key,
Upassword varchar(25) not null,
ovenCount varchar(4),
Ucontext varchar(50),
phone varchar(12)
);

create table Ovens(
id int NOT NULL AUTO_INCREMENT,
Oname varchar(10),
Ostatus varchar(4),
primary key (id)
);

create table Fruits(
Fname varchar(25) primary key,
mean varchar(255),
Ficon varchar(100)
);

create table Notes(
noteId int NOT NULL AUTO_INCREMENT,
id int,
Fname varchar(25),
startTime varchar(10),
endTime varchar(10),
Uname varchar(25),
primary key (noteId),
foreign key(id) references Ovens(id),
foreign key(Fname) references Fruits(Fname),
foreign key(Uname) references USers(Uname)

);

create table Logs(
id int NOT NULL AUTO_INCREMENT,
noteId int,
temp varchar(8),
humi varchar(8),
Ltime varchar(10),
Lev varchar(4),
primary key(id),
foreign key(noteId) references Notes(noteId)
);