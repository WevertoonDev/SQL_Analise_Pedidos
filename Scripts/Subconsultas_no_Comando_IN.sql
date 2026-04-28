SELECT nome, telefone 
FROM clientes 
WHERE ID = (
  SELECT idcliente 
  from pedidos 
  WHERE datahorapedido = '2023-01-02 08:15:00');

SELECT idcliente from pedidos WHERE strftime ('%m', datahorapedido) = '01';

SELECT nome 
from clientes 
WHERE id IN (
  SELECT idcliente 
  from pedidos 
  WHERE strftime ('%m', datahorapedido) = '01');