-- Vamos criar um banco da dados para analisar as vendas de uma pizzaria fictícia ao longo dos anos de 2020 a 2023

-- Criar Banco da dods (Pizzaria)
CREATE DATABASE IF NOT EXISTS pizzaria;

-- Utilizar banco da dados
USE pizzaria;

-- Criar Tabela de clientes
CREATE TABLE Cliente (
    IDCliente INT AUTO_INCREMENT PRIMARY KEY, 
    Nome VARCHAR(255),
    CPF VARCHAR(15) ,
    DataNascimento DATE,
    Endereco VARCHAR(255),
    Telefone VARCHAR(15),
    Email VARCHAR(255),
    TipoCliente VARCHAR(50)
);

-- Inserir dados na tabela Cliente
INSERT INTO Cliente (Nome, Endereco, Telefone, Email, TipoCliente, CPF, DataNascimento)
VALUES
('Ana Silva', 'Rua A, 123, São Paulo', '(11) 98765-4321', 'ana.silva@email.com', 'Frequente', '111.222.333-44', '1980-05-15'),
('Bruno Oliveira', 'Rua B, 456, São Paulo', '(11) 87654-3210', 'bruno.oliveira@email.com', 'Ocasional', '222.333.444-55', '1995-10-20'),
('Carlos Pereira', 'Rua C, 789, São Paulo', '(11) 76543-2109', 'carlos.pereira@email.com', 'Frequente', '333.444.555-66', '1988-03-08'),
('Diana Santos', 'Rua D, 101, São Paulo', '(11) 65432-1098', 'diana.santos@email.com', 'Ocasional', '444.555.666-77', '1992-12-01'),
('Eduardo Lima', 'Rua E, 202, São Paulo', '(11) 54321-0987', 'eduardo.lima@email.com', 'Frequente', '555.666.777-88', '1984-08-25'),
('Fernanda Costa', 'Rua F, 303, São Paulo', '(11) 43210-9876', 'fernanda.costa@email.com', 'Ocasional', '666.777.888-99', '1998-02-18'),
('Gabriel Almeida', 'Rua G, 404, São Paulo', '(11) 32109-8765', 'gabriel.almeida@email.com', 'Frequente', '777.888.999-00', '1986-11-11'),
('Heloisa Rocha', 'Rua H, 505, São Paulo', '(11) 21098-7654', 'heloisa.rocha@email.com', 'Ocasional', '888.999.000-11', '1990-07-03'),
('Igor Santos', 'Rua I, 606, São Paulo', '(11) 10987-6543', 'igor.santos@email.com', 'Frequente', '999.000.111-22', '1983-04-14'),
('Juliana Oliveira', 'Rua J, 707, São Paulo', '(11) 09876-5432', 'juliana.oliveira@email.com', 'Ocasional', '000.111.222-33', '1996-09-27'),
('Kleber Silva', 'Rua K, 808, São Paulo', '(11) 98765-4321', 'kleber.silva@email.com', 'Frequente', '111.222.333-44', '1982-02-08'),
('Larissa Costa', 'Rua L, 909, São Paulo', '(11) 87654-3210', 'larissa.costa@email.com', 'Ocasional', '222.333.444-55', '1997-05-23'),
('Mariana Pereira', 'Rua M, 1010, São Paulo', '(11) 76543-2109', 'mariana.pereira@email.com', 'Frequente', '333.444.555-66', '1989-10-17'),
('Nathan Lima', 'Rua N, 1111, São Paulo', '(11) 65432-1098', 'nathan.lima@email.com', 'Ocasional', '444.555.666-77', '1994-03-30'),
('Olivia Almeida', 'Rua O, 1212, São Paulo', '(11) 54321-0987', 'olivia.almeida@email.com', 'Frequente', '555.666.777-88', '1985-06-12'),
('Pedro Rocha', 'Rua P, 1313, São Paulo', '(11) 43210-9876', 'pedro.rocha@email.com', 'Ocasional', '666.777.888-99', '1999-08-05'),
('Quiteria Silva', 'Rua Q, 1414, São Paulo', '(11) 32109-8765', 'quiteria.silva@email.com', 'Frequente', '777.888.999-00', '1987-12-28'),
('Rafaela Costa', 'Rua R, 1515, São Paulo', '(11) 21098-7654', 'rafaela.costa@email.com', 'Ocasional', '888.999.000-11', '1991-01-21'),
('Samuel Oliveira', 'Rua S, 1616, São Paulo', '(11) 10987-6543', 'samuel.oliveira@email.com', 'Frequente', '999.000.111-22', '1984-04-21'),
('Tatiane Santos', 'Rua T, 1717, São Paulo', '(11) 09876-5432', 'tatiane.santos@email.com', 'Ocasional', '000.111.222-33', '1997-09-14'),
('Ulisses Silva', 'Rua U, 1818, São Paulo', '(11) 98765-4321', 'ulisses.silva@email.com', 'Frequente', '111.222.333-44', '1981-02-18'),
('Vanessa Costa', 'Rua V, 1919, São Paulo', '(11) 87654-3210', 'vanessa.costa@email.com', 'Ocasional', '222.333.444-55', '1996-05-01'),
('Wagner Pereira', 'Rua W, 2020, São Paulo', '(11) 76543-2109', 'wagner.pereira@email.com', 'Frequente', '333.444.555-66', '1988-10-09'),
('Xuxa Lima', 'Rua X, 2121, São Paulo', '(11) 65432-1098', 'xuxa.lima@email.com', 'Ocasional', '444.555.666-77', '1993-03-26'),
('Yasmin Almeida', 'Rua Y, 2222, São Paulo', '(11) 54321-0987', 'yasmin.almeida@email.com', 'Frequente', '555.666.777-88', '1986-06-09'),
('Zé Pedro Rocha', 'Rua Z, 2323, São Paulo', '(11) 43210-9876', 'zepedro.rocha@email.com', 'Ocasional', '666.777.888-99', '1998-09-12'),
('Alice Pereira', 'Rua A, 2424, São Paulo', '(11) 32109-8765', 'alice.pereira@email.com', 'Frequente', '777.888.999-00', '1989-01-24'),
('Bernardo Costa', 'Rua B, 2525, São Paulo', '(11) 21098-7654', 'bernardo.costa@email.com', 'Ocasional', '888.999.000-11', '1992-04-07'),
('Carla Oliveira', 'Rua C, 2626, São Paulo', '(11) 10987-6543', 'carla.oliveira@email.com', 'Frequente', '999.000.111-22', '1987-07-15'),
('Davi Santos', 'Rua D, 2727, São Paulo', '(11) 09876-5432', 'davi.santos@email.com', 'Ocasional', '000.111.222-33', '1994-10-28'),
('Eva Lima', 'Rua E, 2828, São Paulo', '(11) 98765-4321', 'eva.lima@email.com', 'Frequente', '111.222.333-44', '1983-03-02'),
('Fábio Almeida', 'Rua F, 2929, São Paulo', '(11) 87654-3210', 'fabio.almeida@email.com', 'Ocasional', '222.333.444-55', '1997-06-15'),
('Gisele Costa', 'Rua G, 3030, São Paulo', '(11) 76543-2109', 'gisele.costa@email.com', 'Frequente', '333.444.555-66', '1985-11-25'),
('Hugo Silva', 'Rua H, 3131, São Paulo', '(11) 65432-1098', 'hugo.silva@email.com', 'Ocasional', '444.555.666-77', '1990-02-08'),
('Isabela Oliveira', 'Rua I, 3232, São Paulo', '(11) 54321-0987', 'isabela.oliveira@email.com', 'Frequente', '555.666.777-88', '1982-05-21'),
('Júlio Santos', 'Rua J, 3333, São Paulo', '(11) 43210-9876', 'julio.santos@email.com', 'Ocasional', '666.777.888-99', '1995-08-04'),
('Karina Pereira', 'Rua K, 3434, São Paulo', '(11) 32109-8765', 'karina.pereira@email.com', 'Frequente', '777.888.999-00', '1986-12-17'),
('Lucas Lima', 'Rua L, 3535, São Paulo', '(11) 21098-7654', 'lucas.lima@email.com', 'Ocasional', '888.999.000-11', '1991-03-30'),
('Mariana Almeida', 'Rua M, 3636, São Paulo', '(11) 10987-6543', 'mariana.almeida@email.com', 'Frequente', '999.000.111-22', '1984-06-12');

CREATE VIEW VWCLIENTES AS select * from cliente;

SELECT * FROM VWCLIENTES;










