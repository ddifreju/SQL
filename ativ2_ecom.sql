create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255) not null,
preco decimal(10, 2) not null,
estoque int,
categoria varchar(255)
);

insert into tb_produtos(nome, preco, estoque, categoria) values
('Smartphone Galaxy Z', 3500.00, 50, 'Eletrônicos'),
('Fone de Ouvido Bluetooth', 189.90, 200, 'Acessórios'),
('Notebook Gamer Nitro', 5800.00, 25, 'Eletrônicos'),
('Mouse Gamer Redragon', 120.50, 300, 'Acessórios'),
('Monitor Curvo 27"', 1750.00, 80, 'Monitores'),
('Teclado Mecânico HyperX', 499.00, 150, 'Acessórios'),
('Cadeira Gamer DT3', 1100.00, 40, 'Móveis'),
('Webcam Full HD', 250.00, 120, 'Acessórios');

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;
update tb_produtos set estoque = 280 where id = 4;