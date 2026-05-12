begin TRANSACTION
SELECT * FROM clientes

SELECT * FROM pedidos

UPDATE pedidos SET status = 'Concluido' WHERE status = 'Em Andamento'

DELETE from clientes

ROLLBACK

COMMIT