CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(255) NOT NULL,
    valor DECIMAL(5,2) NOT NULL,
    ingredientes TEXT,
    tamanho VARCHAR(50),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, descricao) VALUES
("Salgada Tradicional", "Pizzas clássicas com recheios tradicionais"),
("Salgada Especial", "Pizzas com ingredientes selecionados e gourmets"),
("Doce", "Pizzas para sobremesa"),
("Vegetariana", "Pizzas sem carne"),
("Vegana", "Pizzas sem ingredientes de origem animal");

INSERT INTO tb_pizzas(nome_pizza, valor, ingredientes, tamanho, categoria_id) VALUES
("Mussarela", 42.00, "Queijo mussarela, molho de tomate e orégano", "Grande", 1),
("Calabresa", 45.50, "Calabresa fatiada, cebola e azeitonas", "Grande", 1),
("Marguerita", 48.00, "Mussarela, tomate, manjericão e molho de tomate", "Grande", 1),
("Quatro Queijos", 55.00, "Mussarela, provolone, parmesão e gorgonzola", "Grande", 2),
("Chocolate com Morango", 65.00, "Chocolate ao leite e morangos frescos", "Média", 3),
("Frango com Catupiry", 52.50, "Frango desfiado com catupiry original", "Grande", 2),
("Brócolis com Palmito", 58.00, "Brócolis, palmito, mussarela e alho", "Grande", 4),
("Banana com Canela", 62.00, "Banana, açúcar, canela e leite condensado", "Média", 3);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%m%";

SELECT nome_pizza, valor, ingredientes, tamanho, nome_categoria, descricao 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT nome_pizza, valor, ingredientes, tamanho, nome_categoria 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id WHERE nome_categoria = "Doce";