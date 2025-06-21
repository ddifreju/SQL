create database db_escola;
use db_escola;

create table tb_estudantes(
id bigint auto_increment primary key,
nome varchar(255) not null,
turma varchar(50),
nota decimal(4, 2) not null,
periodo varchar(255) not null
);

insert into tb_estudantes(nome, turma, nota, periodo) values
('Helena dos Santos', '8º Ano A', 8.50, 'Manhã'),
('Miguel Pereira', '9º Ano B', 6.50, 'Tarde'),
('Alice Ferreira', '8º Ano A', 9.00, 'Manhã'),
('Arthur Rodrigues', '7º Ano C', 5.00, 'Manhã'),
('Laura Oliveira', '9º Ano B', 7.00, 'Tarde'),
('Heitor Almeida', '8º Ano A', 9.50, 'Manhã'),
('Manuela Costa', '7º Ano C', 6.80, 'Tarde'),
('Bernardo Gonçalves', '9º Ano B', 10.00, 'Tarde');

select * from tb_estudantes where nota >7.0;
select * from tb_estudantes where nota < 7.0;
update tb_estudantes set nota = 7.50 where id = 2;