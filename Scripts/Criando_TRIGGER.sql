SELECT * from pedidos

SELECT * from itenspedidos

SELECT DATE(datahorapedido) as Dia, SUM(ip.precounitario) AS FaturamentoDiario
from pedidos p 
join itenspedidos ip
on p.id = ip.idpedido
GROUP BY Dia
ORDER by Dia

CREATE TABLE Faturamentodiario(
  Dia DATE,
  FaturamentoTotal DECIMAL(10,2)
  )
  
CREATE TRIGGER CalculaFaturamentoDiario
AFTER INSERT on itenspedidos
for each ROW
begin 
DELETE from Faturamentodiario;
INSERT INTO Faturamentodiario(Dia, faturamentototal)
SELECT DATE(datahorapedido) as Dia, SUM(ip.precounitario) AS FaturamentoDiario
from pedidos p 
join itenspedidos ip
on p.id = ip.idpedido
GROUP BY Dia
ORDER by Dia;
end;

SELECT * from Faturamentodiario

INSERT INTO Faturamentodiario(Dia, faturamentototal)
SELECT DATE(datahorapedido) as Dia, SUM(ip.precounitario) AS FaturamentoDiario
from pedidos p 
join itenspedidos ip
on p.id = ip.idpedido
GROUP BY Dia
ORDER by Dia