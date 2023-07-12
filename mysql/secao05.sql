
CREATE DATABASE secao05;
USE secao05;
show tables;
describe produtos;

CREATE TABLE tipos_produto(
	idTipoProduto INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(45) NOT NULL,
    PRIMARY KEY (IdTipoProduto));

ALTER TABLE tipos_produto
	MODIFY descricao VARCHAR(45);
    
DROP TABLE topos_produto;    

CREATE TABLE produtos(
	idProduto INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(45) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    idTipoProduto INT NOT NULL,
    PRIMARY KEY(idProduto),
    FOREIGN KEY(idTipoProduto) REFERENCES tipos_produto(idTipoProduto));
    
    /* 
		-- DML 
        -- INSERTS
	*/
    
INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('Impressora');
INSERT INTO tipos_produto (descricao) VALUES ('Roteadores');
INSERT INTO tipos_produto (descricao) VALUES ('Cabos');
INSERT INTO tipos_produto (descricao) VALUES ('Carregadores');
INSERT INTO tipos_produto (descricao) VALUES ('Smartphones');
    
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Desktop', '1200', 1);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Laptop', '1800', 1);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Impr. Jato Tinta', '300', 2);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Mirktoik AC3', '500', 2);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('TP LINK d940', '3675.56', 3);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Intelbras 1242', '1454.87', 3);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Disco voador MK', '654.43', 4);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Mikroteco carate', '122.53', 2);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('TO de link 9012', '123', 5);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('Notebook cagado 12', '2123.34', 6);
INSERT INTO produtos (descricao, preco, idTipoProduto) VALUES ('PC de barro', '3455.22', 6);

/*
	-- DQL 
    -- filtrando consultas com where
*/

-- mostrar os produtos que são do tipo "impressoras"
SELECT p.idProduto, p.descricao, p.preco, t.descricao
	FROM produtos AS p, tipos_produto AS t
	WHERE t.idTipoProduto = p.idTipoProduto
    AND t.idTipoProduto = 2;

-- a mesma consulta com INNET JOIN
SELECT p.idProduto, p.descricao, p.preco, t.descricao
	FROM produtos AS p
    INNER JOIN tipos_produto AS t
    ON p.idTipoProduto = t.idTipoProduto;
    
SELECT * FROM produtos where idTipoProduto = 2;




























