create database db_servico_rh;
use db_servico_rh;

create table tb_colaboradores(
id bigint auto_increment primary key,
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal(255) not null,
setor varchar(255)
);

insert into tb_colaboradores(nome, cargo, salario, setor) values 
('Ana Silva', 'Desenvolvedora Sênior', 7500.00, 'Tecnologia'),
('Bruno Costa', 'Analista de RH', 3200.00, 'Recursos Humanos'),
('Carlos Souza', 'Gerente de Projetos', 9800.00, 'Tecnologia'),
('Daniela Lima', 'Assistente Administrativo', 1950.00, 'Administração'),
('Eduarda Melo', 'Analista de Marketing', 4100.00, 'Marketing');

select * from tb_colaboradores where salario > 2000.00;
select * from tb_colaboradores where salario < 2000.00
update tb_colaboradores set salario = 2200.00 where id = 4
