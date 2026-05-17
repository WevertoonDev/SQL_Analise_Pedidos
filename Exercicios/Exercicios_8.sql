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

SELECT *
FROM produtos
LEFT join itenspedidos
on produtos.id = itenspedidos.idproduto
WHERE itenspedidos.idproduto IS NULL


SELECT nome
FROM clientes as c
inner join pedidos as p
on c.id = p.idcliente
WHERE datahorapedido BETWEEN '2023-01-01' and '2023-12-31'
ORDER by datahorapedido ASC

SELECT p.nome
FROM produtos AS p
INNER JOIN itenspedidos AS ip 
ON p.id = IP.idProduto
GROUP BY p.nome
HAVING COUNT(ip.idPedido) < 15;

SELECT p.nome, ip.idpedido
FROM produtos AS p
INNER JOIN itenspedidos AS ip ON P.id = IP.idProduto
INNER JOIN pedidos AS pd ON ip.idPedido = pd.id
INNER JOIN clientes AS c ON pd.idCliente = C.id
WHERE c.nome IN ('Pedro Alves', 'Ana Rodrigues');