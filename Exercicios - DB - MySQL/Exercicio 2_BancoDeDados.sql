CREATE DATABASE db_ecommerce;

USE db_ecommerce;
	CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo varchar(10) not null,
    categoria varchar(20) not null,
    preco decimal(10,2) not null,
    marca varchar (30) not null
);

SELECT * FROM tb_produtos

INSERT INTO tb_produtos(tipo, categoria, preco, marca) VALUES ("Calça", "Roupas", 29.99, "BAW");
INSERT INTO tb_produtos(tipo, categoria, preco, marca) VALUES ("Blusa", "Roupas", 99.99, "BAW");
INSERT INTO tb_produtos(tipo, categoria, preco, marca) VALUES ("Jaqueta", "Roupas", 119.99, "Nike");
INSERT INTO tb_produtos(tipo, categoria, preco, marca) VALUES ("Short", "Roupas", 59.99, "YouCom");
INSERT INTO tb_produtos(tipo, categoria, preco, marca) VALUES ("Camisa", "Roupas", 69.99, "Adidas");

SELECT * FROM tb_produtos where preco > 500;
SELECT * FROM tb_produtos where preco < 500;

UPDATE tb_produtos set marca = "Nike" where id = 2;
