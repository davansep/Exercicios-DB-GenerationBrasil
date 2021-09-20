# CRIANDO O BANCO DE DADOS
-- create database db_rh;

# CRIANDO A TABELA COM MÍNIMO 5 ATRIBUTOS
/* 
use db_rh;
create table tb_funcionaries (  
	id bigint auto_increment,     
    nome varchar(30) not null,     
    idade int(2) not null,     
    cpf int(11) not null,     
    setor varchar(15) not null,     
    cargo varchar(20) not null 
)
*/

# POPULANDO A TABELA 
/*
insert into tb_funcionaries (nome, idade, cpf, setor, cargo) 
	values ("Simone", 24, "64758374637", "Faturamento", "Faturista");
    
insert into tb_funcionaries (nome, idade, cpf, setor, cargo) 
	values ("Jade", 25, "9876543211", "Tecnologia", "Dev Java Jr.");
    
insert into tb_funcionaries (nome, idade, cpf, setor, cargo) 
	values ("Rose", 45, "5463784937", "Administração", "Assistente Administrativo");
    
insert into tb_funcionaries (nome, idade, cpf, setor, cargo) 
	values ("Priscila", 28, "7483756392", "Tecnologia", "Dev Web Java Jr.");
    
insert into tb_funcionaries (nome, idade, cpf, setor, cargo) 
	values ("Rubi", 18, "1234567891", "Tecnologia", "Programadora");
    
insert into tb_funcionaries (nome, idade, cpf, setor, cargo) 
	values ("Maria", 33, "2763467272", "Tecnologia", "Dev Full Stack");
*/

# ADICIONAR COLUNA NA TABELA JÁ EXISTENTE
-- alter table tb_funcionaries add salario decimal(10,2); 

# SALARIO MAIOR QUE 2000
-- select * from tb_funcionaries where salario > 2000;

# SALARIO MENOR QUE 2000
-- select * from tb_funcionaries where salario > 2000;

# MODIFICANDO DADOS DA TABELA
-- update tb_funcionaries set nome = "Ana, idade = 21, cpf = 46373465836, setor = "Administração", cargo = "Assistente adm Jr.", salario = 1300.00) 
	-- where id = 3;

# RENOMEAR COLUNA
-- alter table tb_funcionaries change salário salario decimal(10,2);

# MODIFICAR TIPO DE DADOS DA COLUNA
-- alter table tb_funcionaries modify column cargo varchar(30);

# DELETAR LINHA/ ID DA TABELA 
-- delete from tb_funcionaries where id = 6;
