# 🗄️ SQL: Fundamentos de Banco de Dados Relacionais com Cenários Práticos e Relacionamentos

Este repositório é uma coletânea robusta de scripts SQL desenvolvidos com o objetivo de **aprender e praticar os fundamentos da manipulação de bancos de dados relacionais**, incluindo a crucial **criação de relacionamentos entre tabelas**. Ele serve como um **caderno prático** e um registro da minha jornada para solidificar o conhecimento em comandos SQL essenciais, modelagem de dados e a interconexão de informações em diferentes contextos de aplicação.

Aqui, você encontrará exemplos de como modelar e interagir com bancos de dados complexos, demonstrando a versatilidade do SQL em cenários variados.

## ✨ Destaques e Aprendizados

* **Criação de Bancos de Dados:** Entendimento e aplicação do comando `CREATE DATABASE` para iniciar novos projetos de banco de dados.
* **Definição de Tabelas (`DDL - Data Definition Language`):**
    * Habilidade em criar tabelas (`CREATE TABLE`) definindo colunas, seus respectivos tipos de dados (`VARCHAR`, `BIGINT`, `DECIMAL`, `INT`, `BOOLEAN`, `TEXT`).
    * Uso de `PRIMARY KEY` para garantir a unicidade e integridade dos registros.
    * Aplicação de `AUTO_INCREMENT` para IDs sequenciais.
    * Definição de `NOT NULL` para campos obrigatórios.
* **Relacionamentos entre Tabelas (`FOREIGN KEY`):**
    * Implementação de chaves estrangeiras (`FOREIGN KEY`) para estabelecer relacionamentos "Um para Muitos" entre tabelas.
    * Garantia da integridade referencial dos dados.
* **Manipulação de Dados (`DML - Data Manipulation Language`):**
    * **Inserção de Dados (`INSERT INTO`):** Popular tabelas com registros iniciais, tanto em tabelas primárias quanto nas relacionadas.
    * **Consulta de Dados (`SELECT`):** Recuperar informações do banco de dados, utilizando:
        * `SELECT *` para todas as colunas.
        * Cláusula `WHERE` para filtrar registros com base em condições específicas (ex: salários maiores que X, notas menores que Y, valores entre faixas).
        * Operador `LIKE` para buscas textuais parciais.
        * **`INNER JOIN`:** Combinar dados de duas ou mais tabelas com base em colunas relacionadas, permitindo consultas mais ricas e complexas.
    * **Atualização de Dados (`UPDATE`):** Modificar registros existentes em uma tabela.

## 🚀 Cenários Práticos Explorados

O repositório está organizado com scripts SQL que simulam e resolvem problemas de banco de dados para diversos domínios, com um aumento na complexidade ao incorporar relacionamentos:

1.  **Serviço de RH (`db_servico_rh`):**
    * Criação de uma tabela `tb_colaboradores`.
    * Registro de informações como nome, cargo, salário e setor.
    * Consultas para encontrar colaboradores com salários acima/abaixo de um valor.
    * Atualização de salários.
2.  **E-commerce (`db_ecommerce`):**
    * Criação de uma tabela `tb_produtos`.
    * Registro de produtos com nome, preço, estoque e categoria.
    * Consultas para identificar produtos por faixa de preço.
    * Atualização do estoque de produtos.
3.  **Escola (`db_escola`):**
    * Criação de uma tabela `tb_estudantes`.
    * Registro de estudantes com nome, turma, nota e período.
    * Consultas para verificar notas dos alunos (aprovados/reprovados).
    * Atualização de notas.
4.  **Farmácia (`db_farmacia_bem_estar`):**
    * **Modelagem com Relacionamento:** Criação de `tb_categorias` e `tb_produtos`, com `FOREIGN KEY` conectando produtos às suas categorias.
    * Atributos específicos como `requer_receita` para categorias.
    * Consultas complexas usando `INNER JOIN` para exibir produtos com detalhes da categoria, incluindo filtros por nome do produto e categoria específica.
5.  **Pizzaria (`db_pizzaria_legal`):**
    * **Modelagem com Relacionamento:** Criação de `tb_categorias` e `tb_pizzas`, utilizando `FOREIGN KEY` para relacionar pizzas às suas categorias (ex: Salgada, Doce, Vegetariana).
    * Consultas com `INNER JOIN` para buscar pizzas por categoria e por faixa de preço, além de pesquisas parciais por nome.
6.  **Loja de Games Online (`db_generation_game_online`):**
    * **Modelagem com Relacionamento:** Criação de `tb_classes` e `tb_personagens`, conectando personagens às suas classes (`FOREIGN KEY`).
    * Registro de atributos de personagens como nível, poder de ataque e defesa.
    * Consultas com `INNER JOIN` para listar personagens com detalhes de suas classes, incluindo filtros por poder de ataque/defesa e nome da classe.

## 🛠️ Tecnologia Utilizada

* **SQL (Structured Query Language):** Linguagem padrão para gerenciamento de dados em sistemas de gerenciamento de bancos de dados relacionais (SGBDs). Os scripts são genéricos e podem ser executados em SGBDs como MySQL, PostgreSQL, SQL Server, entre outros.

## ⚙️ Como Utilizar os Scripts

Para utilizar e testar os scripts SQL:

1.  **Escolha um SGBD:** Você pode usar um ambiente como MySQL Workbench, DBeaver, pgAdmin, ou até mesmo um terminal SQL de sua preferência.
2.  **Crie o Banco de Dados:** Copie e execute o comando `CREATE DATABASE` para cada cenário.
    * Ex: `CREATE DATABASE db_farmacia_bem_estar;`
3.  **Selecione o Banco de Dados:** Use o comando `USE` para indicar qual banco de dados você quer trabalhar.
    * Ex: `USE db_farmacia_bem_estar;`
4.  **Crie as Tabelas:** **Importante:** Crie as tabelas **primárias (sem `FOREIGN KEY` como `tb_categorias`)** antes das tabelas que dependem delas (`tb_produtos`).
5.  **Insira os Dados:** Execute os comandos `INSERT INTO` para popular as tabelas com dados de exemplo.
6.  **Execute as Consultas e Atualizações:** Experimente os comandos `SELECT`, `UPDATE`, e `INNER JOIN` para praticar a manipulação de dados e a recuperação de informações combinadas.

## 🤝 Contribuições

Este repositório é um reflexo do meu processo de aprendizado e aprofundamento em SQL. Sinta-se à vontade para explorar os scripts e, se desejar, sugerir melhorias ou adicionar novos cenários de prática!

---
