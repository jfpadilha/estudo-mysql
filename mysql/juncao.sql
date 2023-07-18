
CREATE DATABASE juncao;
USE juncao;

/*
	DDL - Data Definition Languages
    Creation tables
*/ 

CREATE TABLE profissoes(
	idProfissao INT NOT NULL AUTO_INCREMENT,
    cargo VARCHAR(60) NOT NULL,
    PRIMARY KEY(idProfissao));
    
CREATE TABLE clientes (
    idCliente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    dataNascimento DATE NOT NULL,
    telefone VARCHAR(10) NOT NULL,
    idProfissao INT NOT NULL,
    PRIMARY KEY (idCliente),
    FOREIGN KEY (idProfissao) REFERENCES profissoes (idProfissao));

CREATE TABLE consumidor (
	idConsumidor INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    contato VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    cep VARCHAR(20) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    PRIMARY KEY(idConsumidor));
    
    show tables;
    drop table clientes;
    describe profissoes;
    select * from profissoes;
    DELETE FROM profissoes WHERE idProfissao > 50;
    
    INSERT INTO profissoes (cargo) VALUES ("Programador");
    INSERT INTO profissoes (cargo) VALUES ("DBA Oracle");
    INSERT INTO profissoes (cargo) VALUES ("DBA PostgreeSQL");
    INSERT INTO profissoes (cargo) VALUES ("Dev Full Stack");
    INSERT INTO profissoes (cargo) VALUES ("Dev Beck End");
    INSERT INTO profissoes (cargo) VALUES ("Padeiro");
    INSERT INTO profissoes (cargo) VALUES ("Pedreiro");
    INSERT INTO profissoes (cargo) VALUES ("Carpinteiro");
       

/*
	DML - Data manipulation Languages
*/    
INSERT INTO clientes (nome, dataNascimento, telefone, idProfissao) VALUES ('João Pereira', '1981-06-15', '1234-5688', 1);
INSERT INTO clientes (nome, dataNascimento, telefone, idProfissao) VALUES ('Ricardo da Silva', '1973-10-10', '2234-5669', 2);
INSERT INTO clientes (nome, dataNascimento, telefone, idProfissao) VALUES ('Felipe Oliveira', '1987-08-01', '4234-5640', 3);
INSERT INTO clientes (nome, dataNascimento, telefone, idProfissao) VALUES ('Mário Pirez', '1991-02-05', '1234-6534', 5);
INSERT INTO clientes (nome, dataNascimento, telefone, idProfissao) VALUES ('Mário Pirez', '1991-02-05', '8374-3345', 5);
INSERT INTO clientes (nome, dataNascimento, telefone, idProfissao) VALUES ('Mário Pirez', '1991-02-05', '5234-5621', 7);
INSERT INTO clientes (nome, dataNascimento, telefone, idProfissao) VALUES ('Mário Pirez', '1991-02-05', '5234-5621', 9);
INSERT INTO clientes (nome, dataNascimento, telefone, idProfissao) VALUES ('Mário Pirez', '1991-02-05', '5234-5621', 9);
INSERT INTO clientes (nome, dataNascimento, telefone, idProfissao) VALUES ('Mário Pirez', '1991-02-05', '5234-5621', 9);
    
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Alfredo Nunes', 'Maria Nunes', 'Rua da paz, 47', 'São Paulo', '123.456-87', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Ana Trujillo', 'Guilherme Souza', 'Rua Dourada, 452', 'Goiânia', '232.984-23', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Leandro Veloz', 'Pedro Siqueira', 'Rua Vazia, 72', 'São Paulo', '936.738-23', 'Brasil');    

/*
	DQL - Data Query Languages
*/    
select * from consumidor;
SELECT c.idCliente, c.nome, c.dataNascimento, p.cargo
FROM clientes AS c
INNER JOIN profissoes AS p
ON c.idProfissao = p.idProfissao;

describe profissoes;

/* 
	DQL - Data query language
*/

-- PRODUTO CARTESIANO
SELECT c.idCliente, c.nome, c.dataNascimento, c.telefone, p.idProfissao
	FROM clientes AS c, profissoes AS p
    WHERE c.idProfissao = p.idProfissao;

--  INNER JOIN
SELECT c.idCliente, c.nome, c.dataNascimento, c.telefone, p.idProfissao
	FROM clientes AS c
    INNER JOIN profissoes AS p
    ON c.idProfissao = p.idProfissao;
    
-- LEFT OUTER JOIN
SELECT *
	FROM clientes
    LEFT OUTER JOIN profissoes
    ON clientes.idProfissao = profissoes.idProfissao;

-- RIGHT OUTER JOIN
SELECT *
	FROM clientes
    RIGHT OUTER JOIN profissoes
    ON clientes.idProfissao = profissoes.idProfissao
    ORDER BY clientes.idCliente;

-- FULL OUTER JOIN 	(nao funciona no mysql)
-- SELECT *
-- 	FROM clientes
--     FULL OUTER JOIN profissoes
--     ON clientes.idProfissao = profissoes.idProfissao;
    
-- Consulta com UNION no qual substitui uma consulta com FULL OUTER join no mysql
SELECT *
	FROM clientes
    LEFT OUTER JOIN profissoes
    ON clientes.idProfissao = profissoes.idProfissao
    UNION 
SELECT *
	FROM clientes
    RIGHT OUTER JOIN profissoes
	ON clientes.idProfissao = profissoes.idProfissao;

-- 	Cross join / junção cruzada, repete cada registro de uma tabela com outra / monta exatamente um X
SELECT c.nome, c.dataNascimento, c.telefone, p.cargo
	FROM clientes AS c
    CROSS JOIN profissoes AS p;
    
    
-- SELF JOIN - faze join com a própria tabela
SELECT a.idConsumidor AS ID_a, a.nome AS ConsumidorA, b.nome AS consumidorB, b.idConsumidor AS ID_b, a.cidade AS cidade
	FROM consumidor AS a
    INNER JOIN consumidor AS b
    ON a.idConsumidor <> b.idConsumidor
    AND a.cidade = b.cidade
    ORDER BY a.cidade;

describe consumidor;
describe clientes;



















































    
    
    
    