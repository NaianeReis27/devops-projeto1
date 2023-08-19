# Projeto 1 - Infraestrutura como Código

## Atividade: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

Este projeto consiste na criação de uma estrutura de usuários, diretórios e permissões em um ambiente Linux, utilizando um script Bash como infraestrutura como código. O script automatiza a criação dos elementos necessários e garante a correta configuração das permissões de acordo com as especificações.

## Estrutura Básica do Projeto

### Diretórios

- /publico
- /adm
- /ven
- /sec

### Grupos

- GRP_ADM
- GRP_VEN
- GRP_SEC

### Usuários

**GRP_ADM:**
- carlos
- maria
- joao

**GRP_VEN:**
- debora
- sebastiana
- roberto

**GRP_SEC:**
- josefina
- amanda
- rogerio

## Definições

- Todo o provisionamento deve ser feito em um arquivo do tipo Bash Script.
- O dono de todos os diretórios criados será o usuário root.
- Todos os usuários terão permissão total dentro do diretório público.
- Os usuários de cada grupo terão permissão total dentro do seu respectivo diretório.
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem.


 **Clone o Repositório:**

   Abra um terminal e navegue até o diretório onde deseja clonar o repositório. Execute o seguinte comando para clonar o repositório:

   ```bash
   git clone https://github.com/NaianeReis27/devops-projeto1.git


Acesse o Diretório do Projeto:

Navegue até o diretório do projeto clonado:

bash
Copy code
cd devops-projeto1
Inicie a Máquina Virtual:

Inicie a máquina virtual utilizando o Vagrant:

bash
Copy code
vagrant up
Isso criará e provisionará a máquina virtual de acordo com o script do projeto.

Provisione a Máquina Virtual:

Após a inicialização da máquina virtual, faça o provisionamento utilizando o Vagrant:

bash
Copy code
vagrant provision
Isso executará o script de criação de diretórios, grupos e usuários.

Verifique as Configurações:

Verifique os grupos e usuários criados na máquina virtual:

bash
Copy code
vagrant ssh
cat /etc/group
cat /etc/passwd
exit
