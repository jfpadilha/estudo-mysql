
-- ------- AUXILIARES
use secao04;
show tables;
select * from pacientes;

show columns FROM produtos;
describe produtos;

/*
	-- INSERTS
	-- DML Data Manipulation Languages
*/
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Balde', 19.60, 3);
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, dataNascimento) VALUES ('Juca', 'R das bergamotas 34', 'Montanha', 'Lajeado', 'RS', '95900-020', '1973-08-21');
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, dataNascimento) VALUES ('Juca', 'R das loucas 543', 'industria', 'Estrela', 'RS', '95900-233', '1993-12-12');
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, dataNascimento) VALUES ('Juca', 'R das laranjeiras 345', 'Montanha', 'Lajeado', 'RS', '95900-123', '1973-08-20');
INSERT INTO professores (telefone, nome) VALUES (56756789, 'borboletinha amarelinha');
INSERT INTO turmas (capacidade, idProfessor) VALUES (26, 3);

/* 
	-- SELECTS
	-- DQL Data query Languages
*/
SELECT * FROM pacientes;
SELECT * FROM produtos;
SELECT * FROM professores;
SELECT * FROM tipos_produtos;
SELECT * FROM turmas;
SELECT * FROM tipos_produto;

/* ------- NOVA BASE --------- */

CREATE DATABASE secao04;
USE secao04;

/*
	-- CREATES TABLES 
	- DDL Data definition Languages
*/

CREATE TABLE tipos_produto(
	idTipoProduto INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(45) NOT NULL,
    PRIMARY KEY (idTipoProduto) );
    
CREATE TABLE produtos(
	idProduto INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(45) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    idTipoProduto INT NOT NULL,
    PRIMARY KEY (idProduto),
    FOREIGN KEY (idTipoProduto)
    REFERENCES tipos_produto(idTipoProduto) );

CREATE TABLE pacientes(
	idPaciente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    bairro VARCHAR(40) NOT NULL,
    cidade VARCHAR(40) NOT NULL,
    estado VARCHAR(40) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    dataNascimento DATE NOT NULL,
    PRIMARY KEY(idPaciente) );

ALTER table pacientes CHANGE COLUMN data_nascimento dataNascimento DATE NOT NULL;
DESCRIBE pacientes;

CREATE TABLE professores(
	idProfessor INT NOT NULL AUTO_INCREMENT,
    telefone INT NOT NULL,
    nome CHAR(80) NOT NULL,
    PRIMARY KEY(idProfessor) );
    
    
CREATE TABLE turmas(
	idTurma INT NOT NULL AUTO_INCREMENT,
    capacidade INT NOT NULL,
    idProfessor INT NOT NULL,
    PRIMARY KEY (idTurma),
    FOREIGN KEY (idProfessor)
    REFERENCES professores(idProfessor) );

/*
	-- INSERTS 
    -- DML Data Manipulation Languages
*/
show tables;
INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('Impressora');
INSERT INTO tipos_produto (descricao) VALUES ('Roteadores');

INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Desktop', '1200', 1);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Laptop', '1800', 1);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Impr. Jato Tinta', '300', 2);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Mirktoik AC3', '500', 2);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('TP LINK d940', '123', 3);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Intelbras 1242', '243', 3);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Disco voador MK', '1018', 3);


/*
	-- CONSULTAS
	-- DQL Data Query Languages
*/
describe produtos;
SELECT * FROM tipos_produto;
SELECT * FROM produtos;

-- ------- USANDO ALIAS
SELECT p.idProduto AS 'Identificação', p.descricao AS 'Descrição', p.idTipoProduto
	FROM produtos AS p;

describe produtos;

/*
	# DML - data manipulation languages
    
    -- UPDATE
    -- DELETE
*/

UPDATE produtos set idTipoProduto = 2 WHERE idProduto = 14;
UPDATE produtos set preco = 934.49 WHERE idProduto = 8;

DELETE FROM produtos  WHERE idProduto = 14;


/*
	-- PRATICA
    -- DDL - data definition languages
*/


CREATE DATABASE mydb;
USE mydb;

CREATE TABLE pessoas(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    PRIMARY KEY(id) );
    
-- DML
INSERT INTO pessoas (nome) VALUES ("Felicity Jones");
INSERT INTO pessoas (nome) VALUES ("John Holmes");
INSERT INTO pessoas (nome) VALUES ("Pamela Anderson");

-- DQL
SELECT * FROM pessoas;
DELETE FROM pessoas WHERE id = 4;

-- DDL data definition language
ALTER TABLE pessoas 
ADD COLUMN anoNascimento INT NOT NULL DEFAULT 1983;

ALTER TABLE pessoas
ADD COLUMN mes INT NOT NULL; -- desse modo irá definir como 0 os dados que fora inseridos antes

-- DROP
DROP TABLE pessoas;
DROP DATABASE mydb;

/* 
	-- DCL - Data Control Language
    -- acessando com root
*/

FLUSH PRIVILEGES;

USE secao04;
SELECT * FROM produtos;
UPDATE produtos SET preco = 7343.23
	WHERE idProduto = 3;

/*
	-- DTL - Data Transact Language
    -- 
*/
USE secao04;
show tables;
SELECT * FROM tipos_produto;
DESCRIBE tipos_produto;
START TRANSACTION;
	INSERT INTO tipos_produto (descricao) VALUES ('Veicular');
    INSERT INTO tipos_produto (descricao) VALUES ('Sensoriais');
    INSERT INTO tipos_produto (descricao) VALUES ('Manuseio');
-- sera feita a inserção dos dados, porém
COMMIT; -- em caso de sucesso, então grava finalmente os dados e encerra a transação
ROLLBACK; -- em caso de algum erro, então não validar o que foi inserito e desfazer
















