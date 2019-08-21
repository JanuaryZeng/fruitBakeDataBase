create database fruit;
use fruit;

create table Users(
Uname varchar(25) primary key,
Upassword varchar(25) not null,
ovenCount varchar(4)
);

create table Ovens(
id int NOT NULL AUTO_INCREMENT,
bakeCount varchar(4),
statue varchar(4),
primary key (id)
);

create table Fruits(
Fname varchar(25) primary key,
mean varchar(255)
);

create table Notes(
noteId int NOT NULL AUTO_INCREMENT,
id int,
Fname varchar(25),
startTime varchar(10),
endTime varchar(10),
primary key (noteId),
foreign key(id) references Ovens(id),
foreign key(Fname) references Fruits(Fname)

);

create table Logs(
id int NOT NULL AUTO_INCREMENT,
noteId int,
temp varchar(8),
humi varchar(8),
Ltime varchar(10),
primary key(id),
foreign key(noteId) references Notes(noteId)
);