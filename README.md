## ESTUDO TEÓRICO-PRÁTICO BANCO DE DADOS MYSQL

Estudo e aprendizado Banco de Dados SQL, do básico a conteúdos mais avançados com projetos práticos.

### INSTALANDO MYSQL EM SEU UBUNTU

--> acessar seu terminal

- Instalar mysql-server
$ sudo apt-get install mysql-server

- Checar se mysql está executando:
$ service mysql status

- Se precisar parar o serviço:



####- Configurando mysql:
$ sudo mysql_secure_installation

	- neste instante você irá criar a senha para o usuário root do mysql, após isso será perguntado algumas questões para configuração, como segue abaixo:

		- "Validade password component" Para instalar o componente de controle e segurança de senha: opcional
		
		- Remove anonymous (remover usuarios anonimos): Recomendo "yes"

		- Disallow root remotely (desativar acesso root remoto): Recomendo "yes"

		- Remove test dataBase (remover db de teste): Recomendo "yes"

		- Reload privilege tables (recarregar previlégios/permissoes da tabela): Recomendo "yes"


####-- Conectando no mysql via terminal:
$ sudo mysql -u root -p

- basta informar sua senha do usuário root
- após logar pode-se checar o mysql com alguns comandos:

	* SELECT VERSION(); -- para visualizar a versão
	* SHOW DATABASES; -- para visualizar os BDs que estão no mysql
	* USE nomeDoBancoDeDados; -- para selecionar uma base para trabalho
	* SHOW TABLES; -- para visualizar as tabelas do banco

- rodando todos esses comandos com sucesso teremos a certeza de instalação correta e bom funcionamento do seu mysql



### CASO QUEIRA DESATIVAR O INÍCIO AUTOMÁTICO DO MYSQL EM SEU SISTEMA
- Abra o terminal
$ sudo systemctl disable mysql
ou 
$ sudo service mysql disable

- Obs: lembre de cada vez que for trabalhar com mysql será necessário iniciar o serviço:
$ sudo systemctl start mysql
ou 
$ sudo service mysql start

- Para parar o serviço:
$ sudo systemctl start mysql
ou 
$ sudo service mysql start

- Para checar o status atual do serviço
$ sudo systemctl status mysql
ou 
$ sudo service mysql status


## INSTALANDO MYSQL-WORKBENCH NO SEU UBUNTU:
- Acessar: https://dev.mysql.com/downloads/workbench/

- baixar a versão atual extensão ".deb"

- abrir o seu terminal

- use o comando "cd" para acessar o local do arquivo instalador baixado

$ sudo dpkg -i mysql-workbench.....deb

- verificar se as dependências foram cumpridas e corrigi-las caso necessário:

$ sudo apt-ger -f install