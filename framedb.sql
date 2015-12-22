#CREAZIONE DATABASE Frame-Server

drop database if exists framedb;
create database framedb;
use framedb;

drop table if exists frame; 

create table frame
(
   idFoto int NOT NULL AUTO_INCREMENT,
   foto LONGBLOB,
   ora Time,
   giorno Date,  
   primary key(IdFoto)
);
