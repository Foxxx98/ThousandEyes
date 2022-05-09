create database VidrieraUTP

use VidrieraUTP

create table Catalogue(
Id char(5) primary key,
Code varchar(5),
Price varchar(5),
);

create table Install(
Id char(6) primary key,
Code varchar(6),
Price varchar(6)
);

create table Material(
Id char(2) primary key,
GlaModel varchar(5),
GlaCost varchar(5),
AluModel varchar(5),
AluCost varchar(5)
);

create table Design(
Id char(50) primary key,
Code varchar(50),
);

create table Orders(
Id char(50) primary key,
IdMaterial char(2) not null,
IdDesign char(50) not null,
CONSTRAINT fk_Material FOREIGN KEY (IdMaterial) REFERENCES Material (Id),
CONSTRAINT fk_Desing FOREIGN KEY (IdDesign) REFERENCES Design (Id)
);

create table Services(
Id char(3) primary key,
IdCatalogue char(5) not null,
IdInstall char(6) not null,
IdOrders char(50) not null,
CONSTRAINT fk_Catalogue FOREIGN KEY (IdCatalogue) REFERENCES Catalogue,
CONSTRAINT fk_Install FOREIGN KEY (IdInstall) REFERENCES Install,
CONSTRAINT fk_Orders FOREIGN KEY (IdOrders) REFERENCES Orders
);