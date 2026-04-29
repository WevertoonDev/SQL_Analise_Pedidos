SELECT AVG(preco) FROM produtos;
SELECT nome, preco
from produtos
GROUP by nome, preco
HAVING preco > (
  SELECT AVG(preco) 
  FROM produtos);
