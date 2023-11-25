/**********************************************************************/
--  PÓS GRAD
--  AULA 2

-- ANOTAÇÕES
/*
 - tomar cuidado com o produto cartesiano, sempre primary key sendo foreign key de outro lado
 
 ALTER JOIN => righ / left / full -> traz todas as colunas independente se tem ou não o dado

*/
/**********************************************************************/

select first_name, department_name
from employees e, departments d
where d.department_id (+) = e.department_id -- o sinal (+) vai trazer todos os valores incluindo nulls
order by 2 desc;

SELECT sysdate FROM DUAL; -- obter data

select table_Name FROM all_tables;

show user;

select first_name, DEPARTMENT_NAME
from employees e JOIN departments d
ON e.department_id= d.department_id
order by 3 desc;


select count(*) from departments;
select count(*) from employees;
desc departments;

/**** COMANDOS DA PROFESSORA ****/


select FIRST_NAME NOME,department_name, employee_id "ID func"
from employees e   , departments d
where e.department_id (+)= d.department_id
order by 3 desc

SELECT SYSDATE FROM DUAL
desc employees

select FIRST_NAME, D.department_id , employee_id
from employees e  RIGHT OUTER JOIN departments d
ON e.department_id = d.department_id
order by e.EMPLOYEE_id 

desc employees

select * from employees
where department_id is null

SELECT salary FROM EMPLoYEES where last_name = 'Abel'



-- EXERCÍCIOS AULA 2

-- 1 - Mostre a estrutura das tabelas USER_TABLES e USER_TAB_COLUMNS e SYSOBJECTS:

select * FROM user_tables;
desc user_tables;

SELECT * FROM user_tab_columns;
desc user_tab_columns;


-- 2 mostre o nome das tabelas do seu esquema
SELECT table_name
FROM all_tables
WHERE OWNER = 'HR';

-- 3 mostre o contepúdo da tabela departments;
SELECT *
FROM departments;

-- 4 qual o nome do funcionário cuja EMPLOYEE_ID é 193
SELECT EMPLOYEE_ID, first_name, last_name
FROM employees
WHERE EMPLOYEE_ID = 193;

-- 5 qual o nome do funcionario(s) que o LAST_NAME comece por G
SELECT last_name
FROM employees
WHERE last_name LIKE 'G%';

-- 6 mostre todos os funcionarios cujo DEPARTMENT_ID é 20
select *
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_id = 20;


-- 7 faça uma query que retorne a lista de funções (JOB_ID) da tabela de empregados sem duplicidade
SELECT DISTINCT JOB_ID
FROM employees;

-- 8 Selecione o nome e a função de todos os empregados da tabela EMPLOYEES  que os salários estejam entre 3000 e 5000
SELECT first_name, last_name, job_id, salary
FROM employees
WHERE salary
BETWEEN 3000 AND 5000
ORDER BY salary;


-- 9 Selecione o nome e a função de todos os empregagos ordenados pelo campo HIREDATE
SELECT first_name, last_name, job_id, hire_date
FROM employees
ORDER BY hire_date;

-- 10 Produza um relatório com o nome de todos os funcionários, código e nome de departamento
SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employees e 
JOIN departments d ON e.department_id = d.department_id;

-- 11 produza uma relação de todos os departamentos que não possuem funcionários
SELECT d.department_id, d.department_name
FROM employees e
RIGHT OUTER JOIN departments d ON e.department_id = d.department_id
WHERE e.department_id IS NULL
ORDER BY e.first_name ;

-- test aux
SELECT * --d.department_id, d.department_name
FROM employees e
RIGHT OUTER JOIN departments d ON e.department_id = d.department_id
WHERE d.department_id = 120;


-- 12 Liste todos os funcionários que estão no departamento cujo nome comece por IT
SELECT *
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE INITCAP(d.department_name) LIKE 'It%';


13 - liste o nome e o ID de todos os funcionários com seus respectivos gerentes (nome e ID também)

SELECT 
    f.employee_id, 
    f.first_name ||' '|| f.last_name AS employee_name, 
    f.manager_id, 
    g.first_name ||' '||g.last_name AS manager_name, 
    g.hire_date
