 CREATE DATABASE ecommerce; 
 
 CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10 , 2 ) NOT NULL,
    estoque INT NOT NULL,
    descricao VARCHAR (250) NOT NULL
);

INSERT INTO produtos (nome, categoria, preco, estoque, descricao)
VALUES
('Iphone XS', 'Eletrônicos', 2999.90, 50, 'Smartphone com tela de 6.5 polegadas e 128GB de memória.'),
('Acer Nitro V', 'Informática', 4500.00, 30, 'Notebook com 16GB de RAM e 512GB SSD.'),
('Camiseta Básica', 'Vestuário', 49.90, 200, 'Camiseta de algodão disponível em várias cores.'),
('Tênis Running', 'Calçados', 199.90, 100, 'Tênis esportivo ideal para corrida e atividades físicas.'),
('Smartwatch', 'Acessórios', 149.90, 80, 'Relógio digital resistente à água com cronômetro.'),
('Fone de Ouvido', 'Eletrônicos', 99.90, 150, 'Fone com isolamento de ruído e som de alta qualidade.'),
('Cadeira Gamer', 'Móveis', 799.90, 20, 'Cadeira ergonômica com ajuste de altura e apoio lombar.'),
('Livro: Aprenda Java', 'Livros', 79.90, 120, 'Livro para iniciantes aprenderem a programar em Java.'); 


SELECT * FROM produtos WHERE preco > 500; 

SELECT * FROM produtos WHERE preco < 500; 

UPDATE produtos SET preco = 1900.00 WHERE id = 5; 

