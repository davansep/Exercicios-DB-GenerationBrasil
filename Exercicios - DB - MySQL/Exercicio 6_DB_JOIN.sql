-- DDL
CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    setor VARCHAR(255) NOT NULL,
    linguagens VARCHAR(255) NOT NULL
);

CREATE TABLE tb_curso (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    fk_categoria BIGINT DEFAULT NULL,
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id)
);

-- DML
SELECT * FROM tb_categoria;
INSERT INTO tb_categoria (setor, linguagens)
VALUES 
("Back-end", "Java"),
("Front-end", "Java"),
("Full-Stack", "Java"),
("Back-end", "Python"),
("Front-end", "React"),
("Full-Stack", "Python");

SELECT * FROM tb_curso;
INSERT INTO tb_curso (curso, valor, fk_categoria)
VALUES 
("Java Servlet", 1020.00, 1),
("Java e MongoDB", 1440.00, 3),
("Java EE", 920.00, 2),
("React Native - Mobile", 1500.00, 5),
("Python para Data Science", 1440.00, 6),
("Python Collections", 1020.00, 4);

SELECT * FROM tb_curso WHERE valor > 1400.00;

SELECT * FROM tb_curso WHERE valor BETWEEN 1000.00 AND 1300.00;

SELECT * FROM tb_curso WHERE curso LIKE '%J%';

SELECT * FROM tb_curso WHERE curso LIKE 'J%';

SELECT tb_curso.curso, tb_curso.valor, tb_categoria.linguagens, tb_categoria.setor
FROM tb_curso
INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.fk_categoria
WHERE tb_categoria.linguagens LIKE 'Java';