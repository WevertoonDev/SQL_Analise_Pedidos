SELECT *
from clientes 
WHERE nome = 'Maria Silva'

SELECT id, idcliente
FROM pedidos
WHERE status = 'Entregue'

SELECT * 
FROM produtos
WHERE preco BETWEEN 10 and  15
