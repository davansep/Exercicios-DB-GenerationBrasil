-- DDL
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

	CREATE TABLE tb_categoria (
		id BIGINT AUTO_INCREMENT PRIMARY KEY,
        tamanho VARCHAR(30) NOT NULL,
        cozinha VARCHAR(30) NOT NULL
    );

	CREATE TABLE tb_pizza (
		id BIGINT AUTO_INCREMENT PRIMARY KEY,
        tipo VARCHAR(20) NOT NULL,
        sabor VARCHAR(20) NOT NULL,
        massa VARCHAR(20) NOT NULL,
        valor BIGINT NOT NULL,
        categoria_id BIGINT DEFAULT NULL,
        
        FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
    );
    
-- DML
SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (tamanho, cozinha) 
VALUES
("Grande", "Tradicional"),
("Média", "Tradicional"),
("Brotinho", "Tradicional"),
("Grande", "Vegana"),
("Média", "Vegana"),
("Brotinho", "Vegana");

SELECT * FROM tb_pizza;

INSERT INTO tb_pizza (tipo, sabor, massa, valor, categoria_id) 
VALUES
("Doce", "Frutas", "Fina", 39.00, 3),
("Salgada", "Calabresa", "Fina",29.00, 1),
("Salgada", "Mussarela","Fina",29.00, 2),
("Doce", "Goiabada","Fina",69.00, 5),
("Doce", "Chocolate","Grossa",59.00, 5),
("Salgada", "Palmito","Grossa",49.00, 4),
("Doce", "Chocolate Branco", "Fina", 39.00, 3),
("Salgada", "Pepperoni", "Fina",29.00, 2),
("Salgada", "Margherita","Grossa",39.00, 1),
("Doce", "Goiabada","Fina",69.00, 5),
("Doce", "Chocolate com Morango","Grossa",59.00, 3),
("Salgada", "Cogumelo","Grossa",69.00, 4);

SELECT tb_pizza.tipo, tb_pizza.sabor, tb_pizza.massa, tb_pizza.valor, tb_categoria.tamanho, tb_categoria.cozinha
FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id
WHERE tb_pizza.valor >= 45.00;

SELECT tb_pizza.tipo, tb_pizza.sabor, tb_pizza.massa, tb_pizza.valor, tb_categoria.tamanho, tb_categoria.cozinha
FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id
WHERE tb_pizza.valor BETWEEN 29.00 AND 60.00;

SELECT * FROM tb_pizza
WHERE tb_pizza.sabor LIKE 'C%';

SELECT tb_pizza.tipo, tb_pizza.sabor, tb_pizza.massa, tb_pizza.valor, tb_categoria.tamanho, tb_categoria.cozinha
FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id
WHERE tb_categoria.cozinha LIKE '%Tradicional%';
