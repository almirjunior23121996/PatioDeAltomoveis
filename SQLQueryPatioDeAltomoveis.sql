CREATE DATABASE Patio;
GO
USE Patio;
GO
CREATE TABLE tblCarros
(
	id INT IDENTITY(1,1) PRIMARY KEY,
	modelo VARCHAR (50) NOT NULL,
	preco INT NOT NULL,
	codCliente INT NOT NULL,
	codAlocacao INT NOT NULL,
	codConcessionaria INT NOT NULL,
);
CREATE TABLE tblAlocacao
(
	id INT IDENTITY(1,1) PRIMARY KEY,
	dataLocacao DATE,
	concessionaria VARCHAR (50) NOT NULL,
	quantidade INT NOT NULL,
	carroAlocado VARCHAR (50) NOT NULL,
);
CREATE TABLE tblCliente
(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR (50) NOT NULL,
	cpf VARCHAR (11) NOT NULL,
	telefone VARCHAR (12) NOT NULL,

);
CREATE TABLE tblConcessionarias
(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nomeConcessionaria VARCHAR (50) NOT NULL,
	enderecoConcessionaria VARCHAR (50) NOT NULL,
);
ALTER TABLE tblCarros
ADD CONSTRAINT fk_codCliente
FOREIGN KEY (codCliente)
REFERENCES tblCliente (id);

ALTER TABLE tblCarros
ADD CONSTRAINT fk_codAlocacao
FOREIGN KEY (codAlocacao)
REFERENCES tblAlocacao (id);

ALTER TABLE tblCarros
ADD CONSTRAINT fk_codConcessionaria
FOREIGN KEY (codConcessionaria)
REFERENCES tblConcessionarias (id);

INSERT INTO tblCliente (nome, cpf, telefone)
VALUES ('João Silva', '12345678900', '1234567890'),
       ('Maria Souza', '98765432100', '0987654321');


INSERT INTO tblConcessionarias (nomeConcessionaria, enderecoConcessionaria)
VALUES ('Concessionária A', 'Rua A, 123'),
       ('Concessionária B', 'Avenida B, 456');


INSERT INTO tblAlocacao (dataLocacao, concessionaria, quantidade, carroAlocado)
VALUES ('2024-05-20', 'Concessionária A', 3, 'Modelo X'),
       ('2024-05-21', 'Concessionária B', 2, 'Modelo Y');


INSERT INTO tblCarros (modelo, preco, codCliente, codAlocacao, codConcessionaria)
VALUES ('Modelo X', 30000, 1, 1, 1),
       ('Modelo Y', 35000, 2, 2, 2);