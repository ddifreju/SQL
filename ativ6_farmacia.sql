CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    requer_receita BOOLEAN
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    estoque INT,
    fabricante VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, requer_receita) VALUES
("Medicamentos", true),
("Vitaminas", false),
("Cosméticos", false),
("Higiene Pessoal", false),
("Infantil", false);

INSERT INTO tb_produtos(nome_produto, valor, estoque, fabricante, categoria_id) VALUES
("Dipirona 500mg", 8.50, 200, "Medley", 1),
("Complexo Vitamínico C", 35.00, 150, "Cimed", 2),
("Creme Hidratante Facial", 75.90, 80, "Nivea", 3),
("Shampoo Anticaspa", 28.00, 120, "Head & Shoulders", 4),
("Fralda Descartável Pacote G", 55.00, 300, "Pampers", 5),
("Protetor Solar FPS 50", 65.50, 90, "Sundown", 3),
("Amoxicilina 500mg", 45.00, 100, "EMS", 1),
("Cotonetes", 6.50, 500, "Johnson & Johnson", 4);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT nome_produto, valor, estoque, fabricante, nome_categoria, requer_receita 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome_produto, valor, estoque, fabricante, nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id WHERE nome_categoria = "Cosméticos";
