SELECT nome, rua, bairro, cidade, estado, cep from colaboradores
UNION all
SELECT nome, rua, bairro, cidade, estado, cep from fornecedores;