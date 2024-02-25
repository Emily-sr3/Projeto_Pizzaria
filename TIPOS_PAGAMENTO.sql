-- Criar tabela métodos de pagamento
CREATE TABLE MetodoPagamento (
    IDMétodoPagamento INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    TipoPagamento ENUM('Dinheiro', 'Cartão Débito', 'Cartão Crédito', 'Vale Refeição', 'PIX') NOT NULL
);

INSERT INTO MetodoPagamento (Nome) VALUES
('Dinheiro'),
('Cartão de Débito'),
('Cartão de Crédito'),
('Vale Refeição'),
('PIX');

select * from metodopagamento;