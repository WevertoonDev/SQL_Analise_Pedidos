SELECT c.nome, x.id
FROM clientes c 
left JOIN
(
  SELECT p.id, p.idcliente
  from pedidos p
  WHERE strftime('%m', p.Datahorapedido) = '09')x

on c.id = x.idcliente
WHERE x.idcliente is NULL


SELECT p.id, p.idcliente
from pedidos p
WHERE strftime('%m', p.Datahorapedido) = '10'