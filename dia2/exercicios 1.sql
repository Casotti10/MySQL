CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(255) NOT NULL 
); 

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL (6, 2) NOT NULL, 
    quantidade INT,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
); 

INSERT INTO tb_categorias (sabor) VALUES
('Tradicional'),
('Gourmet'),
('Vegetariana'),
('Doces'),
('Sem Glúten'); 

INSERT INTO tb_pizzas (nome, descricao, preco, quantidade, id_categoria) VALUES
('Margherita', 'Pizza tradicional com molho de tomate, queijo mozzarella e manjericão', 29.90, 10, 1),
('Calabresa', 'Pizza com calabresa, cebola e azeitonas', 32.50, 15, 1),
('Portuguesa', 'Pizza com presunto, ovos, azeitonas e cebola', 35.00, 12, 1),
('4 Queijos', 'Pizza com queijo mozzarella, provolone, gorgonzola e parmesão', 38.00, 8, 2),
('Frango com Catupiry', 'Pizza de frango desfiado com Catupiry e milho', 36.90, 20, 2),
('Vegetariana', 'Pizza com cogumelos, pimentões, cebola e azeitonas', 34.00, 10, 3),
('Chocolate', 'Pizza doce com chocolate, morangos e chantilly', 28.50, 5, 4),
('Banoffee', 'Pizza doce com banana, doce de leite e canela', 30.00, 7, 4); 
 
SELECT * FROM tb_pizzas WHERE preco > 35.00; 
SELECT * FROM tb_pizzas WHERE preco BETWEEN 27.00 AND 32.00; 
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";  -- tipo// parecido 

SELECT 
    tb_pizzas.nome, 
    tb_pizzas.preco, 
    tb_pizzas.quantidade, 
    tb_categorias.sabor 
AS categoria FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id WHERE tb_categorias.sabor = 'Doces';

