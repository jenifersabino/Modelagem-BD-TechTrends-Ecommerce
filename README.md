# 🛒 TechTrends E-commerce: Modelagem de Banco de Dados Relacional

## 🚀 Visão Geral do Projeto

Este repositório contém o projeto lógico e os scripts SQL (DDL e DML) para o minimundo **TechTrends**, uma plataforma de E-commerce especializada na venda de eletrônicos e acessórios.

O objetivo principal desta modelagem é criar uma base de dados robusta, **normalizada (até 3FN)** e livre de redundâncias, capaz de gerenciar o fluxo de vendas completo: desde o catálogo de produtos e controle de estoque por variação (cor, tamanho) até o registro preciso de clientes, endereços e pedidos.

### ⚙️ Tecnologias Utilizadas

| Componente | Uso |
| :--- | :--- |
| **Modelo Lógico** | Notação Pé de Galinha (Crow's Foot), Normalização 3FN |
| **Linguagem** | SQL (Structure Query Language) |
| **Dialeto/SGBD** | PostgreSQL (Com ajustes para compatibilidade com MySQL/MariaDB) |
| **Ferramentas** | VS Code, DBeaver/PgAdmin/Workbench |

***

## 📊 Modelo Lógico: O Core do Sistema

A arquitetura do banco de dados foi projetada para otimizar transações e consultas. O ponto chave é a entidade associativa `ITEM_PEDIDO`, que resolve a complexidade do relacionamento N:N entre Pedidos e Variações de Produto.

### Diagrama Entidade-Relacionamento (DER) Normalizado



> **Link Direto para o Diagrama Final:** `[LINK_DO_DIAGRAMA]`

***

## 📜 Estrutura e Scripts SQL (DML)

Os scripts estão organizados para garantir a ordem correta de execução e a integridade referencial dos dados.

### 1. DDL: Definição da Estrutura

* `ddl_create_tables.sql`
    * Contém os comandos `CREATE TABLE` para todas as 8 entidades do modelo (`CLIENTE`, `ENDEREÇO`, `PEDIDO`, `VARIAÇÃO`, `PRODUTO`, etc.).
    * Define as **Chaves Primárias (`PRIMARY KEY`)** e as **Chaves Estrangeiras (`FOREIGN KEY`)**, com regras de integridade (`ON DELETE CASCADE` ou `ON DELETE RESTRICT`).

### 2. DML: Inserção de Dados

* `dml_insert_data.sql`
    * Popula todas as tabelas com dados coerentes e realistas (clientes, produtos, variações com estoque, pedidos com itens e avaliações).
    * Garante que os `INSERTs` respeitem as restrições de `FOREIGN KEY`.

### 3. DML: Consultas Essenciais (SELECT)

* `dml_select_queries.sql`
    * **Consulta 1 (JOIN):** Busca de Pedidos por email do Cliente.
    * **Consulta 2 (WHERE, ORDER BY):** Relatório de Variações com **Estoque Baixo** (menos de 30 unidades).
    * **Consulta 3 (JOIN Múltiplo):** Detalhe completo dos itens (`PRODUTO`, `VARIAÇÃO`, `QUANTIDADE`, `PREÇO`) em um Pedido específico.

### 4. DML: Manutenção de Dados

* `dml_update_delete.sql`
    * **3x UPDATE:** Atualiza status de pedido, corrige estoque e altera cadastro de cliente.
    * **3x DELETE:** Remove endereço não utilizado, cancela avaliação inadequada e exclui um pedido expirado (demonstra `ON DELETE CASCADE`).

***

## 🛠️ Como Executar os Scripts

Para recriar o ambiente e testar o modelo:

1.  Clone este repositório para sua máquina local.
2.  Abra seu cliente SGBD (PgAdmin, Workbench, DBeaver).
3.  Execute o script `ddl_create_tables.sql` para construir o esquema.
4.  Execute o script `dml_insert_data.sql` para popular as tabelas.
5.  Execute os demais scripts (`dml_select_queries.sql`, `dml_update_delete.sql`) para testar as manipulações de dados e validar as regras de integridade.
6.  
> **Link Direto per il Diagramma Finale:** **[ASSETS/der.final.png]**
---

Desenvolvido para fins de estudo e validação de modelagem de dados.
© 2025 - Projeto Modelagem de Banco de Dados.
