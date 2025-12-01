-- SCRIPT DML: ATUALIZAÇÃO (UPDATE)

-- UPDATE 1: Atualizar o Status de um Pedido
-- O pedido 3 (Pendente) foi pago e será enviado.
UPDATE PEDIDO
SET Status = 'Pago', Valor_Total = 80.00 -- Valor atualizado após confirmação
WHERE ID_Pedido = 3 AND Status = 'Pendente';

-- UPDATE 2: Corrigir o Estoque de uma Variação
-- Houve uma entrada de estoque para o UltraBook 5000
UPDATE VARIAÇÃO
SET Estoque_Atual = Estoque_Atual + 10
WHERE SKU = 'UB-5K-13-CE';

-- UPDATE 3: Alterar o Nome Completo de um Cliente (em caso de correção cadastral)
UPDATE CLIENTE
SET Nome_Completo = 'Mariana Silva Souza'
WHERE ID_Cliente = 1;


-- SCRIPT DML: EXCLUSÃO (DELETE)

-- DELETE 1: Remover um Endereço Desativado
-- O cliente 1 não usará mais o endereço de trabalho.
DELETE FROM ENDERECO
WHERE ID_Cliente = 1 AND Tipo_Endereco = 'Trabalho';

-- DELETE 2: Excluir uma Avaliação com Nota 1 (assumindo uma regra de negócio)
-- Exclui avaliações que o sistema considera inadequadas ou falsas.
DELETE FROM AVALIACAO
WHERE ID_Avaliacao = 2 AND Nota = 1; -- (Se a nota 4 for incorreta, use a correta do seu INSERT)

-- DELETE 3: Excluir um Pedido (Atenção: A FOREIGN KEY CASCADE em ITEM_PEDIDO garantirá a exclusão dos itens)
-- Um pedido pendente de pagamento, que expirou, será cancelado.
DELETE FROM PEDIDO
WHERE ID_Pedido = 3 AND Status = 'Pendente';
