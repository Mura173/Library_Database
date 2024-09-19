/* CRIAR TABELA USUARIO */
CREATE TABLE Usuario
(
  cod_usuario integer PRIMARY KEY,
  nome varchar(255) NOT NULL,
  endereco varchar(255) NOT NULL,
  tel_celular varchar(17) NOT NULL,
  email varchar(255) NOT NULL,
  cpf varchar(11) NOT NULL,
  rg varchar(9) NOT NULL,
  livros_registrados int(2) NOT NULL
);

/* CRIAR TABLE LIVROS */
CREATE TABLE Livros
(
  cod_livros integer PRIMARY KEY,
  titulo varchar(255) NOT NULL,
  genero varchar(255) NOT NULL,
  autor varchar(255) NOT NULL,
  edicao date NOT NULL,
  isbn varchar(13) NOT NULL,
  qtd_disponivel int(2) NOT NULL,
  qtd_paginas int(4) NOT NULL,
  editora varchar(255) NOT NULL,
  disponivel bool NOT NULL
);

/* CRIAR TABLE BIBLIOTECARIO */
CREATE TABLE Bibliotecarios
(
  cod_bibliotecarios integer PRIMARY KEY,
  nome varchar(255) NOT NULL,
  endereco varchar(255) NOT NULL,
  tel_celular varchar(17) NOT NULL,
  email varchar(255) NOT NULL,
  cpf varchar(11) NOT NULL,
  rg varchar(9) NOT NULL,
  carga_horaria float(4) NOT NULL,
  salario float(10) NOT NULL,
  cod_livros integer,
  CONSTRAINT fk_Livros FOREIGN KEY (cod_Livros) REFERENCES Livros(cod_livros)
);

/* INSERIR DADOS NA TABELA "USUÁRIOS" */
INSERT INTO Usuario (cod_usuario, nome, endereco, tel_celular, email, cpf, rg, livros_registrados)
VALUES (1, 'Murilo', 'Rua dos alfaces', '+55 11 94128-0853', 'murapb07@gmail.com', '53998900896', '573982623', 3);

SELECT * FROM Usuario;

/* INSERIR DADOS NA TABELA "LIVRO" */
INSERT into Livros (cod_livros, titulo, genero, autor, edicao, isbn, qtd_disponivel, qtd_paginas, editora, disponivel)
VALUES (1, 'Verity', 'Thriller', 'Coolen Hoover', '2016-03-03', '1234567890123', 4, 326, 'Galera', true);

SELECT * FROM Livros;

/* INSERIR DADOS NA TABELA "BIBLIOTECARIOS" */
INSERT INTO Bibliotecarios (cod_bibliotecarios, nome, endereco, tel_celular, email, cpf, rg, carga_horaria, salario, cod_livros)
VALUES (1, 'Vitoria', 'Rua Pq. Santo Antonio', '+55 11 93721-4983', 'viviborn@etec.sp.gov.br', '59820987366', '938475928', 06.00, 5000.00, 1);

SELECT * FROM Bibliotecarios;