-- SCRIPT DML: CONSULTAS (SELECT)

-- Consulta 1: Listar Pedidos de um Cliente específico (JOIN)
-- Retorna o ID do pedido, a data e o nome completo do cliente
SELECT
    P.ID_Pedido,
    P.Data_Pedido,
    C.Nome_Completo
FROM
    PEDIDO P
JOIN
    CLIENTE C ON P.ID_Cliente = C.ID_Cliente
WHERE
    C.Email = 'mariana.s@email.com'
ORDER BY
    P.Data_Pedido DESC;

-- Consulta 2: Produtos com estoque baixo (WHERE e ORDER BY)
-- Retorna o nome do produto, o SKU e o estoque atual das variações com menos de 30 unidades
SELECT
    PR.Nome AS Produto,
    V.SKU,
    V.Estoque_Atual
FROM
    VARIAÇÃO V
JOIN
    PRODUTO PR ON V.ID_Produto = PR.ID_Produto
WHERE
    V.Estoque_Atual < 30
ORDER BY
    V.Estoque_Atual ASC;

-- Consulta 3: Detalhes de um pedido (JOIN Complexo)
-- Retorna os itens, quantidades e preço de venda de um pedido
SELECT
    P.ID_Pedido,
    PR.Nome AS Nome_Produto,
    V.Cor,
    IP.Quantidade,
    IP.Preco_Unitario_Vendido
FROM
    ITEM_PEDIDO IP
JOIN
    PEDIDO P ON IP.ID_Pedido = P.ID_Pedido
JOIN
    VARIAÇÃO V ON IP.ID_Variacao = V.ID_Variacao
JOIN
    PRODUTO PR ON V.ID_Produto = PR.ID_Produto
WHERE
    P.ID_Pedido = 1;
