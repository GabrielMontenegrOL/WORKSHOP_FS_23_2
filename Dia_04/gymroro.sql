CREATE DATABASE gym; 
USE gym; 

-- 01) CRIANDO MINHAS TABELAS.

CREATE TABLE cliente(
	nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    CPF VARCHAR(14), 
    telefone VARCHAR(25),
    -- Observação: a variável diferente está na nova coluna da tabela (codigo na linha 34) 
    PRIMARY KEY (CPF)
);

INSERT INTO 
cliente(nome, idade, CPF, telefone)
VALUES 
('Perilo', 17, '174.096.020-42', '83998271027'),
('Gabriel', 18, '174.096.020-30', '83998271026'),
('Joao Gabriel', 18, '194.096.020-29', '24998271027');

SELECT * FROM cliente;

CREATE TABLE funcionario(
	nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
	CREF VARCHAR(50),
    CPF VARCHAR(14),
    
    PRIMARY KEY (CPF)
);

INSERT INTO 
funcionario(nome, idade, CREF)
('Perilo', 17, '174.096.020-42'),
('Gabriel', 18, '174.096.020-30'),
('Joao Gabriel', 18, '194.096.020-29');


VALUES 
    
CREATE TABLE equipamento(
	nome VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL,
    estado varchar(50),
    
    PRIMARY KEY (nome)
); 

-- COMANDO PARA ADICIONAR NOVA COLUNA! 

ALTER TABLE cliente ADD COLUMN objetivo CHAR;
ALTER TABLE funcionario ADD COLUMN setor VARCHAR(50);
ALTER TABLE equipamento ADD COLUMN manutencao VARCHAR(50);

-- COMANDO PARA REMOVER COLUNA 
ALTER TABLE cliente DROP COLUMN idade;
ALTER TABLE funcionario DROP COLUMN idade;
ALTER TABLE equipamento DROP COLUMN quantidade;

-- Mostre um conteúdo da tabela 
SELECT * FROM cliente;
SELECT * FROM funcionario;
SELECT * FROM equipamento;

-- Mostra conteúdo com condição específica. 
SELECT * FROM cliente WHERE idade > 17; 
SELECT * FROM funcionario WHERE
SELECT * FROM equipamento WHERE







    
    

