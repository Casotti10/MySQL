CREATE DATABASE db_cursos_da_minha_vida;

USE db_cursos_da_minha_vida;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    data_inscricao DATE,  
    descricao VARCHAR(150) NOT NULL  
);

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
    valor DECIMAL (10, 2) NOT NULL, 
    vagas INT,
    duracao INT,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
); 
INSERT INTO tb_categorias (data_inscricao, descricao) VALUES
('2025-01-01', 'Desenvolvimento Web'),
('2025-01-15', 'Análise de Sistemas'),
('2025-02-01', 'Marketing Digital'),
('2025-03-01', 'Programação em Python'),
('2025-04-01', 'Banco de Dados');

INSERT INTO tb_cursos (nome, valor, vagas, duracao, id_categoria) VALUES
('Curso de Frontend', 500.00, 30, 40, 1),  -- Desenvolvimento Web
('Curso de Backend', 600.00, 25, 50, 1),  --  Desenvolvimento Web
('Curso de Engenharia de Software', 800.00, 20, 60, 2),  -- Análise de Sistemas
('Curso de SEO', 400.00, 40, 30, 3),  --  Marketing Digital
('Curso de Python Básico', 350.00, 35, 40, 4),  --  Programação em Python
('Curso de Python Avançado', 700.00, 20, 60, 4),  --  Programação em Python
('Curso de MySQL', 450.00, 30, 40, 5),  -- Banco de Dados
('Curso de Postgres', 500.00, 20, 45, 5);  -- Banco de Dados 

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00; 
SELECT * FROM tb_cursos WHERE nome LIKE "%P%";

SELECT 
	tb_cursos.nome,
	tb_cursos.valor, 
	tb_cursos.vagas, 
	tb_cursos.duracao,
	tb_categorias.descricao AS categoria 
FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id;