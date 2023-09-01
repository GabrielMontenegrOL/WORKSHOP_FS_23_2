DATABASE gym; 
USE gym; 

-- 01) CRIANDO AS TABELAS.

CREATE TABLE cliente(
	nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    CPF VARCHAR(14), 
    telefone VARCHAR(25),
    -- Observação: a variável diferente está na nova coluna da tabela (codigo na linha 34) 
    PRIMARY KEY (CPF)
);

CREATE TABLE funcionario(
	nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
	CREF VARCHAR(50),
    CPF VARCHAR(14),
    
    PRIMARY KEY (CPF)
);

CREATE TABLE equipamento(
	nome VARCHAR(50) NOT NULL,
    quantidade INT,
    estado varchar(50)
); 

-- 02) COMANDO PARA ADICIONAR NOVA COLUNA EM CADA TABELA! 

ALTER TABLE cliente ADD COLUMN objetivo CHAR;
ALTER TABLE funcionario ADD COLUMN setor VARCHAR(50);
ALTER TABLE equipamento ADD COLUMN manutencao VARCHAR(50);

-- 03) COMANDO PARA INSERIR DADOS DE CADA TABELA! 

INSERT INTO 
cliente(nome, idade, CPF, telefone) 
VALUES -- Dados aleatorios para teste. 
('Perilo', 17, '174.096.020-45', '83998271027'),
('Gabriel', 18, '174.096.020-30', '83998271026'),
('Joao Gabriel', 19, '194.096.020-29', '24998271027');

INSERT INTO 
funcionario(nome, idade, setor, cpf)
VALUES 
('Roger', 78, 'chefe', '593.155.220-01'),
('Zoro', 22, 'instrutor', '904.974.810-49'),
('Coby', 18, 'estagiario', '988.182.320-02');

INSERT INTO 
equipamento(nome, quantidade, estado)
VALUES 
('banco', 2, 'otimo'),
('puxador', 3,  'ruim'),
('anilha', 4,  'antigo');

-- 04) COMANDO PARA REMOVER COLUNA 
-- ALTER TABLE cliente DROP COLUMN idade;
-- ALTER TABLE funcionario DROP COLUMN idade;
-- ALTER TABLE equipamento DROP COLUMN quantidade;

-- 05) Mostre um conteúdo da tabela 
SELECT * FROM cliente;
SELECT * FROM funcionario;
SELECT * FROM equipamento;

-- 06) Mostra conteúdo com condição específica. 
SELECT * FROM cliente
WHERE idade >10;

SELECT * FROM funcionario
WHERE idade >16;

SELECT * FROM equipamento
WHERE estado = 'otimo';