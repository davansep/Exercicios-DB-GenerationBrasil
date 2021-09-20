CREATE DATABASE db_escola;

USE db_escola;
	CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(30) not null,
    idade int(2) not null,
    serie varchar(1) not null,
    nota float (1.1) not null
);

SELECT * FROM tb_estudantes

INSERT INTO tb_estudantes(nome, idade, serie, nota) VALUES ("Ruan", 10, "3ª", 5.5);
INSERT INTO tb_estudantes(nome, idade, serie, nota) VALUES ("Amanda", 14, "8ª", 6.0);
INSERT INTO tb_estudantes(nome, idade, serie, nota) VALUES ("Caique", 17, "2º", 7.0);
INSERT INTO tb_estudantes(nome, idade, serie, nota) VALUES ("Priscila", 18, "3º", 8.5);
INSERT INTO tb_estudantes(nome, idade, serie, nota) VALUES ("Rubi", 9, "2ª", 6.5);
INSERT INTO tb_estudantes(nome, idade, serie, nota) VALUES ("Jade", 7, "1ª", 9.5);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 8.7 WHERE nome = "Jade";
