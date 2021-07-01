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
-- Listando a quantidade de aluguel por cliente
select c.primeiro_nome, c.ultimo_nome, c.email, count(c.primeiro_nome)
from aluguel a, cliente c
where a.cliente_id = c.cliente_id
group by c.primeiro_nome, c.ultimo_nome, c.email
order by c.primeiro_nome;

# Exercício:
-- Localizar os filmes de sua loja virtual com gênero ação
select f.titulo, f.descricao, f.classificacao, c.nome
from categoria c, filme f, filme_categoria fc
where c.categoria_id = fc.categoria_id 
	and f.filme_id = fc.filme_id 
	and c.nome = 'Action'
order by f.titulo;

# Localize o último filme alugado de sua locadora
select a.data_de_aluguel, f.titulo, f.descricao
from aluguel a, filme f, inventario i
where a.inventario_id = i.inventario_id 
	and i.filme_id = f.filme_id
order by a.data_de_aluguel, f.titulo desc
limit 5;

# inserção de valores em tabela
insert into idioma (nome, ultima_atualizacao) values ("Javanes", "2021-06-06 15:18:01");

# 23 - Exercicio: adicionar filme na tabela filme:
insert into filme (titulo, descricao, ano_de_lancamento, 
	idioma_id, idioma_original_id, duracao_da_locacao, 
    preco_da_locacao, duracao_do_filme, custo_de_substituicao, 
    classificacao, recursos_especiais, ultima_atualizacao)
    values
    ("A volta dos que não foram", "Descricao da volta dos careca", 2010, 
	4, 7, 5, 5.66, 123, 7.49,"R", "Trailers", "2021-06-05 15:03:12");

	select titulo, descricao, ano_de_lancamento,  idioma_id, idioma_original_id, 
		duracao_da_locacao, preco_da_locacao, duracao_do_filme, 
		custo_de_substituicao,      
		classificacao, recursos_especiais, ultima_atualizacao 
	FROM filme 
	order by filme_id desc 
	limit 1;

# UPDATE
UPDATE filme
SET descricao = "Os que voltam de onde não vão"
WHERE filme_id = 1001;

# DELETE
DELETE FROM filme
WHERE filme_id = 999;

# Somando valores com o comando SUM()

-- somar o preço de locação de todos os filmes da loja
SELECT sum(f.preco_da_locacao) soma
FROM filme f;

-- somar o preço da locação  e o preço de custo de substituição dos filmes em categoria 'Action'
select sum(f.preco_da_locacao) Preco, sum(f.custo_de_substituicao)
from categoria c, filme f, filme_categoria fc
where c.categoria_id = fc.categoria_id 
	and f.filme_id = fc.filme_id 
	and c.nome = 'Action'
order by f.titulo;

# AVG() - obtendo média de valores da tabela
select avg(f.preco_da_locacao)
from filme f;

-- Média de preço da locação e média do custo de substituição 
-- para filmes com categoria 'action'
select avg(f.preco_da_locacao) M_Preco, avg(f.custo_de_substituicao) M_Subst
from categoria c, filme f, filme_categoria fc
where c.categoria_id = fc.categoria_id 
	and f.filme_id = fc.filme_id 
	and c.nome = 'Action'
order by f.titulo;

# Filtrando ocorrências duplicadas pela cláusula DISTINCT
-- select de último filme locado 
select distinct f.titulo, f.descricao, f.filme_id
from aluguel a, filme f, inventario i
where a.inventario_id = i.inventario_id 
	and i.filme_id = f.filme_id
order by f.titulo desc;

#---------------| 
# Exercício:
# Trazer lista dinstinta
select distinct f.titulo, f.descricao, f.filme_id
from aluguel a, filme f, inventario i
where a.inventario_id = i.inventario_id 
	and i.filme_id = f.filme_id
order by f.titulo desc;

-- Removendo duplicadas do select usando group by
select  f.titulo, any_value(f.descricao), any_value(f.filme_id)
from aluguel a, filme f, inventario i
where a.inventario_id = i.inventario_id 
	and i.filme_id = f.filme_id
group by f.titulo
order by f. titulo asc;

#-----------| Cláusula HAVING()
# faz classificação de agrupamentos
# faz uma segunda filtragem dentro de um agrupamento

