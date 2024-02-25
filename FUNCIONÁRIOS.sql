-- Criar tabela de funcionários
CREATE TABLE Funcionarios (
    IDFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(255),
    DataContratacao DATE,
    Salario DECIMAL(10, 2),
    Email VARCHAR(255) UNIQUE,
    Telefone VARCHAR(20),
    DataNascimento DATE,
    Endereco VARCHAR(255)
);

ALTER TABLE Funcionarios
ADD COLUMN Cidade VARCHAR(255),
ADD COLUMN Estado VARCHAR(255);

INSERT INTO Funcionarios (Nome, Cargo, DataContratacao, Salario, Email, Telefone, DataNascimento, Endereco, Cidade, Estado)
VALUES
    ('João Silva', 'Atendente', '2020-01-01', 3000.00, 'joao.silva@hotmail.com', '1195852-5455', '1979-10-25', 'Rua A, 101 - Bairro 1', 'São Paulo', 'SP'),
    ('Maria Oliveira', 'Cozinheiro', '2019-05-15', 3500.00, 'maria.oliveira@gmail.com', '1198745-6789', '1985-04-12', 'Rua B, 202 - Bairro 2', 'São Paulo', 'SP'),
    ('Carlos Santos', 'Entregador', '2020-03-10', 2500.00, 'carlos.santos@yahoo.com', '1197654-3210', '1990-07-30', 'Rua C, 303 - Bairro 3', 'São Paulo', 'SP'),
    ('Ana Souza', 'Gerente', '2018-12-01', 5000.00, 'ana.souza@outlook.com', '1199321-9876', '1982-03-18', 'Rua D, 404 - Bairro 4', 'São Paulo', 'SP'),
    ('Pedro Rocha', 'Atendente', '2021-02-20', 3200.00, 'pedro.rocha@gmail.com', '1195555-1234', '1995-08-22', 'Rua E, 505 - Bairro 5', 'São Paulo', 'SP'),
    ('Julia Costa', 'Cozinheiro', '2020-08-05', 3800.00, 'julia.costa@hotmail.com', '1198765-4321', '1988-11-05', 'Rua F, 606 - Bairro 6', 'São Paulo', 'SP'),
    ('Lucas Lima', 'Entregador', '2019-11-18', 2700.00, 'lucas.lima@yahoo.com', '1196666-7890', '1993-06-14', 'Rua G, 707 - Bairro 7', 'São Paulo', 'SP'),
    ('Fernanda Oliveira', 'Gerente', '2017-09-15', 5500.00, 'fernanda.oliveira@gmail.com', '1194444-5678', '1977-12-03', 'Rua H, 808 - Bairro 8', 'São Paulo', 'SP'),
    ('Roberto Santos', 'Atendente', '2022-04-12', 3100.00, 'roberto.santos@outlook.com', '1197777-2345', '1989-02-28', 'Rua I, 909 - Bairro 9', 'São Paulo', 'SP');
    
    select * from funcionarios;
   CREATE VIEW VWFUNCIONARIOS AS SELECT funcionarios;