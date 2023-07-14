
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
    
    
    
    
    