-- Listando a quantidade de aluguel por cliente
-- Porém mostrar apenas os clientes que fizeram mais que 20 locações
select c.primeiro_nome, c.ultimo_nome, c.email, count(c.primeiro_nome) Total_de_alugueis
from aluguel a, cliente c
where a.cliente_id = c.cliente_id
group by c.primeiro_nome, c.ultimo_nome, c.email
-- having count(*) >= 45 		-- comando having sempre antes de 'order by'
order by c.primeiro_nome;

#-----------| Utilizando SubConsultas / subquery (select dentro de outro select)
-- consultar o menor preço de locação
Select min(preco_da_locacao)
from filme;

-- consultar o menor preço de locação e mostrar titulo e a descricao
Select min(preco_da_locacao) as min, any_value(f.titulo), any_value(f.descricao)
from filme f;
	-- select com função e outra coluna sempre usar 'group by' ou 'any_value()
	-- 'any_value(NomeDoCampo) evita que dê erro de "incompatible with sql_mode=only_full_group_by"

-- Consultar a lista dos filmes que possuel o menor preço de locação (subquery para resolver)
select titulo, descricao, preco_da_locacao
FROM filme
where preco_da_locacao = 
	(select min(preco_da_locacao)
     from filme)
order by titulo;
    -- subConsulta vai checar o menor valor e a consulta vai trazer os filmes somente com esse valor 

-- Consultar a lista dos filmes que possuem o maior preço de locação
select titulo, descricao, preco_da_locacao
FROM filme
where preco_da_locacao = 
	(select max(preco_da_locacao)
     from filme)
order by titulo;

-- Consultar a lista dos filmes que possuem valor >= que a média de preço de locação
select titulo, descricao, preco_da_locacao
FROM filme
where preco_da_locacao = 
	(select avg(preco_da_locacao)	-- avg = média
     from filme)
order by titulo;

-- Consultar a lista dos filmes que possuem duração >= que a média do temp de duração
select titulo, duracao_do_filme, preco_da_locacao
from filme
where duracao_do_filme >=
(select avg(duracao_do_filme)
from filme)
order by duracao_do_filme;

select titulo, descricao, duracao_do_filme
FROM filme
where duracao_do_filme >= 
	(select avg(duracao_do_filme)
     from filme)
order by 3; -- coluna 3


-- 
-- 
select c.primeiro_nome, c.ultimo_nome, c.email, count(c.primeiro_nome) Total_de_alugueis
from aluguel a, cliente c
where a.cliente_id = c.cliente_id
group by c.primeiro_nome, c.ultimo_nome, c.email
having count(*) >= 45 		-- comando having sempre antes de 'order by'
order by c.primeiro_nome;

-- Mostrar nome e endereço dos clientes que alugaram menos de 30 filmes
-- subconsulta usando IN (está em)
select e.endereco, e.bairro, e.cep, e.telefone
from endereco e
where e.endereco_id 
IN (
	select c.endereco_id -- select de "in" deve ter apenas 1 campo
	from cliente c 
	inner join aluguel a 
    ON a.cliente_id = c.cliente_id
	group by c.primeiro_nome, a.cliente_id
	having count(*) > 45);


-- Mostrar a ultima data de locação
-- dos clientes que possuem mais que 20 locações
select max(a.data_de_aluguel) max, c.primeiro_nome, c.cliente_id
from aluguel a, cliente c
where c.cliente_id = a.cliente_id
and a.aluguel_id
IN (
	select al.aluguel_id
	from aluguel al, cliente cli
    where al.cliente_id = cli.cliente_id
    group by al.aluguel_id);
    -- having count(*) > 20);


-- -----
/* TUNNING
	Utilizado para melhorar o desempenho de uma consulta
	1 - analisar a tabela
	2 - sempre usar primary Key
	3 - sempre usar alias nos nomes das tabelas
	4 - sempre em where e joins números e menos "strings"
*/
# Exercício:
-- Localizar os filmes de sua loja virtual com gênero ação
select f.titulo, f.descricao, f.classificacao, c.nome
from categoria c, filme f, filme_categoria fc
where c.categoria_id = fc.categoria_id 
	and f.filme_id = fc.filme_id 
    and f.filme_id = 19 	#0,00035 sec
#	and c.nome = 'Action' 0,013 sec
order by f.titulo;




use sakila_portBr;
    
show columns from endereco;
show columns from aluguel;
show columns from cliente;

















