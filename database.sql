#database creation

drop table if exists Fotogramma; 
drop table if exists Filmato;
drop table if exists Telecamera;
drop table if exists Utente; 



create table Fotogramma 
(
   IdFoto int NOT NULL AUTO_INCREMENT,
   codFilmato int,
   Foto LONGBLOB,
   Giorno datetime,
   primary key(IdFoto),
   foreign key(codFilmato) REFERENCES Filmato(IdFilmato)
);

create table Filmato
(
   IdFilmato int NOT NULL AUTO_INCREMENT,
   codTelecamera int,
   Nome char(20),
   chiave int,
   primary key(IdFilmato),
   foreign key(codTelecamera) REFERENCES Telecamera(IdTelecamera)
);

create table Telecamera
(
   IdTelecamera int NOT NULL AUTO_INCREMENT,
   Nome char(20),
   Locazione char(20),
   risy int, 
   risx int,
   primary key(IdTelecamera)
);   

create table Utente		
(
  Nome char(20),
  Psw char(20),
  LivPriv int
); 
