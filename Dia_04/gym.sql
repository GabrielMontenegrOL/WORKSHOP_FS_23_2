CREATE DATABASE gym; 
USE gym; 

CREATE TABLE cliente(
	nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    CPF VARCHAR(14) PRIMARY KEY, 
    telefone VARCHAR(25) NOT NULL
);

CREATE TABLE funcionario(
	nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
	CREF VARCHAR(50),
    cpf VARCHAR(14) PRIMARY KEY
);
    
CREATE TABLE equipamento(
	nome VARCHAR(50) NOT NULL PRIMARY KEY,
    quantidade INT NOT NULL,
    estado varchar(50)
); 

ALTER TABLE cliente ADD COLUMN objetivo CHAR;
    
    

