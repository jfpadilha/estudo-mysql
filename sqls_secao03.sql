use exe_secao03;

select * from pacientes;

INSERT INTO tipos_produto (descricao) VALUES('Materiais');
SELECT * FROM tipos_produto;

show columns FROM produtos;
describe produtos;

INSERT INTO produtos (produto, preco, idTipoProduto) VALUES ('Cadeira de pau', 102.00, 4);

SELECT * FROM produtos;