FROM employees f
JOIN employees g ON f.manager_id = g.employee_id;

teste

-- 13  resolução da professora
SELECT 
	F.EMPLOYEE_ID AS FUNCIONARIO_ID,
	F.FIRST_NAME ||' '|| F.LAST_NAME AS FUNCIONARIO_NOME,
    F.HIRE_DATE,
	G.EMPLOYEE_ID AS GERENTE_ID,
	G.FIRST_NAME||' '|| G.LAST_NAME AS GERENTE_NOME,
    G.HIRE_DATE
	FROM 
		EMPLOYEES F, EMPLOYEES G
        WHERE F.MANAGER_ID = G.EMPLOYEE_ID



-- 14 Agora liste apenas os nomes e as datas de adminissão de todos os funcionários admitidos antes de seus gerentes, juntamente com os nomes e as datas de admissão dos respectivos gerentes
-- atribua às colunas o nome: Employee, Emp Hired, Manager e Mgr Hired, respectivamente
SELECT *
FROM employees e1
WHERE e1.hire_date > (
    SELECT *
    FROM employees e2
    WHERE manager_id 

-- 15 Liste a média dos saários por departamento

-- 16 Liste todos os funcionários que ganham mais que a média do seu departamento

-- 17 exiba os detalhes dos funcionários que são gerenciados pelo mesmo gerente e que trabalhem no mesmo departamento dos funcionários: 110 e 188

teste de texto dando pau
/******************************************************************************************************/
--  PÓS GRAD
-- AULA 3
/******************************************************************************************************/



/******************************************************************************************************/
--  PÓS GRAD
-- AULA 4
/******************************************************************************************************/




/******************************************************************************************************/
-- 
/******************************************************************************************************/


/******************************************************************************************************/
-- 
/******************************************************************************************************/


/******************************************************************************************************/
-- 
/******************************************************************************************************/


/******* PL/SQL COMANDS *******/


/******* TRIGGER AUTO-INCREMENT *******/

CREATE OR REPLACE TRIGGER contato_trg
BEFORE INSERT ON contato
FOR EACH ROW
BEGIN
    SELECT contato_seq.NEXTVAL
    INTO :NEW.ID
    FROM DUAL;
END;


/******* CREATE SEQUENC FOR AUTO-INCREMENT *******/

CREATE SEQUENCE fppp_seq
    START WITH 100
    INCREMENT BY 1
    NOMAXVALUE
    NOCYCLE;


/******* DISTINCT *******/
-- elimina duplicatas de um select
SELECT DISTINCT colName
FROM tableName;


/******* ORDENATION *******/
SELECT a,b, c
FROM tableName
ORDER BY a; -- default order asc

SELECT a,b, c
FROM tableName
ORDER BY 3; -- asc for column 3

SELECT a,b, c
FROM tableName
ORDER BY ASC; --(min -> max)

SELECT a,b, c
FROM tableName
ORDER BY DESC; -- (max -> min)

SELECT a,b, c
FROM tableName
ORDER BY ASC NULLS FIRST;

SELECT a,b, c
FROM tableName
ORDER BY DESC NULLS LAST;


/******* LIMIT FOR LINES *******/

SELECT * FROM tableName FETCH FIRST 10 ROWS ONLY; --prefered this

SELECT *FROM tableName WHERE ROWNUM <= 10; -- dá problema quando usada com order by

-- ou limitar com subconsulta:
SELECT a, b, c, d FROM (SELECT ab,bb,cb FROM tableNameB ORDER BY 1) WHERE ROWNUM <=10;


/*******  ALIAS WITH COUNT *******/
SELECT a, b, c
FROM tableName
GROUP BY a
HAVING COUNT(*) > 1 -- mostrar contagem maior que 3
ORDER BY COUNT(*) DESC;

SELECT marca, modelo, cor, COUNT(*) AS cont
FROM carros
--WHERE marca = 'Kia'
GROUP BY marca, modelo, cor
--HAVING COUNT(*) > 3
ORDER BY cont DESC;


/******* NOT OR AND  *******/

SELECT *
FROM carros
WHERE NOT cor = 'Preto'
AND preco > 25000
OR ano = 2022;



/******* BETWEEN  *******/

SELECT *
FROM carros
WHERE preco
BETWEEN 25000 AND 35000;

SELECT *
FROM carros
WHERE preco
NOT BETWEEN 25000 AND 35000;

SELECT *
FROM carros
WHERE preco >= 25000
AND preco <= 35000;

SELECT *
FROM carros
WHERE preco < 20000
OR preco > 35000
ORDER BY preco;



/******* IN (basicamente eh um OR) *******/

SELECT *
FROM carros
WHERE marca = 'Ford'
AND preco IN (25000, 50000);


/******* IS [NOT] NULL *******/

SELECT *
FROM carros
WHERE modelo IS NOT NULL;



/******* COMPARACAO DE GRUPO [ANY] | [ALL] *******/

SELECT *
FROM carros
WHERE ano > ANY(2019, 2021); -- todos > que 2019 entram na query


SELECT modelo, ano
FROM carros
WHERE ano > ALL(2019, 2021); -- todos > que 2022 entram na query




/******* LIKE (padrão de texto) *******/
--> impacta na performance

-- query para quando contem 'A' ou 'a'
SELECT nome
FROM clientes
WHERE nome LIKE 'A%a';


 -- query para quando inicia com "A" e termina com "a" E contem 3 letras
SELECT nome
FROM clientes
WHERE nome LIKE 'A_a';

-- query para quando inicia com 'So' e termina com 'a'
SELECT nome
FROM clientes
WHERE nome LIKE 'So%a';

-- AGORA VEM RESOLUÇÃO DAS PRÁTICAS:

-- Questões

-- Quais estudantes tem mais de 21 anos e uma nota final acima de 85?

-- Quais as disciplinas que foram oferecidas no primeiro semestre, independente do ano, ordenadas por créditos?

-- Quais os professores cujos salarios estao entre 7000 e 8000?

-- Quais alunos que ainda nao receberam suas notas finais?

-- Quais os professores que tem "Paulo" ou "Ana" em seus nomes?

-- Quais disciplinas foram oferecidas no ano de 2022?

-- Quais os estudantes matriculados em cursos de Matematica ou Fisica?

-- Quais os professores cujo salario ainda nao foi definido?

-- Quais alunos tem uma nota final entre 70 e 90?

-- Selecione os alunos, disciplinas e suas notas finais, ordenando pela nota, da maior para o menor e em seguida pela disciplina, em ordem alfabetica. As notas nulas devem aparecer por último.

-- Quais os alunos cujos cursos comecam com a letra "B"?

-- Quais disciplinas tem pelo menos 3 créditos e serao oferecidas em 2022?

-- Quais os professores do departamento de Matematica ou que tem salarios acima de 7500?

-- Quais estudantes receberam notas finais e tem notas acima ou iguais a 85?

-- Selecione os professores ordenados por salario em ordem crescente, mas mantendo os professores sem salario no inicio da lista.

/*******  *******/

/*******  *******/

/*******  *******/

/*******  *******/
/*******  *******/

/*******  *******/

/*******  *******/

/*******  *******/






/****************************** PARA A PRATICA ******************************/

CREATE TABLE Estudantes (
    ID NUMBER PRIMARY KEY,
    Nome VARCHAR2(50),
    Idade NUMBER,
    Curso VARCHAR2(50),
    NotaFinal NUMBER
);

CREATE TABLE Disciplinas (
    ID NUMBER PRIMARY KEY,
    Nome VARCHAR2(50),
    Creditos NUMBER,
    Semestre VARCHAR2(10)
);

CREATE TABLE Professores (
    ID NUMBER PRIMARY KEY,
    Nome VARCHAR2(50),
    Departamento VARCHAR2(50),
    Salario NUMBER
);


-- Populando as tabelas

INSERT INTO Estudantes VALUES (1, 'Diana', 20, 'Matematica', 85);
INSERT INTO Estudantes VALUES (2, 'Diana', 22, 'Fisica', 90);
INSERT INTO Estudantes VALUES (3, 'Carlos', 21, 'Matematica', NULL);
INSERT INTO Estudantes VALUES (4, 'Diana', 23, 'Quimica', 92);
INSERT INTO Estudantes VALUES (5, 'Eduardo', 22, 'Biologia', 80);
INSERT INTO Estudantes VALUES (6, 'Eduardo', 20, 'Historia', 85);
INSERT INTO Estudantes VALUES (7, 'Carlos', 21, 'Portugues', NULL);
INSERT INTO Estudantes VALUES (8, 'Eduardo', 23, 'Geografia', 92);
INSERT INTO Estudantes VALUES (9, 'Isabel', 22, 'Educacao Fisica', 78);
INSERT INTO Estudantes VALUES (10, 'Isabel', 21, 'Artes', 71);

INSERT INTO Disciplinas VALUES (1, 'Calculo', 4, '2021-1');
INSERT INTO Disciplinas VALUES (2, 'Fisica', 3, '2021-2');
INSERT INTO Disciplinas VALUES (3, 'Quimica', 4, '2021-1');
INSERT INTO Disciplinas VALUES (4, 'Estatistica', 3, '2021-2');
INSERT INTO Disciplinas VALUES (5, 'Biologia', 3, '2022-1');
INSERT INTO Disciplinas VALUES (6, 'HistOria', 2, '2021-1');
INSERT INTO Disciplinas VALUES (7, 'Portugues', 4, '2022-2');
INSERT INTO Disciplinas VALUES (8, 'Geografia', 2, '2021-2');
INSERT INTO Disciplinas VALUES (9, 'Educacao Fisica', 1, '2022-1');
INSERT INTO Disciplinas VALUES (10, 'Artes', 2, '2021-1');
INSERT INTO Disciplinas VALUES (11, 'Filosofia', 2, '2022-2');
INSERT INTO Disciplinas VALUES (12, 'Programacao', 4, '2021-1');
INSERT INTO Disciplinas VALUES (13, 'Economia', 3, '2022-1');
INSERT INTO Disciplinas VALUES (14, 'Psicologia', 3, '2021-2');
INSERT INTO Disciplinas VALUES (15, 'Sociologia', 2, '2022-2');

INSERT INTO Professores VALUES (1, 'Joao Paulo', 'Matematica', 7000);
INSERT INTO Professores VALUES (2, 'Ana Maria', 'Fisica', 8000);
INSERT INTO Professores VALUES (3, 'Paulo Martins', 'Quimica', 7500);
INSERT INTO Professores VALUES (4, 'Carmem Ana', 'Biologia', 7200);
INSERT INTO Professores VALUES (5, 'Carlos Miranda', 'Historia', 6800);
INSERT INTO Professores VALUES (6, 'Fernanda souza', 'Portugues', 7100);
INSERT INTO Professores VALUES (7, 'Paulo Roberto', 'Geografia', 7000);
INSERT INTO Professores VALUES (8, 'Luciana Campos', 'Educacao Fisica', 6900);
INSERT INTO Professores VALUES (9, 'Marcos Andrade', 'Artes', NULL);
INSERT INTO Professores VALUES (10, 'Ana Patricia', 'Filosofia', 7300);

COMMIT;


-- CRIANDO TABELA

CREATE TABLE clientes (
    cliente_id NUMBER,
    nome VARCHAR2(50),
    email VARCHAR2(50)
);

CREATE TABLE carros (
  ID_Carro NUMBER(10),
  Marca VARCHAR2(50),
  Modelo VARCHAR2(50),
  Ano NUMBER(4),
  Cor VARCHAR2(30),
  Quilometragem NUMBER(10),
  Preco NUMBER(10, 2)
);

DESC carros

DESC clientes

-- INSERINDO REGISTROS

INSERT INTO clientes (cliente_id, nome, email) VALUES (1, 'Amanda', 'amanda.silva@example.com');
INSERT INTO clientes (cliente_id, nome, email) VALUES (2, 'Joao', 'joao.costa@example.com');
INSERT INTO clientes (cliente_id, nome, email) VALUES (3, 'Andressa', 'andressa.montes@example.com');
INSERT INTO clientes (cliente_id, nome, email) VALUES (4, 'Juliana', 'juliana.santos@example.com');
INSERT INTO clientes (cliente_id, nome, email) VALUES (5, 'Lucas', 'lucas.oliveira@example.com');
INSERT INTO clientes (cliente_id, nome, email) VALUES (6, 'Ana', 'ana.carolina@example.com');
INSERT INTO clientes (cliente_id, nome, email) VALUES (7, 'Pedro', 'pedro.fernandes@example.com');
INSERT INTO clientes (cliente_id, nome, email) VALUES (8, 'Fernanda', 'fernanda.souza@example.com');
INSERT INTO clientes (cliente_id, nome, email) VALUES (9, 'Sofia', 'lee.sofia@gmail.com');
INSERT INTO clientes (cliente_id, nome, email) VALUES (10, 'Sophia', 'taylor.sophia@gmail.com');

INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (1,'Ford', 'Mustang', 2020, 'Vermelho', 5000, 30000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (2,'Chevrolet', 'Camaro', 2021, 'Preto', 4000, 35000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (3,'Dodge', 'Charger', 2019, 'Azul', 7000, 25000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (4,'Toyota', 'Corolla', 2022, 'Branco', 1000, 20000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (5,'Honda', 'Civic', 2021, 'Prata', 1500, 21000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (6,'Nissan', 'Sentra', 2021, 'Preto', 2500, 20000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (7,'Hyundai', 'Elantra', 2022, 'Vermelho', 1000, 22000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (8,'Kia', 'Optima', 2018, 'Azul', 8000, 18000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (9,'Volkswagen', 'Golf', 2020, 'Branco', 5000, 23000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (10,'BMW', '320i', 2019, 'Prata', 4000, 28000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (11,'Mercedes-Benz', 'C200', 2021, 'Preto', 3000, 40000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (12,'Audi', 'A4', 2020, 'Branco', 3500, 38000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (13,'Ford', 'Ranger', 2021, 'Prata', 5000, 34000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (14,'Chevrolet', 'S10', 2020, 'Preto', 4500, 33000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (15,'Toyota', 'Hilux', 2022, 'Branco', 1000, 40000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (16,'Honda', 'HR-V', 2021, 'Vermelho', 2000, 22000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (17,'Nissan', 'Kicks', 2020, 'Azul', 3000, 21000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (18,'Hyundai', 'Creta', 2019, 'Preto', 5000, 20000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (19,'Kia', 'Sportage', 2022, 'Prata', 1000, 24000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (20,'Volkswagen', 'T-Cross', 2021, 'Branco', 2000, 23000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (21,'BMW', 'X1', 2020, 'Preto', 3000, 35000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (22,'Mercedes-Benz', 'GLC 200', 2022, 'Prata', 1000, 45000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (23,'Audi', 'Q3', 2021, 'Branco', 1500, 40000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (24,'Ford', 'Fusion', 2019, 'Preto', 6000, 25000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (25,'Chevrolet', 'Cruze', 2018, 'Azul', 7000, 20000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (26,'Toyota', 'Yaris', 2021, 'Prata', 2000, 18000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (27,'Honda', 'Fit', 2022, 'Branco', 1000, 19000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (28,'Nissan', 'Versa', 2021, 'Preto', 2500, 17000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (29,'Hyundai', 'HB20', 2020, 'Vermelho', 3000, 16000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (30,'Kia', 'Rio', 2019, 'Branco', 4000, 15000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (31,'Chevrolet', 'Cruze', 2018, 'Branco', 7000, 21000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (32,'Toyota', 'Yaris', 2021, 'Preto', 2000, 17000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (33,'Honda', 'Fit', 2022, 'Azul', 1000, 21000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (34,'Nissan', 'Versa', 2021, 'Branco', 2500, 15000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (35,'Hyundai', 'HB20', 2020, 'Preto', 3000, 17000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (36,'Kia', 'Rio', 2019, 'Prata', 4000, 17000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (37,'Kia', NULL, 2022, 'Prata', 1000, 24000);
INSERT INTO carros (ID_Carro, Marca, Modelo, Ano, Cor, Quilometragem, Preco) VALUES (38,'Honda', NULL, 2022, 'Azul', 1000, 21000);

COMMIT;



/******************************************************************************************************/
-- 
/******************************************************************************************************/



