/*DROP DATABASE prova_banco;*/

create database prova_banco;
 
 use prova_banco;

create table professor(
	pk int not null auto_increment, primary key(pk), 
	nome varchar(255) not null,
	disciplina varchar(255)
);

create table agenda_professor(
	pk int not null auto_increment, primary key(pk),
	disciplina varchar(255),
	horario_aula varchar(255),
	aula_dia int,
	professor_fk int, foreign key(professor_fk) references professor(pk)
);

create table turma(
	pk int not null auto_increment, primary key(pk), 
	horario int,
	capacidade int
);

create table grade_curricular(
	pk int not null auto_increment, primary key(pk), 
	carga_horaria_total varchar(255) not null,
	turma_fk int, foreign key(turma_fk) references turma(pk),
	agenda_professor_fk int, foreign key(agenda_professor_fk) references agenda_professor(pk)
);

create table disciplina(
	pk int not null auto_increment, primary key(pk),
	nome varchar(255) not null,
	professor varchar(255),
	carga_horaria_total int,
	professor_fk int, foreign key(professor_fk) references professor(pk),
	turma_fk int, foreign key(turma_fk) references turma(pk)
);

select * from professor;

insert into professor (nome, disciplina) values ("Jhonatan", "geografia");
insert into professor (nome, disciplina) values ("Tiago", "química");
insert into professor (nome, disciplina) values ("Norberto", "banco de dados");
insert into professor (nome, disciplina) values ("Gisele", "matemática");
insert into professor (nome, disciplina) values ("Sebastião", "biologia");
insert into professor (nome, disciplina) values ("Alexandre", "história");
insert into professor (nome, disciplina) values ("Leandra", "língua inglesa");
insert into professor (nome, disciplina) values ("Whesley", "língua portuguesa");
insert into professor (nome, disciplina) values ("Fernanda", "sociologia");
insert into professor (nome, disciplina) values ("Karoline,", "educação financeira");

update professor set nome= "Karoline" where pk=10;
update professor set disciplina= "Língua Portuguesa" where pk=1;
update professor set disciplina= "Língua Portuguesa" where pk=2;
update professor set disciplina= "Língua Portuguesa" where pk=3;
update professor set disciplina= "Língua Portuguesa" where pk=4;
update professor set disciplina= "Língua Portuguesa" where pk=5;
update professor set disciplina= "Língua Portuguesa" where pk=6;

select * from professor;