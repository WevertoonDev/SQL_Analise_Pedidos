SELECT * FROM pedidos
SELECT * FROM itenspedidos
SELECT * from produtos

SELECT p.id, c.nome, SUM(ip.precounitario) AS ValorTotalPedido
FROM clientes c 
join pedidos p on c.id = p.idcliente
join itenspedidos ip ON p.id = ip.idpedido
GROUP BY p.id, c.nome
