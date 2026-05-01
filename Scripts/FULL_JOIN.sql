SELECT c.nome, p.id
FROM clientes c 
full join pedidos p
on c.id = p.idcliente
WHERE p.id is NULL
