DROP DATABASE IF EXISTS db_quitanda; -- apagando banco de dados

CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL, 
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id) ON DELETE SET NULL
);

INSERT INTO tb_categorias (descricao) VALUES ("Frutas");
INSERT INTO tb_categorias (descricao) VALUES ("Verduras");
INSERT INTO tb_categorias (descricao) VALUES ("Legumes");
INSERT INTO tb_categorias (descricao) VALUES ("Temperos");
INSERT INTO tb_categorias (descricao) VALUES ("Ovos");
INSERT INTO tb_categorias (descricao) VALUES ("Outros");

-- Inserção de produtos
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("tomate", 100, "2023-12-15", 8.00, 3); 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("maçã", 20, "2023-12-15", 5.00, 1); 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("laranja", 50, "2023-12-15", 10.00, 1); 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("banana", 200, "2023-12-15", 12.00, 1); 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("uva", 1200, "2023-12-15", 30.00, 1); 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("pêra", 500, "2023-12-15", 2.99, 1);

-- Atualizando categorias de alguns produtos
UPDATE tb_produtos SET categoria_id = 3 WHERE id = 1;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 2;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 3;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 4;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 5;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 6;

-- Inserção de mais produtos
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("Alface", 300, "2022-03-10", 7.00, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("Manga", 200, "2022-03-07", 5.49, 1);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("Couve", 100, "2022-03-12", 1.50, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id) VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

-- Inserção das sacolas com categoria_id NULL
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id) VALUES("Sacola Cinza", 1118, 0.50, NULL);
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id) VALUES("Sacola Verde", 1118, 0.50, NULL);

-- Consultas
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos ORDER BY nome ASC; 
SELECT * FROM tb_produtos ORDER BY nome DESC;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00 ORDER BY preco ASC; 
SELECT * FROM tb_produtos WHERE nome LIKE "%Cenoura%";  -- tipo// parecido

-- INNER JOIN
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;  

-- LEFT JOIN 
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- RIGHT JOIN 
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id; 

SELECT * FROM tb_produtos;