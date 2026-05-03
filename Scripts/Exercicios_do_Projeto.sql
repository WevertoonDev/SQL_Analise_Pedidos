SELECT * FROM pedidos
SELECT * FROM itenspedidos
SELECT * from produtos

SELECT p.id, c.nome, SUM(ip.precounitario) AS ValorTotalPedido
FROM clientes c 
join pedidos p on c.id = p.idcliente
join itenspedidos ip ON p.id = ip.idpedido
GROUP BY p.id, c.nome

SELECT c.nome AS NomeCliente, SUM(ip.precounitario) AS SomaTotalPedidos
from clientes c 
INNER join pedidos p 
on c.ID = p.idcliente
INNER JOIN itenspedidos ip
on ip.idpedido
GROUP by c.nome