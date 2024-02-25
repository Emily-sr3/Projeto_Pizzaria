-- Criando a tabela de produtos
CREATE TABLE Produtos (
    IDProduto INT AUTO_INCREMENT PRIMARY KEY,
    NomeProduto VARCHAR(255) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL,
    IDSabor INT,
    IDTamanho INT,
    IDPorcao INT,
    IDSobremesa INT,
    IDBebida INT,
	FOREIGN KEY (IDBebida) REFERENCES Bebidas(IDBebida),
    FOREIGN KEY (IDSabor) REFERENCES SaborPizza(IDSabor),
    FOREIGN KEY (IDTamanho) REFERENCES TamanhoPizza(IDTamanho),
    FOREIGN KEY (IDPorcao) REFERENCES Porcao(IDPorcao),
    FOREIGN KEY (IDSobremesa) REFERENCES Sobremesa(IDSobremesa)
);
   
   -- Inserir dados na tabela
INSERT INTO Produtos (NomeProduto, Descricao, Preco, Estoque, IDSabor, IDTamanho)
VALUES
('Pizza Margherita', 'Molho de tomate, mussarela e manjericão', 25.00, 20, 1, 1),
('Pizza Pepperoni', 'Molho de tomate, mussarela e pepperoni', 28.00, 15, 1, 1),
('Pizza Quatro Queijos', 'Molho de tomate, mussarela, parmesão, provolone e gorgonzola', 30.00, 18, 1, 1),
('Pizza Frango com Catupiry', 'Frango desfiado, catupiry e temperos especiais', 32.00, 22, 1, 1),
('Pizza Calabresa', 'Molho de tomate, mussarela e calabresa', 27.00, 17, 1, 1),
('Pizza Vegetariana', 'Molho de tomate, mussarela e seleção de vegetais', 29.00, 19, 1, 1),
('Pizza Margherita com Pesto', 'Molho de tomate, mussarela, manjericão e pesto de manjericão', 30.00, 20, 1, 1),
('Pizza Frango com Catupiry Especial', 'Frango desfiado, catupiry, milho, ervilha e temperos especiais', 33.00, 23, 1, 1),
('Pizza Calabresa Especial', 'Molho de tomate, mussarela, calabresa, cebola, pimentão e azeitonas', 28.00, 18, 1, 1),
('Pizza Quatro Estações', 'Molho de tomate, mussarela, presunto, champignon, alcachofra e azeitonas', 31.00, 21, 1, 1),
('Pizza Margherita Picante', 'Molho de tomate, mussarela, tomate-cereja, pimenta calabresa e manjericão', 29.00, 19, 1, 1),
('Pizza Mexicana', 'Molho de tomate, carne moída temperada, milho, pimentão, cebola e pimenta jalapeño', 34.00, 24, 1, 1),
('Pizza Funghi', 'Molho de tomate, mussarela, cogumelos Paris, shiitake e azeitonas', 30.00, 20, 1, 1),
('Pizza Frutos do Mar', 'Molho de tomate, mussarela, camarões, lula, mariscos e azeitonas', 35.00, 25, 1, 1),
('Pizza Rústica', 'Molho de tomate, queijo gorgonzola, pera, nozes e rúcula', 32.00, 22, 1, 1),
('Pizza Bacon BBQ', 'Molho de tomate, mussarela, bacon, cebola caramelizada e molho barbecue', 33.00, 23, 1, 1),
('Pizza Carne Seca com Cream Cheese', 'Molho de tomate, mussarela, carne seca desfiada, cream cheese e cebola roxa', 34.00, 24, 1, 1),
('Pizza Margherita com Balsâmico', 'Molho de tomate, mussarela, tomate-cereja, manjericão e redução de vinagre balsâmico', 31.00, 21, 1, 1),
('Pizza Vegana de Legumes', 'Molho de tomate, queijo vegano, abobrinha, berinjela, pimentão e cogumelos', 29.00, 19, 1, 1),
('Pizza Vegana de Pesto de Castanhas', 'Molho pesto de castanhas, queijo vegano, tomate-cereja, espinafre e nozes', 30.00, 20, 1, 1),
('Pizza Vegana de Tomate Seco e Rúcula', 'Molho de tomate, queijo vegano, tomate seco, rúcula e azeitonas pretas', 28.00, 18, 1, 1),
('Porção de Batata Frita', 'Porção de batata frita crocante', 15.00, 30, 1),
('Porção de Anéis de Cebola', 'Porção de anéis de cebola empanados', 12.00, 25, 2),
('Porção de Coxinha Vegana', 'Porção de coxinhas veganas recheadas', 18.00, 20, 3),
('Porção de Bruschetta', 'Porção de bruschettas com tomate, manjericão e azeite de oliva', 20.00, 25, 4),
('Porção de Pastel de Palmito', 'Porção de pastéis recheados com palmito', 16.00, 22, 5),
('Coca-Cola', 'Refrigerante de cola', 5.00, 50, 1),
('Suco de Laranja', 'Suco natural de laranja', 8.00, 40, 2),
('Água Mineral', 'Água mineral sem gás', 3.00, 60, 3),
('Cerveja Artesanal IPA', 'Cerveja artesanal Indian Pale Ale', 15.00, 20, 4),
('Vinho Tinto', 'Vinho tinto seco', 25.00, 15, 5),
('Chá Gelado de Pêssego', 'Chá gelado sabor pêssego', 6.00, 30, 6),
('Mojito', 'Cocktail refrescante de hortelã, limão e rum', 12.00, 25, 7),
('Energético', 'Bebida energética com taurina e cafeína', 10.00, 20, 8),
('Brownie de Chocolate', 'Brownie de chocolate com nozes', 15.00, 25, 1),
('Tiramisu', 'Clássica sobremesa italiana com camadas de café e mascarpone', 18.00, 20, 2),
('Cheesecake de Morango', 'Cheesecake cremoso com cobertura de morangos frescos', 20.00, 18, 3),
('Mousse de Maracujá', 'Mousse leve e refrescante de maracujá', 12.00, 30, 4),
('Pudim de Leite Condensado', 'Pudim tradicional de leite condensado', 10.00, 35, 5),
('Sorvete de Baunilha com Calda de Chocolate', 'Sorvete de baunilha servido com calda quente de chocolate', 14.00, 15, 6);

