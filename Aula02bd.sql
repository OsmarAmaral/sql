create table aluno(
sexo varchar(50),
nome varchar(50),
matricula int primary key
);

create table disciplina(
credito int,
nome varchar(50),
codigo int primary key
);

create table cursa(
nota decimal,
falta int,
semestreAno varchar(50),
codigo int,
matricula int,
primary key(codigo, matricula),
foreign key(codigo) references disciplina(codigo),
foreign key(matricula) references aluno(matricula)
);

insert into
  Aluno(matricula, nome, sexo)
values
(1, 'João', 'Masculino'),
(2, 'Maria Santos', 'Feminino'),
(3, 'Carlos lima','Masculino'),
(4, 'Ana Oliveira', 'Feminino'),
(5, 'Pedro Souza', 'Masculino'),
(6, 'Sofia Alves', 'Feminino'),
(7, 'Rafael Pereira', 'Masculino'),
(8, 'Luana Fernandes', 'Feminino'),
(9, 'Lucas Rodrigues', 'Masculino'),
(10, 'Beatriz Costa', 'Feminino');

insert into
  disciplina(codigo, nome, credito)
values
(1, 'Estrutura de Dados', 4),
(2, 'Projeto Integrador', 6),
(3, 'Orientação a objetos', 4),
(4, 'Requisito de Spftaware', 2),
(5, 'Sistema de Banco de dados', 4);

insert into
  cursa(matricula, codigo, semestreAno, nota, falta)
  values
  (1, 1, 1/2021, 8.5, 0),
  (2, 1, 1/2021, 4.0, 3),
  (3, 2, 1/2021, 9.0, 1),
  (4, 2, 2/2021, 7.8, 2),
  (5, 3, 2/2021, 3.5, 4),
  (6, 3, 2/2021, 8.2, 1),
  (7, 1, 1/2022, 7.0, 0),
  (8, 2, 1/2022, 4.2, 2),
  (9, 4, 2/2022, 9.5, 0),
  (10, 5, 2/2022, 8.8, 1);
  
  update aluno
  set nome = 'Osmar Amaral'
  Where matricula = 1;
  
  update cursa
  set nota = 10
  where matricula = 1;
  
  /* delete from aluno
  where matricula = 1; */

select * from Aluno;
select * from disciplina;
select * from cursa;


