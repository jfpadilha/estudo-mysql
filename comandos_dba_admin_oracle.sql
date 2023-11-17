

/* ferramenta livesql
- não permite criar usuários e tarefas administrativas */

/******* INICIALIZAÇÃO *******/
--# exportar as variáveis
--	$ . oraenv
--		? orcl
--
--# iniciar o listner
--	$ lsnrctl start
--
--# iniciar o banco
--	$ sqlplus / as sysdba
startup
alter pluggable database all open;
	
--# acessar no browser 
--https://ip_host:5500/em

/******* visualização *******/;
select *
from v$instance;

show pdbs;


/******* TROCAR A SESSAO PARA O PDB *******/
ALTER SESSION SET CONTAINER=orclpdb;

/******* CREATE USER/SCHEMA *******/
CREATE USER userName IDENTIFIED BY passUser;

/******* CHANGE PERMISSION USER *******/
GRANT RESOURCE, DBA, CONNECT TO userName;

/******* DESCRIBE TABLE *******/
DESC joao.ticket;
DESCRIBE schemaName.tableName

/******* *******/


/*******  *******/

/*******  *******/

/*******  *******/