select * from produtos;

-- Criar tabela para definir os tamanhos de pizzas
CREATE TABLE TamanhoPizza (
    IDTamanho INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descricao VARCHAR(255)
);

INSERT INTO TamanhoPizza (Nome, Descricao)
VALUES
('Broto', '4 pedaços'),
('Família', '8 pedaços'),
('Trem', '32 pedaços, 4 sabores');
ALTER TABLE TamanhoPizza
ADD COLUMN Preco DECIMAL(10, 2) NOT NULL;

UPDATE TamanhoPizza
SET Preco = 20.00
WHERE Nome = 'Broto';

-- Atualiza o preço do tamanho 'Família'
UPDATE TamanhoPizza AS tp1
JOIN TamanhoPizza AS tp2 ON tp1.Nome = 'Família' AND tp2.Nome = 'Broto'
SET tp1.Preco = 2 * tp2.Preco;

-- Atualiza o preço do tamanho 'Trem' (4 vezes o preço da 'Família')
UPDATE TamanhoPizza AS tp1
JOIN TamanhoPizza AS tp2 ON tp1.Nome = 'Trem' AND tp2.Nome = 'Família'
SET tp1.Preco = 3 * tp2.Preco;


CREATE TABLE SaborPizza (
    IDSabor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descricao VARCHAR(255) NOT NULL
);

