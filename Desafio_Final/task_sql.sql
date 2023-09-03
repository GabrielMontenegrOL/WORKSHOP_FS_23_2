DATABASE bank; 
USE bank;
-- Tema: Médico! (Meu objetivo: Ajudar o médico com ferramentas poderosas para melhorar a qualidade do atendimento ao paciente e o progresso na área da saúde e Análise de Dados e Pesquisas futuras!) 

-- 1° Tabela!
-- 1) Criação de tabela. 
CREATE TABLE cliente (
	cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100),
    genero ENUM('Masculimo', 'Feminino')
);

-- 2) Adicionando mais uma coluna.
ALTER TABLE cliente
ADD idade INT;

-- 3) Inserindo dados.
INSERT INTO cliente (cpf, nome, idade, genero) VALUES 
	('184.672.440-62', 'Kaleb', 30, 'Masculino'),
	('887.946.740-94', 'Nami', 25, 'Feminino'),
	('886.012.310-04', 'Tenma', 40, 'Masculino');

-- 4) Mostrar  conteúdo. 
SELECT * FROM cliente;

-- 2° Tabela 
-- 1) Criação de tabela. 
CREATE TABLE pacientes (
    númeroPaciente INT PRIMARY KEY,
    altura DECIMAL(4, 2), -- Coloque 2 casas decimais, Dr(a).!!
    peso DECIMAL(5, 2),   -- Coloque 2 casas decimais, Dr(a).!!
    idade INT -- Valor inteiro!
);

-- 2) Adicionando mais uma coluna.
ALTER TABLE pacientes ADD tipoSanguineo VARCHAR(5);

-- 3) Inserindo dados.
INSERT INTO pacientes (númeroPaciente, altura, peso, idade, tipoSanguineo) VALUES
    (1, 1.91, 70.5, 30, 'O-'),
    (2, 1.63, 55.0, 25, 'A-'),
    (3, 1.80, 85.2, 45, 'O-');

-- 4) Mostrar  conteúdo.  
SELECT * FROM cliente;

-- 3° Tabela!

-- 1) Criação de tabela. 
CREATE TABLE medicacao (
	medicamento VARCHAR(255) PRIMARY KEY,
    indicacao TEXT,
    quantidade INT
);

-- 2) Adicionando mais uma coluna.
ALTER TABLE medicacao ADD fabricante VARCHAR(100); 

-- 3) Inserindo dados.
INSERT INTO medicacao (medicamento, indicacao, quantidade, fabricante) VALUES
	('trenbolona', 'Usado para ganhar massa muscular e força', 30, 'anabolizante'),
    ('gh', 'Crescimento e desenvolvimento do corpo', 10, 'hormonio'),
    ('morfina', 'Usado para aliviar a dor grave e controlar o desconforto', 1, 'analgésico');
    
-- 4) Mostrar  conteúdo.  
SELECT * FROM medicacao;
    
    
