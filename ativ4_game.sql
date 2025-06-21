CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(255) NOT NULL,
    habilidade_principal VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nome_classe, habilidade_principal) VALUES
("Guerreiro", "Ataque Giratório"),
("Mago", "Bola de Fogo"),
("Arqueiro", "Flecha Precisa"),
("Ladrão", "Ataque Furtivo"),
("Clérigo", "Cura Divina");

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
("Aragorn", 100, 2500, 1800, 1),
("Gandalf", 120, 3500, 2200, 2),
("Legolas", 110, 2800, 1500, 3),
("Conan", 90, 2100, 1900, 1),
("Celeste", 95, 1800, 3000, 5),
("Vex'ahlia", 105, 2600, 1200, 3),
("Caleb", 115, 4000, 1100, 2),
("Corvus", 80, 1500, 1300, 4);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, nivel, poder_ataque, poder_defesa, nome_classe, habilidade_principal 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

SELECT nome, nivel, poder_ataque, poder_defesa, nome_classe, habilidade_principal 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id WHERE nome_classe = "Arqueiro";