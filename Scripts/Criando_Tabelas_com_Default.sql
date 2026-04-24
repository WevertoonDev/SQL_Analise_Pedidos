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
CREATE table clientes(
  id TEXT NOT NULL,
  nome VARCHAR(250),
  telefone VARCHAR(20),
  email VARCHAR(100) DEFAULT 'Sem email',
  endereco VARCHAR(250),
  PRIMARY KEY(id)
  );
CREATE TABLE pedidos(
  id TEXT PRIMARY KEY,
  idcliente TEXT,
  datahorapedido DATETIME,
  status VARCHAR(50),
  FOREIGN KEY(idcliente) REFERENCES clientes(id) on DELETE CASCADE
  );
CREATE TABLE itenspedidos(
  idpedido TEXT,
  idproduto TEXT,
  quantidade INTEGER,
  precounitario DECIMAL(10,2),
  PRIMARY KEY(idpedido, idproduto),
  FOREIGN KEY(idpedido) REFERENCES pedidos(id) on DELETE CASCADE,
  FOREIGN KEY(idproduto) REFERENCES produtos(id) on DELETE CASCADE
  );
  