CREATE DATABASE mercado; 
USE mercado;

CREATE TABLE produto(
	preco FLOAT NOT NULL,
    id INT PRIMARY KEY,
    marca VARCHAR(40),
    categoria varchar(40) NOT NULL,
    quantidade INT NOT NULL
);

CREATE TABLE funcionario(
	nome VARCHAR(100) NOT NULL,
    idade INT, 
    tipo_contratacao VARCHAR(3),
    setor VARCHAR(50), 
    cpf VARCHAR(14) PRIMARY KEY 
);

CREATE TABLE cliente(
	nome VARCHAR(100) NOT NULL,
	idade INT,
    CPF VARCHAR(14) PRIMARY KEY, 
    telefone VARCHAR(25),
    categoria CHAR
); 

CREATE TABLE endereco(
	rua VARCHAR(100),
	numero INT,
    cep VARCHAR(20),
    cidade VARCHAR(100),
    bairro VARCHAR(100),
    tipo VARCHAR(100),
    
    PRIMARY KEY (cep)
);

SELECT * FROM produto; 
SELECT rua, cep FROM endereco; 
SELECT * FROM cliente;

ALTER TABLE cliente ADD COLUMN sexo CHAR;
ALTER TABLE cliente RENAME COLUMN sexo TO sex;
ALTER TABLE cliente DROP COLUMN sex;

DROP TABLE produto; 

INSERT INTO 
cliente(idade, categoria, telefone, CPF, nome) 
VALUES 
(21,'A', 6656565, '111-111-111.99', 'Perilo'),
(21,'A', 6656565, '111-111-111.98', 'João'),
(21,'A', 6656565, '111-111-111.97', 'Julio');

INSERT INTO
produto(preco, id, marca, categoria, quantidade)
VALUES (27.70, 1, 'DAGUA', 'alimento', 22),
(28.70, 2, 'de agua', 'alimento',11),
(25.70, 3, 'sublime', 'bebida',2),
(27.70, 4, 'sonho', 'alimento', 32),
(27.70, 5, 'tramontina', 'cozinha',22); 

SELECT * FROM produto WHERE preco > 28				; 

