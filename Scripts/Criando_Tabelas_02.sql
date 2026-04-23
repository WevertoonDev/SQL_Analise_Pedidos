CREATE TABLE produtos(
  id TEXT PRIMARY KEY,
  nome VARCHAR(250),
  descricao VARCHAR(250),
  preco DECIMAL(10,2),
  categoria VARCHAR(50)
);
CREATE TABLE colaboradores(
  Id TEXT PRIMARY KEY,
  Nome VARCHAR(250)NOT NULL,
  Cargo VARCHAR(250),
  Datacontratacao DATE,
  Telefone VARCHAR(20),
  Email VARCHAR(100),
  Rua VARCHAR(100) NOT NULL,
  Bairro VARCHAR(100) NOT NULL,
  Cidade VARCHAR(100) NOT NULL,
  Estado VARCHAR(2) NOT NULL,
  Cep VARCHAR(8) NOT NULL
  );
CREATE TABLE fornecedores(
  Id TEXT PRIMARY KEY,
  Nome VARCHAR(250)NOT NULL,
  Contato VARCHAR(100) NOT NULL,
  Telefone VARCHAR(20),
  Email VARCHAR(100),
  Rua VARCHAR(100) NOT NULL,
  Bairro VARCHAR(100) NOT NULL,
  Cidade VARCHAR(100) NOT NULL,
  Estado VARCHAR(2) NOT NULL,
  Cep VARCHAR(8) NOT NULL
  );
CREATE TABLE clientes(

pedidos

itens_pedidos