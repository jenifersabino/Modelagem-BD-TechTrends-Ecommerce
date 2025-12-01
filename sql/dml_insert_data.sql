-- SCRIPT DML: INSERÇÃO DE DADOS (POPULAMENTO)

-- Inserção em CATEGORIA
INSERT INTO CATEGORIA (Nome) VALUES
('Smartphones'),
('Notebooks'),
('Acessórios'),
('Periféricos');

-- Inserção em PRODUTO (depende de CATEGORIA)
INSERT INTO PRODUTO (ID_Categoria, Nome, Descricao, Preco_Base) VALUES
(1, 'TechFone X', 'Smartphone top de linha com câmera tripla.', 4500.00),
(2, 'UltraBook 5000', 'Notebook ultraleve com 16GB RAM.', 7800.00),
(3, 'Cabo USB-C Rápido', 'Cabo trançado de 2 metros.', 50.00);

-- Inserção em VARIAÇÃO (depende de PRODUTO)
INSERT INTO VARIAÇÃO (ID_Produto, Cor, Tamanho, SKU, Estoque_Atual) VALUES
(1, 'Preto', '128GB', 'TF-X-128-PR', 50),
(1, 'Prata', '256GB', 'TF-X-256-PRT', 25),
(2, 'Cinza Espacial', '13 polegadas', 'UB-5K-13-CE', 15),
(3, 'Preto', '2 metros', 'CABO-USB-2M', 200);

-- Inserção em CLIENTE
INSERT INTO CLIENTE (Nome_Completo, Email, CPF, Data_Cadastro) VALUES
('Mariana Silva', 'mariana.s@email.com', '11122233344', '2025-10-01'),
('João Souza', 'joao.s@email.com', '55566677788', '2025-10-15'),
('Pedro Almeida', 'pedro.a@email.com', '99900011122', '2025-11-20');

-- Inserção em ENDERECO (depende de CLIENTE)
INSERT INTO ENDERECO (ID_Cliente, Rua, Cidade, Estado, CEP, Tipo_Endereco) VALUES
(1, 'Rua das Flores, 100', 'São Paulo', 'SP', '01000000', 'Principal'),
(2, 'Av. Brasil, 500', 'Rio de Janeiro', 'RJ', '20000000', 'Principal'),
(1, 'Rua do Trabalho, 20', 'São Paulo', 'SP', '01000001', 'Trabalho');

-- Inserção em PEDIDO (depende de CLIENTE e ENDERECO)
INSERT INTO PEDIDO (ID_Cliente, ID_Endereco_Entrega, Status, Valor_Total) VALUES
(1, 1, 'Pago', 4550.00), -- Pedido 1
(2, 2, 'Enviado', 7800.00), -- Pedido 2
(1, 1, 'Pendente', 50.00); -- Pedido 3

-- Inserção em ITEM_PEDIDO (depende de PEDIDO e VARIAÇÃO)
INSERT INTO ITEM_PEDIDO (ID_Pedido, ID_Variacao, Quantidade, Preco_Unitario_Vendido) VALUES
(1, 1, 1, 4500.00), -- TechFone X Preto 128GB
(1, 4, 1, 50.00),  -- Cabo USB-C
(2, 3, 1, 7800.00); -- UltraBook 5000

-- Inserção em AVALIACAO (depende de CLIENTE e PRODUTO)
INSERT INTO AVALIACAO (ID_Cliente, ID_Produto, Nota, Comentario) VALUES
(1, 1, 5, 'Produto excelente, entrega rápida.'),
(2, 2, 4, 'Notebook muito bom, mas a bateria dura um pouco menos que o esperado.');
