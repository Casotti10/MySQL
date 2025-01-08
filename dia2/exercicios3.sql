CREATE DATABASE db_farmacia_bem_estar; 

USE db_farmacia_bem_estar; 

CREATE TABLE tb_categorias( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL, 
    descricao VARCHAR (100) NOT NULL
); 

CREATE TABLE tb_produtos(
	id_produto BIGINT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL, 
    data_validade DATE,
    quantidade INT,
    preco DECIMAL (10, 2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
    ('Medicamentos', 'Produtos para tratamentos de saúde.'),
    ('Higiene', 'Produtos de higiene pessoal.'),
    ('Cosméticos', 'Produtos de beleza e estética.'),
    ('Infantil', 'Produtos para crianças e bebês.'),
    ('Suplementos', 'Produtos nutricionais e vitaminas.'); 
    
INSERT INTO tb_produtos (nome, data_validade, quantidade, preco, id_categoria)
VALUES
    ('Paracetamol', '2025-12-31', 100, 15.50, 1),      
    ('Ibuprofeno', '2026-06-30', 50, 20.00, 1),         
    ('Shampoo Anticaspa', NULL, 30, 25.90, 2),          
    ('Sabonete Líquido', NULL, 80, 10.00, 2),           
    ('Batom Vermelho', NULL, 40, 19.90, 3),             
    ('Protetor Solar', '2025-08-15', 75, 45.00, 3),   
    ('Fralda Descartável', NULL, 60, 55.00, 4),         
    ('Vitamina C', '2025-03-01', 100, 35.90, 5);  
    
UPDATE tb_produtos SET preco = 70.00 WHERE id_produto = 3; 
UPDATE tb_produtos SET preco = 65.00 WHERE id_produto = 6;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%" ; 

SELECT nome, data_validade, quantidade, preco, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

