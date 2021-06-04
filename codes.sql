# Comandos básicos:
use dataBaseName; -- seleciona a dataBase para ser trabalhada

show databases; -- mostra as bases existentes

show tables; -- mostra todas as tabelas do banco selecionado

show columns from tableName; -- mostra todas as colunas da tabela tableName


# Selec simples
SELECT *
FROM address;

SELECT *
FROM film
WHERE film_id = 3;

# ordenação
SELECT *
FROM film
ORDER BY title desc; -- decrescente

SELECT *
FROM film
ORDER BY title asc; -- crescente

# COUNT  e GROUP BY (contar e agrupar)
SELECT rental_rate, count(*)
FROM film
GROUP BY rental_rate
ORDER BY special_features;

SELECT *, COUNT(*)
FROM film
GROUP BY rental_duration;


# WHERE / LIKE / IN
SELECT *
FROM cliente
WHERE cliente_id = 5;

SELECT *
FROM cliente
WHERE primeiro_nome like "%mar%"; -- traz lista de quem tem primeiro nome com "mar" no meio

SELECT *
FROM cliente
WHERE primeiro_nome like "mar%"; -- traz lista de quem tem primeiro nome com "mar" no final

SELECT *
FROM cliente
WHERE loja_id in (1); -- está em 1

SELECT *
FROM cliente
WHERE ultimo_nome in ("JONES", "JACKSON"); -- possui Jones e Jackson

SELECT *
FROM cliente
WHERE loja_id > 1; -- maior do que 1

SELECT *
FROM cliente
WHERE loja_id >= 1; -- maior ou igual a 1

SELECT *
FROM cliente
WHERE loja_id <> 1; -- diferente de 1

# IN (está em)
select *
from cliente
where loja_id in (1, 2, 3);

# INTERVALO
select *
from cliente
where loja_id;

# Exercício - Listagem da descrição dos filmes em ordem alfabética
select *
from filme
order by descricao asc;

# Trabalhando com mais de uma tabela JOIN
select c.primeiro_nome, c.ultimo_nome, c.email, count(c.primeiro_nome)
from aluguel a, cliente c
where a.cliente_id = c.cliente_id
group by c.primeiro_nome, c.ultimo_nome, c.email
order by c.primeiro_nome;

# Exercício:
-- Localizar os filmes de sua loja virtual com gênero ação
select f.titulo, f.descricao, f.classificacao, c.nome
from categoria c, filme f, filme_categoria fc
where c.categoria_id = fc.categoria_id and f.filme_id = fc.filme_id and c.nome = 'Action'
order by f.titulo;


# categoria:  categoria_id, nome, ultima_atualizacao
# filme_categoria: filme_id, categoria_id, ultima_atualizacao
# filme: filme_id, titulo, descricao, classificacao

# aluguel: aluguel_id, cliente_id
# funcionario: funcionario_id, primeiro_nome, ultimo_nome
# cliente: cliente_id, primeiro_nome, ultimo_nome, email



