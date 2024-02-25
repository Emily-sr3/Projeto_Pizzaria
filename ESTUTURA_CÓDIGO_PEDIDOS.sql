-- Criar tabela de pedidos
CREATE TABLE Pedidos (
  IDPedido INT AUTO_INCREMENT PRIMARY KEY,
  DataHoraPedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  IDCliente INT,
  TotalPedido DECIMAL(10, 2),
  IDProduto INT,
  Quantidade INT,
  PrecoUnitario DECIMAL(10, 2),
  Subtotal DECIMAL(10, 2),
  IDFuncionario INT,
  MetodoPedido ENUM('WhatsApp', 'App Delivery', 'Loja Física'),
  IDMétodoPagamento INT,
  FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente),
  FOREIGN KEY (IDProduto) REFERENCES Produtos(IDProduto),
  FOREIGN KEY (IDFuncionario) REFERENCES Funcionarios(IDFuncionario),
  FOREIGN KEY (IDMétodoPagamento) REFERENCES MetodoPagamento(IDMétodoPagamento)
);

DELIMITER //

CREATE PROCEDURE GerarPedidos()
BEGIN
  DECLARE i INT DEFAULT 0;
  DECLARE j INT; -- Declarar j aqui fora do loop WHILE

  WHILE i < 3000 DO
    -- Gera uma data aleatória entre janeiro de 2020 e dezembro de 2023
    SET @DataHoraPedido = FROM_UNIXTIME(UNIX_TIMESTAMP('2020-01-01 00:00:00') + FLOOR(RAND() * (UNIX_TIMESTAMP('2023-12-31 23:59:59') - UNIX_TIMESTAMP('2020-01-01 00:00:00'))));

    SET @IDCliente = (SELECT IDCliente FROM Cliente WHERE IDCliente BETWEEN 1 AND 38 ORDER BY RAND() LIMIT 1);
    SET @IDFuncionario = (SELECT IDFuncionario FROM Funcionarios WHERE IDFuncionario IN (1, 5, 9) ORDER BY RAND() LIMIT 1);
    SET @IDMetodoPagamento = (SELECT IDMétodoPagamento FROM MetodoPagamento ORDER BY RAND() LIMIT 1);

    -- Insere um novo pedido
    INSERT INTO Pedidos (IDCliente, IDFuncionario, IDMétodoPagamento, DataHoraPedido)
    VALUES (@IDCliente, @IDFuncionario, @IDMetodoPagamento, @DataHoraPedido);

    SET @PedidoID = LAST_INSERT_ID();  -- Obtém o ID do pedido recém-inserido

    -- Inicializa a variável j antes do loop WHILE
    SET j = 0;

    WHILE j < FLOOR(1 + RAND() * 5) DO  -- Gera entre 1 e 5 itens por pedido
      SET @IDProduto = (SELECT IDProduto FROM Produtos ORDER BY RAND() LIMIT 1);
      SET @NomeProduto = (SELECT NomeProduto FROM Produtos WHERE IDProduto = @IDProduto);
      SET @PrecoUnitario = (SELECT Preco FROM Produtos WHERE IDProduto = @IDProduto);
      SET @Quantidade = FLOOR(1 + RAND() * 5);
      SET @Subtotal = @PrecoUnitario * @Quantidade;
      SET @MetodoPedido = ELT(FLOOR(1 + RAND() * 3), 'WhatsApp', 'App Delivery', 'Loja Física');

      -- Insere um novo item do pedido na tabela ItensPedido
      INSERT INTO ItensPedido (IDPedido, IDProduto, NomeProduto, Quantidade, PrecoUnitario, Subtotal, MetodoPedido, DataHoraPedido)
      VALUES (@PedidoID, @IDProduto, @NomeProduto, @Quantidade, @PrecoUnitario, @Subtotal, @MetodoPedido, @DataHoraPedido);

      SET j = j + 1;
    END WHILE;

    SET i = i + 1;
  END WHILE;
END;

-- Chamar função da criação da automatização
CALL GerarPedidos();

-- Verificar se há dados na tabela Pedidos
SELECT * FROM Pedidos;

DROP PROCEDURE IF EXISTS GerarPedidos;

use pizzaria;

CREATE VIEW VWPEDIDOS AS select * from PEDIDOS;


