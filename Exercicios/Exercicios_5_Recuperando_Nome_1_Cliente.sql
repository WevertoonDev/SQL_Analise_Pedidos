SELECT *
from clientes 
WHERE nome = 'Maria Silva'

SELECT id, idcliente
FROM pedidos
WHERE status = 'Entregue'

SELECT * 
FROM produtos
WHERE preco BETWEEN 10 and  15

SELECT nome,cargo
from colaboradores
WHERE datacontratacao BETWEEN '2022-01-01' and '2022-06-30'

SELECT nome
FROM clientes
join pedidos
on clientes.id = pedidos.idcliente
ORDER by datahorapedido asc
LIMIT 1