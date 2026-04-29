SELECT * FROM clientes

SELECT * from pedidos

SELECT c.nome, p.id, p.datahorapedido 
FROM clientes c 
inner join pedidos p 
on c.id = p.idcliente