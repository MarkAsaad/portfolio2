create database Graduation
use Graduation

create table prof(
SSN int primary key , name varchar(50) not null , rank varchar(50) , age int , research_specialty varchar(50))

create table projects(
Project_number int primary key , Sponser_name varchar(50) not null , S_D date , E_D date , Prof_SSN int foreign key references prof(SSN))

create table prof_projects(
prof_SSN int foreign key references prof(SSN) , projects_Project_number int foreign key references projects(project_number))

create table GraduateStudents(
SSN int primary key ,  name varchar(50) not null , phone varchar(50) , Email varchar(50) , Project_number int foreign key references projects(Project_number))

create table Degree_Program(
GraduateStudents_SSN int foreign key references GraduateStudents(SSN) , Degree_Program int )