SELECT * FROM clientes

SELECT * from pedidos

SELECT c.nome, p.id, p.datahorapedido 
FROM clientes c 
inner join pedidos p 
on c.id = p.idcliente

SELECT * FROM pedidos

SELECT pr.nome, x.idproduto, x.idpedido
FROM(
    SELECT ip.idpedido, ip.idproduto
    from pedidos p
    join itenspedidos ip
    on p.id = ip.idpedido
    WHERE strftime('%m', p.Datahorapedido) = '10') x
RIGHT join produtos pr 
on pr.id = x.idproduto

