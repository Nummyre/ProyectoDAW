create database db_myWeb;

use db_myWeb;

create table usuario(
	id int auto_increment primary key,
	nombre varchar(55) not null,
    user varchar(55) not null,
    password varchar(10) not null,
    foto varchar(255)
    );
    
create table juego(
	id int auto_increment primary key,
    titulo varchar(255) not null,
    Descripcion varchar(255) not null,
    anyo int(4) not null,
    idGenero int not null,
    idPlataforma int not null,
    idUsuario int not null,
    foreign key (idGenero) references genero(id),
    foreign key (idPlataforma) references plataforma(id),
    foreign key (idUsuario) references usuario(id));
    
    create table genero(
		id int auto_increment primary key,
        nombre varchar(55) not null);
        
	create table plataforma(
		id int auto_increment primary key,
        nombre varchar(55) not null);
        
        
	create table comentario(
		id int auto_increment primary key,
        comentario varchar(255),
        idUsuario int not null,
        idJuego int not null,
        foreign key (idUsuario) references usuario(id),
		foreign key (idJuego) references Juego(id));