INSERT INTO SaborPizza (Nome, Descricao)
VALUES
('Pizza Margherita', 'Molho de tomate, mussarela e manjericão'),
('Pizza Pepperoni', 'Molho de tomate, mussarela e pepperoni'),
('Pizza Quatro Queijos', 'Molho de tomate, mussarela, parmesão, provolone e gorgonzola'),
('Pizza Frango com Catupiry', 'Frango desfiado, catupiry e temperos especiais'),
('Pizza Calabresa', 'Molho de tomate, mussarela e calabresa'),
('Pizza Vegetariana', 'Molho de tomate, mussarela e seleção de vegetais'),
('Pizza Margherita com Pesto', 'Molho de tomate, mussarela, manjericão e pesto de manjericão'),
('Pizza Frango com Catupiry Especial', 'Frango desfiado, catupiry, milho, ervilha e temperos especiais'),
('Pizza Calabresa Especial', 'Molho de tomate, mussarela, calabresa, cebola, pimentão e azeitonas'),
('Pizza Quatro Estações', 'Molho de tomate, mussarela, presunto, champignon, alcachofra e azeitonas'),
('Pizza Margherita Picante', 'Molho de tomate, mussarela, tomate-cereja, pimenta calabresa e manjericão'),
('Pizza Mexicana', 'Molho de tomate, carne moída temperada, milho, pimentão, cebola e pimenta jalapeño'),
('Pizza Funghi', 'Molho de tomate, mussarela, cogumelos Paris, shiitake e azeitonas'),
('Pizza Frutos do Mar', 'Molho de tomate, mussarela, camarões, lula, mariscos e azeitonas'),
('Pizza Rústica', 'Molho de tomate, queijo gorgonzola, pera, nozes e rúcula'),
('Pizza Bacon BBQ', 'Molho de tomate, mussarela, bacon, cebola caramelizada e molho barbecue'),
('Pizza Carne Seca com Cream Cheese', 'Molho de tomate, mussarela, carne seca desfiada, cream cheese e cebola roxa'),
('Pizza Margherita com Balsâmico', 'Molho de tomate, mussarela, tomate-cereja, manjericão e redução de vinagre balsâmico'),
('Pizza Vegana de Legumes', 'Molho de tomate, queijo vegano, abobrinha, berinjela, pimentão e cogumelos'),
('Pizza Vegana de Pesto de Castanhas', 'Molho pesto de castanhas, queijo vegano, tomate-cereja, espinafre e nozes'),
('Pizza Vegana de Tomate Seco e Rúcula', 'Molho de tomate, queijo vegano, tomate seco, rúcula e azeitonas pretas');

CREATE TABLE Porcao (
    IDPorcao INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descricao VARCHAR(255),
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL
);

INSERT INTO Porcao (Nome, Descricao, Preco, Estoque)
VALUES
('Batata Frita', 'Porção de batata frita crocante', 15.00, 30),
('Anéis de Cebola', 'Porção de anéis de cebola empanados', 12.00, 25),
('Coxinha Vegana', 'Porção de coxinhas veganas recheadas', 18.00, 20),
('Bruschetta', 'Porção de bruschettas com tomate, manjericão e azeite de oliva', 20.00, 25),
('Pastel de Palmito', 'Porção de pastéis recheados com palmito', 16.00, 22);

CREATE TABLE Sobremesa (
    IDSobremesa INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL
);

INSERT INTO Sobremesa (Nome, Descricao, Preco, Estoque)
VALUES
('Brownie de Chocolate', 'Brownie de chocolate com nozes', 15.00, 25),
('Tiramisu', 'Clássica sobremesa italiana com camadas de café e mascarpone', 18.00, 20),
('Cheesecake de Morango', 'Cheesecake cremoso com cobertura de morangos frescos', 20.00, 18),
('Mousse de Maracujá', 'Mousse leve e refrescante de maracujá', 12.00, 30),
('Pudim de Leite Condensado', 'Pudim tradicional de leite condensado', 10.00, 35),
('Sorvete de Baunilha com Calda de Chocolate', 'Sorvete de baunilha servido com calda quente de chocolate', 14.00, 15);

select * from porcao;

CREATE TABLE Bebidas (
    IDBebida INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL,
    QuantidadeML INT
);

INSERT INTO Bebidas (Nome, Descricao, Preco, Estoque, QuantidadeML)
VALUES
('Coca-Cola', 'Refrigerante de cola', 5.00, 50, 350),
('Suco de Laranja', 'Suco natural de laranja', 8.00, 40, 300),
('Água Mineral', 'Água mineral sem gás', 3.00, 60, 500),
('Cerveja Artesanal IPA', 'Cerveja artesanal Indian Pale Ale', 15.00, 20, 330),
('Vinho Tinto', 'Vinho tinto seco', 25.00, 15, 750),
('Chá Gelado de Pêssego', 'Chá gelado sabor pêssego', 6.00, 30, 500),
('Mojito', 'Cocktail refrescante de hortelã, limão e rum', 12.00, 25, 250),
('Energético', 'Bebida energética com taurina e cafeína', 10.00, 20, 250);
