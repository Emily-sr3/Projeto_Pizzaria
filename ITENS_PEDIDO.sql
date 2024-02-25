-- Criar tabela itens do pedido
CREATE TABLE ItensPedido (
  IDItemPedido INT AUTO_INCREMENT PRIMARY KEY,
  IDPedido INT,
  IDProduto INT,
  NomeProduto VARCHAR(255),  -- Adiciona o campo para o nome do produto
  Quantidade INT,
  PrecoUnitario DECIMAL(10, 2),
  Subtotal DECIMAL(10, 2),
  MetodoPedido ENUM('WhatsApp', 'App Delivery', 'Loja Física'),
  DataHoraPedido TIMESTAMP,
  FOREIGN KEY (IDPedido) REFERENCES Pedidos(IDPedido),
  FOREIGN KEY (IDProduto) REFERENCES Produtos(IDProduto)
);

INSERT INTO ItemPedido (IDPedido, NomeProduto, Quantidade, PrecoUnitario, Subtotal)
VALUES
    (LAST_INSERT_ID(), 'Pizza Margherita', 1, 25.00, 25.00),
    (LAST_INSERT_ID(), 'Batata Frita', 1, 15.00, 15.00),
    (LAST_INSERT_ID(), 'Pizza Pepperoni', 1, 28.00, 28.00),
    (LAST_INSERT_ID(), 'Pastel de Palmito', 1, 16,00, 16,00),
    (LAST_INSERT_ID(), 'Pizza Quatro Queijos', 1, 30.00, 30.00),
    (LAST_INSERT_ID(), 'Coca-Cola', 1, 5.00, 5.00);